# Typesetting sheet music in LaTeX
This document is a small article in which I'm supposed to analyze a couple
of songs. This means that a lot of embedded sheet music is required in order
to provide the reader with enough context so they can follow along effectively
without having to listen to the songs.

This was tougher than I could ever thought: it turns out that there are very
few resources and tools for people who choose LaTeX for their music typesetting.
There are a few LaTeX packages for that, but honestly they scale pretty bad and
are not well suited for larger projects. 

Moreover, I strongly wanted to take advantage of the speed and ease of use of 
music notation software I have been building up over the years; in other words,
I wanted to be able to write my sheet music on my music notation software 
(Musescore and Sibelius, in my case), export it to some format, import that file
in LaTeX and get my vector graphics typeset document done, without having to
take screenshots of measures, struggle with positioning and not being able to
modify that asset ever again (which was what I had been doing up until then).

I'm sure there will be at most 3 people on earth interested in this kind of
workflow, but unfortunately I happened to be one of those and I couldn't help 
diving into this idea. I managed to figure out a workflow, which is definitely
not the easiest to setup but it does work and may scale pretty well. Here's 
how it goes.

## Lilypond
Eventually, I landed on Lilypond: it is a music notation software that relies on
a plain text syntax (pretty similar to LaTeX, actually) rather than a WYSIWYG UI.

Of course learning yet another music notation software was never my intention 
(especially a markup code based one), but Lilypond has a pretty cool feature:
it comes with a built-in LaTeX integration capability.

It happens to be a separate module - `lilypond-book` - that can process a LaTeX
file with Lilypond code embedded (it must have `.lytex` extension) and generate a
normal `.tex` file that can be compiled as usual with your favorite LaTeX compiler
and will output a document with the embedded sheet music as vector graphics.

This is obviously super cool, but how can I turn my sheet music written in
Musescore or Sibelius into a file readable by `lilypond-book`?

## MusicXML
Normally, each music notation software saves the current project in a proprietary
format (`.sib`, `.mcsx`), which ensures the best performances possible but clearly
is not compatible with third-party applications. Information could be shared
across different music software through the `midi` format, which works great
when it comes to carry information for sound to be played by synthesizers or VSTs 
but not that much when notes are supposed to be displayed on paper.

The solution to this is the MusicXML format: it is a dialect of the XML language,
it's pretty verbose but it works pretty good at effectively sharing sheet music
information across different softwares, including Lilypond.

And the `lilypond-book` module does provide a command for importing `.musicxml`
files!

Now we have it: we can write our sheet music in our favorite WYSIWYG music
notation software, save it to `.musicxml` and import it in our LaTeX project
as high quality, light weight vector graphics, and still be able to easily edit
it in the future.

## The build script
I do realize that this is not the most comfortable setup ever, but all these
operation can be automatized with a simple shell script.

It will have to iterate through all the file in your project and then, after
some clean up of the latest compilation junk, check if the file is a `.lytex` file;
if so, preprocess it with `lilypond-book` (and maybe save the output in a child
directory since it's a lot of stuff); ultimately, the script may also call the
whole document compilation.

Make sure to import the correct path in your entry point if you have a multiple
source project and you save the `lilypond-book` output in a child directory!

## To all the Windows users
Switch to Linux for this. I am 70% a Windows user myself, but even after 3 
days of try hard I really couldn't get this setup to work on Windows, whereas
it immediately worked with zero extra configuration when I tried it on Ubuntu
on WSL, hence I decided that this was a task for my 30% Unix personality.

<!-- Using a Docker container would make everything go smoothly af though -->

## Issues

### Paper size configuration
One of the biggest issues I had to face was how to set staff width to match my
page text width. For some reason I'm not really looking forward to investigating,
`lilypond-book` just won't be able to infer it from the LaTeX document, and none of
the options you can pass to the importer command will affect the output.

Hence I had to go for yet another overly cumbersome workaround: I just opened the
configuration file that states the default margins and edited it. I'm perfectly
aware that this scales terribly but it gets the job done and I really had no more
time to spend on this. Maybe in the future I will try to figure out how to fix
either the margins inference from LaTeX or the options thing on the command;
until then, here's where you can find the file to edit in your local machine:
```sh
/usr/share/lilypond/<version>/ly/paper-defaults-init.ly
```
At this point (March 2021) we're on version 2.20.0 and the lines to change are 
94-95 (default is 10\mm, insert 34\mm if you want to match LaTeX book with 
oneside option default margins):
```ly
left-margin-default = 10\mm   % scaled to paper-size
right-margin-default = 10\mm  % scaled to paper-size
```

### Incorrect chords conversion in musicxml2ly
When we launch `lilypond-book` on a `lytex` file that embeds musicxml, we are
also calling yet another module called `musicxml2ly` and this basically converts
the musicxml to a Llypond file (yeah pretty self-explainatory, right?).

I found that there is a small issue in this script: when we have a score with
chord symbols on top of the staff, those chords that happen to be minor will
be input in the `.ly` output file with the `m5` modifier. This should work
fine according to [Lilypond reference](http://lilypond.org/doc/v2.22/Documentation/notation/common-chord-modifiers),
except it doesn't: chords with `m5` modifier will be displayed without the
'm' that stands for minor in the output pdf.

At least it's pretty easy to fix: `musicxml2ly` is a python script, so all
you have to do is
* navigate to `musicxml2ly` directory, which is `/usr/bin`
* open the file with a text editor as administrator, e.g. `sudo vi musicxml2ly`
* search for a dictionary called `chordkind_dict`: the script will use that
  when it operates the conversion
* remove that `5` from the value with key "minor"
* save and exit

Done! Now everything should work as expected.

### Chord spelling


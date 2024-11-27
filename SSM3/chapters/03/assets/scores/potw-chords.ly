\version "2.22"


harmonies = \chordmode {
  \set majorSevenSymbol = \markup { maj7 }

  % intro
  g2. c4
  g2. c4
  g2. c4
  g2. c4

  % line 1
  c2. c4:sus4
  c2. c4:sus4
  g2. c4
  g2. c4

  % line 1
  c2. c4:sus4
  c2. c4:sus4
  g2. c4
  g2. c4

  % line 2
  a2.:7 a4:7sus4
  a1:7

  \time 3/4 
  g2 c4
  \time 3/8
  d4.

  g1

  \time 6/8
  a4.:m f4.
  \time 5/8
  a4:m f4.

  \time 6/8
  c4.~ s4 c8/b
  a2.:m 
  \break

  \time 4/4
  d1
  g1
  g1

}

rhythms = \relative c' {
  \time 4/4
  \clef treble
  \key g \major
  \improvisationOn

  % intro
  c'4. 4. 4
  c4. 4. 4
  c4. 4. 4
  c4. 4. 4 
  \break

  % verse
  c4. 4. 4
  c4. 4. 4
  c4. 4. 4
  c4. 4. 4
  \break


  % verse
  c4. 4. 4
  c4. 4. 4
  c4. 4. 4
  c4. 4. 4
  \break

  c1
  c1

  \time 3/4
  c2
  c4
  \time 3/8
  c4.

  \time 4/4
  c1
  \break

  \time 6/8
  c4. c4.
  \time 5/8
  c4 c4.

  \time 6/8
  c4. c4 c8
  c2. 
  \break

  \time 4/4
  c1
  c1
  c1\fermata
  
  \improvisationOff
}

<<
  \new ChordNames \harmonies
  \new Staff \rhythms
>>
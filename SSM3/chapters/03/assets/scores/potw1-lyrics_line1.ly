\version "2.22"

\header {
  tagline = ##f
}

harmonies = \chordmode {
  \set majorSevenSymbol = \markup { maj7 }

  % line 1
   \set noChordSymbol = ""
  r1
  c2. c4:sus4
  c2. c4:sus4
  g2. c4


}

voice = \relative c' {
  \compoundMeter #'((3 3 2 8))
  \clef "treble_8"
  \key g \major
  
  r2 r8. a'16 a a a8
  g8 r8 r2.
  r2 r8. a16 a a a b~
  b8 r8 r2.
}

words = \lyricmode {
  If you did -- n't care
  What hap -- pened to me
}

<<
  \new ChordNames \harmonies
  \new Staff {
    \new Voice = "voice" \voice
  }
  \new Lyrics {
    \lyricsto "voice" \words
  }
>>

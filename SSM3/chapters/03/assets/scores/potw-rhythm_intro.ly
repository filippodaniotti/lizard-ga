\version "2.22"


harmonies = \chordmode {
  \set majorSevenSymbol = \markup { maj7 }

  % intro
  g2. c4
  g2. c4


}

rhythms = \relative c' {
    \compoundMeter #'((3 3 2 8))
  \clef treble
  \key g \major
  % intro
  g'8 g16 g g8 g8 g16 g g8 c16 c c c
  g8 g16 g g8 g8 g16 g g8 c16 c c c
  \break
}

<<
  \new ChordNames \harmonies
  \new Staff \rhythms
>>
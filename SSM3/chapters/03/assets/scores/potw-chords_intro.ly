\version "2.22"


harmonies = \chordmode {
  \set majorSevenSymbol = \markup { maj7 }

  % intro
  g2. c4
  g2. c4
  g2. c4
  g2. c4


}

rhythms = \relative c' {
    \compoundMeter #'((3 3 2 8))
  \clef treble
  \key g \major
  % intro
  g'2. c4
  g2. c4
  g2. c4
  g2. c4 
  \break
}

<<
  \new ChordNames \harmonies
  \new Staff \rhythms
>>
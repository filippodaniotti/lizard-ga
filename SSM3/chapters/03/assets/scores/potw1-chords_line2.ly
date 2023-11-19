\version "2.22"


harmonies = \chordmode {
  \set majorSevenSymbol = \markup { maj7 }

  % line 2
  a2.:7 a4:7sus4
  a1:7

  \time 3/4 
  g2 c4
  \time 3/8
  d4.

  \compoundMeter #'((3 3 2 8))
  g1


}

rhythms = \relative c' {
  \clef treble
  \key g \major

  \compoundMeter #'((3 3 2 8))
  % line 2
  a'2. a4
  a1

  \time 3/4
  g2 c4
  \time 3/8
  d4.

  \compoundMeter #'((3 3 2 8))
  g,1
}

<<
  \new ChordNames \harmonies
  \new Staff \rhythms
>>
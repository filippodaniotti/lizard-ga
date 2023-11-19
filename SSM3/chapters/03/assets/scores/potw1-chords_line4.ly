\version "2.22"


harmonies = \chordmode {
  \set majorSevenSymbol = \markup { maj7 }

  % line 4
  \time 6/8
  a2.:m 

  \compoundMeter #'((3 3 2 8))
  d2.:7 d4:7sus4
  d2.:7 d4:7sus4

  g1
  g1


}

rhythms = \relative c' {
  \clef treble
  \key g \major

  % line 4
  \time 6/8
  a'2. 

  \compoundMeter #'((3 3 2 8))
  d2. d4
  d2. d4
  g1 
  g1\fermata
  \bar "|."
}

<<
  \new ChordNames \harmonies
  \new Staff \rhythms
>>
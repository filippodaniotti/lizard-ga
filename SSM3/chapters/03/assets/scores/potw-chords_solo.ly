
\version "2.22"


harmonies = \chordmode {
  \set majorSevenSymbol = \markup { maj7 }
  
  \time 6/8

  c1. g1.
  c1. 
  a2.:m d2.
  a2.:m d2.
  c4. c4./b a2.:m

  g2. c4
  g2. c4
  g2. c4
  g2. c4


}

rhythms = \relative c' {
  \clef treble
  \key g \major

  \time 6/8
  c'2.~c2. g2.~g2.
  c2.~c2. 

  a2. d2. 
  a2. d2. 
  c4. b4. a2.




  \compoundMeter #'((3 3 2 8))
  % intro
  g2. c4
  g2. c4
  g2. c4
  g2. c4 
  \break
}

<<
  \new ChordNames \harmonies
  \new Staff \rhythms
>>
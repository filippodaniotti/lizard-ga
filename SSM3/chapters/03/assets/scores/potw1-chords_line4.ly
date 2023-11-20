\version "2.22"


harmonies = \chordmode {
  \set majorSevenSymbol = \markup { maj7 }

  % line 4
  \time 6/8
  a2.:m 

  d2:7 d4:7sus4
  d2.:7 

  g2.
  g2.


}

rhythms = \relative c' {
  \clef treble
  \key g \major

  % line 4
  \time 6/8
  a'2. 

  d2. 
  d2. 
  g2. 
  g2.\fermata
  \bar "|."
}

<<
  \new ChordNames \harmonies
  \new Staff \rhythms
>>
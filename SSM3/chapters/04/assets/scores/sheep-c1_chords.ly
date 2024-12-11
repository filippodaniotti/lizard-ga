\version "2.22"


harmonies = \chordmode {
  \set majorSevenSymbol = \markup { maj7 }
  \set noChordSymbol = "" 

  e1:m r r r
  a:/e r
  d:/e
  cis:m/e
  e1
  e1:m
  a:/e
  g:/e
  ges:/e

  e1:m 
  
}

rhythms = \relative c' {
  \key e \minor
  \time 4/4 
  \tempo \markup {
    Shuffle
  } 8 = 124

  % C1
  e'1~^\markup { "3:46" } e~ e~ e
  a,~ a d cis e e a, g ges
  
  \bar "||"

  % C2
  e1
  
}

<<
  \new ChordNames \harmonies
  \new Staff \rhythms
>>
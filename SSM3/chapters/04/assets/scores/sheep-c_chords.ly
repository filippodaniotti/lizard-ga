\version "2.22"


harmonies = \chordmode {
  \set majorSevenSymbol = \markup { maj7 }
  \set noChordSymbol = "" 

  e1:m r r r
  a:/e
  d:/e
  cis:m/e
  e1
  e1:m
  a:/e
  g:/e
  ges:/e

  e1:m r r r r r r
  r r
  a:7/e r r r
  e1:m r r r
  
}

rhythms = \relative c' {
  \key e \minor
  \time 4/4 
  \tempo \markup {
    Swing
  } 4 = 62

  % C1
  e'1~ e~ e~ e
  a, d cis e~ e a g ges
  
  \bar "||"
  \break

  % C2
  \ottava #1
  e1 fis g a b cis d
  \bar "||" 
  \tempo 4 = 124
  e~ e
  g~ g2 fis2 e1
  e~ e~ e~ e
  \ottava #0
}

<<
  \new ChordNames \harmonies
  \new Staff \rhythms
>>
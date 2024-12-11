\version "2.22"


harmonies = \chordmode {
  \set majorSevenSymbol = \markup { maj7 }
  \set noChordSymbol = "" 

  ges1:/e

  e1:m r r r r r r
  r r
  a:7 r r r
  e1:m r r r

  \repeat volta 2 {
    fis1 r
    a r
  }

  d1:dim
  
}

rhythms = \relative c' {
  \key e \minor
  \time 4/4 
  \tempo \markup {
    Swing
  } 8 = 124

  % C1
  ges'1
  
  \bar "||"

  % C2
  % \ottava #1
  \override NoteHead.color = #blue
  e1^\markup { "4:36" } fis g a b cis d
  \bar "||" 
  \tempo 4 = 124
  e~ e
  \override NoteHead.color = #black
  g~ g2 fis2 e1~ e
  e~ e~ e~ e
  % \ottava #0


  \repeat volta 2 {
    fis,1~ fis
    a~  a
  }

  % \bar "||."
  \key d \minor

  d,1
  
}

<<
  \new ChordNames \harmonies
  \new Staff \rhythms
>>
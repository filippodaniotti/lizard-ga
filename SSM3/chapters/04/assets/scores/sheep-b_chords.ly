\version "2.22"


harmonies = \chordmode {
  \set majorSevenSymbol = \markup { maj7 }
  \set noChordSymbol = ""  

  \repeat volta 2 {
    e1:m r r r
    c r r r
    e1:m r r r
  }

  \repeat volta 2 {
    fis1 r
    a r
  }

  e1:m r r r

}

rhythms = \relative c' {
  \key g \major
  \time 4/4 
  \tempo \markup {
    Swing
  }
  
  \repeat volta 2 {
    e1~ e~ e~ e
    c1~ c~ c~ c
    e1~ e~ e~ e
  }
  
  \repeat volta 2 {
    fis1~ fis
    a~ a
  }
  
  e1~ e~ e~ e

}

<<
  \new ChordNames \harmonies
  \new Staff \rhythms
>>
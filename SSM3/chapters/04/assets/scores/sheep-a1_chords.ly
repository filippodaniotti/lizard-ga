\version "2.22"


harmonies = \chordmode {
  \set majorSevenSymbol = \markup { maj7 }
  \set noChordSymbol = ""  

  \repeat volta 2 {
    d1:m6 r r r
  }

  d1:m6
  a1:m r 
  b1:m r 
  a1:m r 

}

rhythms = \relative c' {
  \key f \major
  \time 4/4 
  \tempo \markup {
    Shuffle
  } 8 = 124
  
  \repeat volta 2 {
    <d f a b>1~^\markup { "0:00" } <d f a b>~ <d f a b>~ <d f a b>
  }


  d2. e4
  a,1~  a2. d4
  b1~  b
  a1~ a 

  

}

<<
  \new ChordNames \harmonies
  \new Staff \rhythms
>>
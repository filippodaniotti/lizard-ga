\version "2.22"


harmonies = \chordmode {
  \set majorSevenSymbol = \markup { maj7 }
  \set noChordSymbol = ""  

  \repeat volta 2 {
    d1:dim7 r r r
  }

  d1:min7
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
  
  \repeat volta 20 {
    <d f aes ces>1~^\markup { "5:32" } <d f aes ces>~ <d f aes ces>~ 
  }
  \alternative {
    { <d f aes ces> }
    { d2. e4 }
  }

  \break

  a,1~  a2. d4
  b1~  b
  a1~ a 

}

<<
  \new ChordNames \harmonies
  \new Staff \rhythms
>>
\version "2.22"


harmonies = \chordmode {
  \set majorSevenSymbol = \markup { maj7 }
  \set noChordSymbol = ""  

  \repeat volta 2 {
    d1:dim7 r r r
  }

  d1:min7
  a1:m r 

}

rhythms = \relative c' {
  \key f \major
  \time 4/4 
  \tempo \markup {
    Swing
  }
  
  \repeat volta 2 {
    <d f aes ces>1~ <d f aes ces>~ <d f aes ces>~ <d f aes ces>
  }


  d2. e4
  a,1~  a2. d4  

}

<<
  \new ChordNames \harmonies
  \new Staff \rhythms
>>
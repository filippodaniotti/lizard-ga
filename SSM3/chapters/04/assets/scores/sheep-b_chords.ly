\version "2.22"


harmonies = \chordmode {
  \set majorSevenSymbol = \markup { maj7 }
  \set noChordSymbol = ""  

  \repeat volta 2 {
    e1:m r r r
    a:m r r r
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
    Shuffle
  } 4 = 124
  
  \repeat volta 2 {
    <e g b>1~^\markup { "1:42" } <e g b>~ <e g b>~ <e g b>
    <e a c>1~ <e a c>~ <e a c>~ <e a c>
    <e g b>1~ <e g b>~ <e g b>~ <e g b>
  }
  
  \repeat volta 2 {
    <fis ais cis>1~ <fis ais cis>
    <e a cis>~ <e a cis>
  }
  
  <e g b>1~ <e g b>~ <e g b>~ <e g b>

}

<<
  \new ChordNames \harmonies
  \new Staff \rhythms
>>
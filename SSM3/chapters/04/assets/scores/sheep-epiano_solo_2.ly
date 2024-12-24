\version "2.22"


harmonies = \chordmode {
  \set majorSevenSymbol = \markup { maj7 }
  \set noChordSymbol = "" 

  d1:m6
  
}

rhythms = \relative c' {
  \key d \minor
  \time 4/4
  \tempo \markup {
    Shuffle
  } 8 = 124

  <d b'>2^\markup { "0:20" } 
  \tuplet 3/2 { \slashedGrace { c'8 } d8 c8 r16 a,16} \tuplet 3/2{ \slashedGrace { g'8 } <a d>8 <g d>8 r8 }

  <f a>2~ <f a>8
  \tuplet 3/2 { d'16 c16 a16 }
  \tuplet 3/2 { <aes d>8 g16 } f8

  <e g c>2
  \tuplet 3/2 { <e g>8 <c e>8 r8 }
  \tuplet 3/2 { <c f>8 <c e>8 r8 }

  <d f>2

}

<<
  \new ChordNames \harmonies
  \new Staff \rhythms
>>
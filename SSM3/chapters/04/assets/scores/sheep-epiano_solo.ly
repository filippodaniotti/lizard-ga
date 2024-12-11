\version "2.22"


harmonies = \chordmode {
  \set majorSevenSymbol = \markup { maj7 }
  \set noChordSymbol = "" 
  
}

rhythms = \relative c' {
  \key d \minor
  \time 4/4
  \tempo \markup {
    Shuffle
  } 8 = 124

  r2^\markup { "0:00" }  r4
  \tuplet 3/2 { \slashedGrace { c'8 } d8 \slashedGrace { c8 } d8 \slashedGrace { c8 } d8 }

  \tuplet 3/2 { d8. a16  
    \override NoteHead.color = #blue 
    b8~ 
  }  b4~ b8. 
  \override NoteHead.color = #black
  a,16 \tuplet 3/2 { f'16 e8 } \tuplet 3/2 { e8 f16 }

  \override NoteHead.color = #magenta
  <c a'>2~ <c a'>8. 
  \override NoteHead.color = #black
  a16 \tuplet 3/2 { <c a'>8 <d b'>16 } r8

  \override NoteHead.color = #blue
  <d b'>2~ <d b'>8. 
  \override NoteHead.color = #black
  a16 \tuplet 3/2 { <c a'>8 <b g'> <c a'> }

  \override NoteHead.color = #magenta
  <c a'>2

  
}

<<
  \new ChordNames \harmonies
  \new Staff \rhythms
>>
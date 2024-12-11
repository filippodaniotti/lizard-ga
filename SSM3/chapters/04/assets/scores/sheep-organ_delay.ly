\version "2.22.0"

harmonies = \chordmode {
  \set majorSevenSymbol = \markup { maj7 }
  \set noChordSymbol = ""

  d1:dim7 r r r
}

rhythms = \relative c' {
  \key d \minor
  \time 4/4
  \tempo \markup {
    Shuffle
  } 8 = 124

  % Original note in blue
  \override NoteHead.color = #blue
  \override Stem.color = #blue
  <ces' f>2^\markup{ "6:10" }\>\fff
  
  % Echo notes in magenta with decreasing dynamics  
  \override NoteHead.color = #magenta
  \override Stem.color = #magenta
  <ces f>2
  
  <ces f>2
  <ces f>2
  
  <ces f>2
  <ces f>2
  
  <ces f>2
  <ces f>2\ppp\!
}

<<
  \new ChordNames \harmonies
  \new Staff \rhythms
>>

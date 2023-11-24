\version "2.22"


harmonies = \chordmode {
  \set majorSevenSymbol = \markup { maj7 }

  c1. g1.


}

rhythms = \relative c' {
  \clef "treble_8"
  \key g \major
  \time 6/8

  \grace d8 e8 e4\prall r8. c16 d e
  \tuplet 3/2 8 { e16( f e) } d16 e8. r16 d c \grace d16 e16~e d
  \tuplet 3/2 8 { c( d c) } \tuplet 3/2 8 { b( c b) } \tuplet 3/2 8 { g d8~ } d4.\prall r2.

}

<<
  \new ChordNames \harmonies
  \new Staff \rhythms
>>


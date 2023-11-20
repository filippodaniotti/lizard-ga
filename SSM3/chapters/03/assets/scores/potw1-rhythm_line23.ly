\version "2.22"


harmonies = \chordmode {
  \set majorSevenSymbol = \markup { maj7 }

  % line 2
  % a2.:7 a4:7sus4
  a1:7

  \time 3/4 
  g2 c4
  \time 3/8
  d4.

  \compoundMeter #'((3 3 2 8))
  g1

  \time 6/8
  a4.:m f4.
  \time 5/8
  a4:m f4.

}

rhythms = \relative c' {
  \clef treble
  \key g \major

  \compoundMeter #'((3 3 2 8))
  % line 2
  % a'8. a16 a a a8. a16 a a  a16 a a a
  a'8. a16 a a a8. a16 a a  a16 a a a

  \time 3/4
  g8 g16 g g4 c8 c
  \time 3/8
  d8 d d 

  \compoundMeter #'((3 3 2 8))
  g8 g16 g g8 g8 g16 g g8 g16 g g g

  \time 6/8
  a8 16 a a a f8 f16 f f f
  \time 5/8
  a16 a a a f8 f f16 f

}

<<
  \new ChordNames \harmonies
  \new Staff \rhythms
>>
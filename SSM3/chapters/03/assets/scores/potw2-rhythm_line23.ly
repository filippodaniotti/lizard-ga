\version "2.22"


harmonies = \chordmode {
  \set majorSevenSymbol = \markup { maj7 }

  % line 2
  % a2.:7 a4:7sus4
  a1:7

  \time 3/4 
  g2 c2
  \time 3/8
  d4.

  \time 6/8
  g2.

  a4.:m f4.
  a4.:m f4.

}

rhythms = \relative c' {
  \clef treble
  \key g \major

  \compoundMeter #'((3 3 2 8))
  % line 2
  % a'8. a16 a a a8. a16 a a  a16 a a a
  a'8. a16 a a a8. a16 a a  a16 a a a

  \time 4/4
  g8 g16 g g4 c8 c16 c c4
  \time 3/8
  d8 d d 

  \time 6/8
  g8 g16 g g8 g8 g16 g g8 

  a8 a16 a a8 f8 f16 f f8
  a8 a16 a a8 f8 f16 f f8

}

<<
  \new ChordNames \harmonies
  \new Staff \rhythms
>>
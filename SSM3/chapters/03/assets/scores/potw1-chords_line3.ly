\version "2.22"


harmonies = \chordmode {
  \set majorSevenSymbol = \markup { maj7 }

  % line 3
  \time 6/8
  a4.:m f4.
  \time 5/8
  a4:m f4.

  \time 6/8
  c4.~ s4 c8/b
  a2.:m 


}

rhythms = \relative c' {
  \clef treble
  \key g \major

  % line 3
  \time 6/8
  a'4. f4.
  \time 5/8
  a4 f4.

  \time 6/8
  c4. c4 b8
  a2. 
}

<<
  \new ChordNames \harmonies
  \new Staff \rhythms
>>
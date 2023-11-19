\version "2.22"


harmonies = \chordmode {
  \set majorSevenSymbol = \markup { maj7 }

  % line 1
  c2. c4:sus4
  c2. c4:sus4
  g2. c4
  g2. c4


}

rhythms = \relative c' {
  \compoundMeter #'((3 3 2 8))
  \clef treble
  \key g \major
  % verse
  \repeat volta 2 { 
    c'4. 4. 4
    c4. 4. 4
    g4. 4. c4
    g4. 4. c4
  }
}

<<
  \new ChordNames \harmonies
  \new Staff \rhythms
>>
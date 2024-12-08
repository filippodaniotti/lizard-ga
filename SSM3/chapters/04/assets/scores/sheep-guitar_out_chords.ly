\version "2.22"


harmonies = \chordmode {
  \set majorSevenSymbol = \markup { maj7 }
  \set noChordSymbol = ""  

  \repeat volta 2 {
    e8 r2 
    d2:/e 
    a2:/e 
    e2 
    d8:/e r2 
    e4 r1

    % e8 r2 
    % d2:/e 
    % a2:/e 
    % e2 
    % d8:/e r2 
    % e4 r1
  }

  r8 d2:/e 
  r2
  a2:/e 
  d2:/e 
  e8 r2 
  r4 r1

  e8 r2 
  d2:/e 
  e2 
  d2:/e

  a1 r1 r1 r1

}

rhythms = \relative c' {
  \key e \major
  \time 4/4 
  \tempo \markup {
    Swing
  } 4 = 124

  \repeat volta 2 {
    r8 
    <gis' b e>2
    <fis a d>4.~ <fis a d>8 
    <cis e a>2
    <b e gis>4.~ <b e gis>8 
    <a d fis>8~  <a d fis>2
    <e b' e>4~ <e b' e>1
  
    % \break
    % r8 
    % <gis' b e>2
    % <fis a d>4.~ <fis a d>8 
    % <cis e a>2
    % <b e gis>4.~ <b e gis>8 
    % <a d fis>8~  <a d fis>2
    % <e b' e>4~ <e b' e>1
  
  }
  \break

  r8 
  <a' d fis>8~ <a d fis>4.
  <fis a d>4.~ <fis a d>8 
  <cis e a>2
  <a d fis>4.~ <a d fis>8 
  <b e gis>8~  <b e gis>2
  <e, b' e>4~ <e b' e>1

  \break

  r8 
  <b'' e gis>2
  <a d fis>4.~ <a d fis>8 
  <gis b e>2
  <fis a d>4.
  <cis e a>1~
  <cis e a>1~
  <cis e a>1~
  <cis e a>1
}

<<
  \new ChordNames \harmonies
  \new Staff \rhythms
>>
\version "2.22.0"

\score {
  <<
    \new DrumStaff 
    {
      \drummode {
        \time 4/4
        <<
          \new DrumVoice { 
          \voiceOne
              \tempo \markup{ Half-Time Shuffle } 8 = 124

              s1 \bar "||"

              cymc8^\markup{ "4:36" } hh hh hh hh hh hh hh |
              hh8 hh hh hh hh hh hh hh |
              hh8 hh hh hh hh hh hh hh |
              hh8 hh hh hh hh hh hh hh |
              hh8 hh hh hh hh hh hh hh |
              hh8 hh hh hh s s s s |
              cymc8 hh hh hh s s s s \bar "||"

              \tempo \markup{ Shuffle } 4 = 124
              cymc8 hh hh hh hh hh hh hh |
              hh8 hh hh hh hh hh hh hh |
          }
          \new DrumVoice { 
          \voiceTwo
              r2. sn16 sn r16 bd16 |

              bd4 sn4 bd4 sn4 |
              bd4 sn4 bd4 sn4 |
              bd4 sn4 bd4 sn4 |
              bd4 sn4 bd4 sn8. bd16 |
              bd4 sn4 bd4 sn16 <tomfl tomfh>8 sn16  |
              bd4 sn8. sn16 bd16 sn8 sn8 sn16 tomfh16 tomfl16  |
              bd4 sn8. sn16 bd16 sn16 \tuplet 3/2 { r16 sn16 bd16 } sn16 sn16 \tuplet 3/2 { r16 sn16 tomfl16 }  |

              bd4 sn4 bd8 bd8 sn4 |
              bd4 sn4 bd8 bd8 sn4 |
          }
        >>
      }
    }
    \new Staff {
      \clef treble
      \key e \minor
      \relative c' {

        r1 |
        e1 fis g a b cis d
        e~ e
      }
    }
  >>
}
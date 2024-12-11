\version "2.22.0"

\score {
  \new DrumStaff 
  % \with { 
  %   \override StaffSymbol.line-count = #1
  %   drumStyleTable = #drums-style
  % } 
  {
    \drummode {
      \time 4/4
      \tempo 4 = 120
      <<
        \new DrumVoice { 
        \voiceOne
          hh8^\markup { "Tempo comune" } hh hh hh hh hh hh hh |
          \bar "||"
          hh8^\markup { "Tempo dimezzato" } hh hh hh hh hh hh hh |
          hh8 hh hh hh hh hh hh hh |
          \bar "|."
          \break
          \tempo 4 = 120
          hh8^\markup { "Tempo comune" } hh hh hh hh hh hh hh |
          \bar "||"
          \tempo 8 = 120
          hh8^\markup { "Tempo dimezzato" } hh hh hh hh hh hh hh |
          \bar "|."
        }
        \new DrumVoice { 
        \voiceTwo
          bd4 sn4 bd4 sn4 |
          bd2 sn2  |
          bd2 sn2  |

          bd4 sn4 bd4 sn4 |
          bd4 sn4 bd4 sn4 |
        }
      >>
    }
  }
}
\paper {
    right-margin = 34\mm
    left-margin = 34\mm
    bottom-margin = 10\mm
}

up = \drummode {
  cymc8 hh hh hh hh hh hh hh
  hh hh hh hh hh hh hh hh
  hh hh hh hh hh hh hh hh
  hh hh hh hh
}

down = \drummode {
  bd4 sn4 bd8 bd sn4 
  bd8. bd16 sn8 bd <bd sn> bd16 bd sn8 bd
  bd4 sn4 bd8 bd sn4 
  bd8. bd16 sn8 bd sn16 sn bd8 sn16 sn sn sn
}

hc = \drummode {
  cb4 cb cb cb
  cb4 cb cb cb
  cb4 cb cb cb
  cb4 cb cb cb
}

\new StaffGroup <<
  \new DrumStaff <<
  \new DrumVoice { 
      \voiceOne 
        \up
    }
  \new DrumVoice { 
      \voiceTwo 
        \down 
  }
>> 
  \new DrumStaff \with {
      drumStyleTable = #percussion-style
      \override StaffSymbol.line-count = #1
      \override BarLine.bar-extent = #'(-1 . 1)
    }
    <<
      \hc
    >>
>>

% \new DrumStaff <<
%   \new DrumVoice { 
%       \voiceOne 
%         \up
%     }
%   \new DrumVoice { 
%       \voiceTwo 
%         \down 
%   }
% >> 

up = \drummode {
  crashcymbal1:32
}

down = \drummode {
  bassdrum4
}

\new DrumStaff <<
  \new DrumVoice { 
      \voiceOne 
        \up^\markup{ \italic { Rubato } } 
        \up 
        \up 
        \up 
    }
  \new DrumVoice { 
      \voiceTwo 
        \down r2. 
        \down r2. 
        \down r2. 
        \down r2._\markup{ \italic{ Suddenly stops }} }
  \bar "|."
>> 

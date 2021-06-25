\paper {
    right-margin = 34\mm
    left-margin = 34\mm
}

up = \drummode {
  cymc8 hho hho hho hho hho hho hho 
  hho hho hho hho hho hho hho hho
}

down = \drummode {
  bd4 sn bd8 bd sn4
  bd4 sn bd8 bd sn4
}

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

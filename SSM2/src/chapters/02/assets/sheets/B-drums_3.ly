\paper {
    right-margin = 34\mm
    left-margin = 34\mm
}

up = \drummode {
  hho8 hho hho hho hho hho hho hho
  hho hho hho hho r8 cymc8. cymc
  cymc4
}

down = \drummode {
  bd4 sn4 bd8 bd sn4 
  bd8. bd16 sn8 bd sn16 sn bd8 sn16 bd r sn
  bd4
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

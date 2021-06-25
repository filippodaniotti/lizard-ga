\paper {
    right-margin = 34\mm
    left-margin = 34\mm
}

up = \drummode {
  cymc2 s2 %fill
  cymc8 cymr8 cymr8 cymr8 cymr8 cymr8 cymr8 cymr8
  cymr8 cymr8 cymr8 cymr8 cymr8 cymr8 cymr8 cymr8
  cymr8 cymr8 cymr8 cymr8 cymr8 cymr8 cymr8 cymr8
  cymc8 cymr8 cymr8 cymr8 cymr8 cymr8 cymr8 cymr8 \break
  cymc2 r8 \tuplet 3/2 8 { hhho16 hhho hhho} hhho8 hhho
  cymr4. cymr r8 \tuplet 3/2 8 { hhho16 hhho hhho}
  hho4 r2.
  s1
}

down = \drummode {
    bd2 r8 sn tomml tomfh %fill
    bd4 ss bd8 bd ss4
    bd8 bd ss bd r bd ss4
    bd4 ss8 bd r bd ss4
    bd8 bd ss bd r bd ss4 \break
    bd4 s2.
    s1
    r2. \acciaccatura sn8 <bd sn>4
    tommh8 tomml r tommh16 tommh tomml tomml tomfh8 tomml16 tomml tomfh tomfh
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

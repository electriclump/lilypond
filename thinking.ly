\version "2.19.83"

\header {
  title = "thinking"
  composer = "louis cole"

}

\paper {
  #(define fonts
    (set-global-fonts
     #:music "lilyjazz"
     #:brace "lilyjazz"
     #:roman "lilyjazz-text"
     #:sans "lilyjazz-chord"))
}

global = {
  \time 4/4
  \key ges \major
  \tempo 4=100
  \clef bass
  \compressFullBarRests
}

melody = \relative ges, {
  \global
  \override Glissando.style = #'zigzag
  \override Score.RehearsalMark.self-alignment-X = #LEFT
  \partial 16 r16
  \bar "||"
  R1*8 \bar "||"
  R1*7
  \break
  
  %bass
  r2. r8. aes16\f 
  \bar "||"
  r16[ aes r aes] r[ \deadNote aes-. a8-. ] bes8. bes16 r[ des r ees]
  r16[ ees r ees] r8 des16 \deadNote bes ees8. ees16 r[ ges, g aes]
  r16[ aes r aes] r[ \deadNote aes-. a-. r] bes8. bes16 r[ d g, c]
  r16[ g' r c] r8 g16 c, f8. \deadNote c16 ges8 g16 aes
  r16[ aes r aes] r[ \deadNote aes-. a8-. ] bes8. bes16 r[ des r ees]
  r16[ ees r ees] r8 des16 \deadNote bes ees8. ees16 r[ ges, g aes]
  r16[ aes r aes] r[ \deadNote aes-. a-. r] bes8. bes16 r[ d des c] 
  r16[ g' r c] r8 g16 c, f8. \deadNote c16 f,[ r16 aes \deadNote aes']
  r16[ ees aes, aes'] r[ \deadNote aes, a8] bes8. bes16 r[ des d ees]
  r16[ des' d ees] r[ bes ees,8] \glissando \cadenzaOn \hideNotes bes'32 \unHideNotes \cadenzaOff r16[ f' f, ges'] r[ g r aes ]
  r16[ ees aes, a] r[ \deadNote ees a,8] bes8. bes16 r[ d des c]
  r16[ g' r c] r8 g16 c, f8. c16 ges8 g16 aes
  \bar "||"
  r16[ aes r aes] r[ \deadNote aes a8] bes8. bes16 r[ des r ees]
  r16[ ees r ees] r8[ des16 \deadNote bes] ees8. \deadNote des16 ges,8 g16 aes
  r16[ \deadNote aes' aes, \deadNote aes'] r[ \deadNote aes, a8] bes8. bes16 r[ d des c]
  r16[ g' r c ] r8[ g16 c,] f8. \deadNote c16 ges 8 g16 aes 
  r16[ aes r aes] r[ \deadNote aes a8] bes8. bes16 r[ des r ees]
  r8.[ ees'16] r4 r16[ ees16 ees,8] r16[ a,8 aes16]
  r16[ aes r aes] r[ \deadNote aes-. a-. r] bes8. bes16 r[ d des c] 
  r16[ g' r c] r8 g16 c, f4 f,4
  \bar "||"
  R1*4
  \break
  \repeat volta 2 {   des'4 f ges des c e f c ces ees fes ces  }
  \alternative {
    { bes f bes c  | }
    {  
      \mark "reg tempo"
      bes2 \glissando bes'2 \glissando |
    }
  }

  bes,4 
  \break
  r2. r r8. aes16
  \bar "||"
    r16[ aes r aes] r[ \deadNote aes a8] bes8. bes16 r[ des r ees]
  r16[ ees r ees] r8[ des16 \deadNote bes] ees8. ees16 r[ ges, g aes]
  r16[ aes r aes] r[ \deadNote aes-. a-. r] bes8. bes16 r[ d des c] 
  r16[ \deadNote g' d' g,] ees' d g, f r16[ \deadNote c' g' c,] aes' f c aes,
  r16[ aes r aes] r[ \deadNote g a8] bes8. bes16 r[ des r ees]
  r16[ ees r ees] r8 des16 \deadNote bes ees8. ees16 r[ges, g aes] 
  r16[ aes r aes] r[ aes a r] bes8. bes16 r[d des c]
  r16[ g' r c] r8 g16 c, f8. \deadNote d16 ges,8 g16 aes 
  \bar "||"
  % chorus
  r16[ aes r aes] r[ aes a r] bes8. bes16 r[ des r ees] 
  r16[ ees r ees] r8 des16 bes ees ees des ees des bes ges aes
  r16[ aes r aes] r[ aes' a,8] bes8. bes16 r[ d des c] 
  r16[ \deadNote g' d' g,] ees' d g, f r16[ \deadNote c' g' c,] aes' f c aes,
  r16[ aes r aes] r[ aes a r] bes8. bes16 r[ des r ees] 

  
  r8.[ees'16]  r8.[ees,16]   r8.[ees16] r16 ees r aes,
  r16[ aes r aes] r[ \deadNote aes-. a-. r] bes8. bes16 r[ d des c] 
  r16[ \deadNote g' d' g,] ees' d g, f r16[ \deadNote c' g' c,] aes' f c aes,
  \bar "||"
  r16[ aes r aes] r[ \deadNote aes a8] bes4.\prall des8
  ees8[ r16 ees'] r8 des16 bes ees[ ees r ees,] r[ g, r aes]
  r8.[ aes'16] r[ e,( a8)] bes4 r16 d des8
  c16 g'8 c16 r8[ g16 c,] f8. \deadNote c16 ges8 g16 aes
  r8.aes'16 r[ aes, a8] bes4. des8
  ees16[ r8 ees'16] r4 r16[ ees ees,8] r16[ a a,8]
  \deadNote aes16 aes' aes,8 r a bes8. bes16 r[ d des16 c]
  r16[ g' r c] r[ g r ges](f)[ c r ges] r[ g r aes]
  r16[ aes r aes'] r a, r8 bes8. bes16 r[ des r ees]
  r16[ ees r ees] r8[ ees'8] r16[ ees, r ees] r[ \deadNote g, bes aes]
  r16[ aes' r aes,] r[ aes a8] bes8. bes16 r[ d des c]
  r16[ g' r c] r8 g16 ges f[ g, ges f] r[ ges r aes] 
  r16[ aes' \deadNote aes, a] r8 bes r16[ bes r bes] r d r8
  r16[ ees r ees] r8 des ees16 des bes ges r[ g r aes]
  r16[ \deadNote ges aes aes] r[ \deadNote  g a8] bes8. bes16 r[ d des c]
  r16[ g' r c] r[ \deadNote g g16 c,] f8. bes,16 r8 bes
  bes bes bes bes bes bes bes bes 
  bes bes bes bes bes r8 r8. aes16
  \bar "||"
  % chorus
  \break
  r16[ aes r aes] r[ \deadNote aes' a,8] bes8. bes16 r[ des r ees]
  r16[ ees r ees] r8[ des16 \deadNote bes] ees8. \deadNote des16 ges,8 g16 aes
  \break
  r16[ aes r aes] r[ \deadNote aes-. a-. r] bes8. bes16 r[ d des c] 
  r16[ \deadNote g' d' g,] ees' d g, f r16[ \deadNote c' g' c,] aes' f c aes,
  r16[ aes r aes] r[ \deadNote aes' a,8] bes8. bes16 r[ des r ees]
  r8. ees'16 r8 des16 bes ees des bes ees, r[ ges, r aes]
  \break
  r16[ aes r aes] r[ \deadNote aes'-. a,8-.] bes8. bes16 r[ d des c] 
  r16[ g' r c] r[ \deadNote g g c,] f8. \deadNote c16 ges8 g16 aes 
  \bar "||"

  \break
  r8 ces' r16[ aes, a8] bes16[ des'8.] r16 bes, des8
  ees8. ees16 r8[ des16 \deadNote bes] ees des bes ges r[ g r aes](
  aes16) ces' r8 r16[ e,, a \deadNote e] bes' des' r8 r16[ d, des c ]
  r16[ c' r g] r8[ ges] f8. ges,16 r[ g r aes]
  r16[ aes' aes, aes] r[ e(a8)] bes8. bes16 r[ des r ees]
  r8.[ des'16] r[ d r8] ees16 des bes aes r[ des r aes]
  r16[ ees r aes,] r[ a r bes] r[ ees r d] r[ des r c] 
  r16[ g' r g] r[ ges r d] r[f, r ges] r[ g r aes]
  r16[ aes r aes] r[aes' a,8] bes8. bes16 r[ des r ees] 
  r8. ees'16 r8 des16 bes ees des bes ees, r bes' r ees,   
  r16[ aes, r aes'] r[ \deadNote aes, a bes] r[ bes' bes, bes] r[ bes' r c,]
  r16[ c' r c,] r[ ees r8] f16[ f r ees] r[ f r aes,]
  r16[ aes r aes] r[aes' a,8] bes8. bes16 r[ des r ees] 
  r8. ees'16 r8 des16 bes ees des bes ees, r[ g, r aes](
  aes8.) aes16(aes) \deadNote e16 a8 bes8. bes16 r[ d des c](
  c16) g'(g) f(f) c'(c) bes(bes) f(f) ees(ees) g,(g) aes(
  aes16) aes(aes) aes(aes) aes a8 bes8. bes16 r[ des r ees]
  r8.[ ees16] r8 des16 bes ees des bes \deadNote ges r[ g r aes]
  r16 aes' r8 r16 \deadNote e, a8 bes8. bes16 r8. c16 
  r8. c'16 r8[ g16 c,] f[ c r ges] r[ g r aes]
  r16 aes' aes, aes r[ aes a8] bes8. bes16 r[ des r ees]
  r8.[ ees'16] r8[ ees,16 r] r[ ees'16 r ees,] r[ a, r aes]
  r16 aes' aes, aes r[ aes a8] bes8. bes16 r[ \deadNote d des c]
  r16[ g' r c] r8[ g16 ges] f c aes f(f4)
  r2. r8. aes16
  \bar "|."
  
}
words = \lyricmode {

 
}

\score {
  <<
    \new Staff { \melody }
    \addlyrics { \words }
  >>
  \layout { }
  \midi { }
}

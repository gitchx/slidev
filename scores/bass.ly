\score {
  \relative c {
    \clef bass
    \key c \major
    \time 4/4

    \tempo \markup {
      \rhythm { 8[ 8] }
      =
      \rhythm { \tuplet 3/2 { 4 8 } }
    }

    c8 r c4 g8 g \tuplet  3/2{g8 a8 b8} |
    c8 r c g c4 r
  }
}

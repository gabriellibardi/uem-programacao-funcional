// Projete uma função que concatene todas os elementos de uma lista de strings.

import sgleam/check

// Concatena todas as strings de *lista*.
pub fn concatena_strings(lista: List(String)) -> String {
  case lista {
    [] -> ""
    [primeiro, ..resto] -> primeiro <> concatena_strings(resto)
  }
}

pub fn concatena_strings_examples() {
  check.eq(concatena_strings([]), "")
  check.eq(concatena_strings(["café"]), "café")
  check.eq(concatena_strings(["olá, ", "mundo!"]), "olá, mundo!")
  check.eq(concatena_strings(["aaa", "bbb", "ccc"]), "aaabbbccc")
}

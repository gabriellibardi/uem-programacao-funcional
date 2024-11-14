// Projete uma função que crie uma lista de números a partir
// de uma lista de strings convertendo cada string para um número.

import gleam/int
import gleam/list
import sgleam/check

/// Converte a *lista* de Strings para uma lista de inteiro.
/// Os valores que não podem ser convertidos são ignorados.
pub fn string_para_int(lista: List(String)) -> List(Int) {
  case lista {
    [] -> []
    [primeiro, ..resto] ->
      case int.parse(primeiro) {
        Ok(primeiro_int) -> list.append([primeiro_int], string_para_int(resto))
        Error(_) -> string_para_int(resto)
      }
  }
}

pub fn string_para_int_examples() {
  check.eq(string_para_int([]), [])
  check.eq(string_para_int([""]), [])
  check.eq(string_para_int(["2", "32", "3"]), [2, 32, 3])
  check.eq(string_para_int(["23", "a", "3", "café", "3"]), [23, 3, 3])
  check.eq(string_para_int(["Bom", "dia", "RU"]), [])
}

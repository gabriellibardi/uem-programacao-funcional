// Projete uma função que determine a quantidade de elementos de uma lista de números.

import sgleam/check

/// Determina a quantidade de elementos de *lista*
pub fn tamanho_lista(lista: List(Int)) -> Int {
  case lista {
    [] -> 0
    [_, ..resto] -> 1 + tamanho_lista(resto)
  }
}

pub fn tamanho_lista_examples() {
  check.eq(tamanho_lista([]), 0)
  check.eq(tamanho_lista([2]), 1)
  check.eq(tamanho_lista([32, 1, 32, 13, 333]), 5)
}

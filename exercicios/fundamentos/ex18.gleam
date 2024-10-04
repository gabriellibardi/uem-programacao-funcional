// Faça uma função chamada ordem que recebe três inteiros distintos, a, b e c
// e determina se a sequencia a, b, c está em ordem crescente,
// decrescente ou não está em ordem. 
// Use os operadores relacionas com três argumentos.

import gleam/io

pub fn main() {
  io.debug(ordem(3, 8, 12))
  io.debug(ordem(3, 1, 4))
  io.debug(ordem(3, 1, 0))
}

fn ordem(a: Int, b: Int, c: Int) -> String {
  case a > b {
    True ->
      case b > c {
        True -> "decrescente"
        False -> "sem ordem"
      }
    False ->
      case b < c {
        True -> "crescente"
        False -> "sem ordem"
      }
  }
}

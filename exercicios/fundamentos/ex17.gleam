// Faça uma função maximo que encontre o máximo entre dois inteiros.
// Não use a função int.max.

import gleam/io

pub fn main() {
  io.debug(maximo(3, 5))
  io.debug(maximo(8, 4))
  io.debug(maximo(6, 6))
}

fn maximo(x: Int, y: Int) -> Int {
  case x > y {
    True -> x
    False -> y
  }
}

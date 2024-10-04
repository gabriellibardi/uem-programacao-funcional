// Faça uma função chamada produto_anterior_posterior que recebe 
// um número inteiro n e calcula o produto de n, n + 1 e n - 1.

import gleam/io

pub fn main() {
  io.debug(produto_anterior_posterior(3))
  io.debug(produto_anterior_posterior(1))
  io.debug(produto_anterior_posterior(-2))
}

pub fn produto_anterior_posterior(n: Int) -> Int {
  n * { n - 1 } * { n + 1 }
}

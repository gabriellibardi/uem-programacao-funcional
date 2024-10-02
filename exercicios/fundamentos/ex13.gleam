import gleam/io

pub fn main() {
  io.debug(produto_anterior_posterior(3))
  io.debug(produto_anterior_posterior(1))
  io.debug(produto_anterior_posterior(-2))
}

pub fn produto_anterior_posterior(n: Int) -> Int {
  n * { n - 1 } * { n + 1 }
}

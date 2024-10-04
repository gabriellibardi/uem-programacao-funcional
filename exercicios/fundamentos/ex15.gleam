// Faça uma função chamada eh_par que recebe um número natural n e indica se n é par.
// Um número é par se o resto da divisão dele por 2 é igual a zero. 

import gleam/io

pub fn main() {
  io.debug(eh_par(3))
  io.debug(eh_par(6))
}

fn eh_par(n: Int) -> Bool {
  n % 2 == 0
}

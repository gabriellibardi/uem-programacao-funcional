// Faça uma função chamada tem_tres_digitos que recebe um número natural n
// e verifica se n tem exatamente 3 dígitos. Não use case.

import gleam/io

pub fn main() {
  io.debug(tem_tres_digitos(99))
  io.debug(tem_tres_digitos(100))
  io.debug(tem_tres_digitos(999))
  io.debug(tem_tres_digitos(1000))
}

fn tem_tres_digitos(n: Int) -> Bool {
  n >= 100 && n <= 999
}

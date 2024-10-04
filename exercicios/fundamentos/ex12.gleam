// aça uma função chamada area_retangulo que recebe dois argumentos,
// a largura e a altura de um retângulo, e calcula a sua área.

import gleam/io

pub fn main() {
  io.debug(area_retangulo(3.0, 5.0))
  io.debug(area_retangulo(2.0, 2.25))
}

pub fn area_retangulo(largura: Float, altura: Float) -> Float {
  largura *. altura
}

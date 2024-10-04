// Faça uma função chamada so_primeira_maiuscula que recebe
// uma palavra não vazia (string) como parâmetro e crie uma
// nova string convertendo a primeira letra da palavra para
// maiúscula e o restante da palavra para minúscula.

import gleam/io
import gleam/string

pub fn main() {
  io.debug(so_primeira_maiuscula("paula"))
  io.debug(so_primeira_maiuscula("ALFREDO"))
}

fn so_primeira_maiuscula(palavra: String) -> String {
  string.uppercase(string.slice(from: palavra, at_index: 0, length: 1))
  <> string.lowercase(string.slice(
    from: palavra,
    at_index: 1,
    length: string.length(palavra),
  ))
}

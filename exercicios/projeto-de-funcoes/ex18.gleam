import gleam/string
import sgleam/check

/// Indica o tamanho de um *nome* como:
/// curto, caso ele possua 4 ou menos caracteres;
/// médio, caso possua mais de 4 e menos de 10 caracteres;
/// longo, caso possua 10 ou mais caracteres.
pub fn tamanho_nome(nome: String) -> String {
  case string.length(nome) <= 4 {
    True -> "curto"
    False ->
      case string.length(nome) <= 10 {
        True -> "médio"
        False -> "longo"
      }
  }
}

pub fn tamanho_nome_examples() {
  check.eq(tamanho_nome(""), "curto")
  check.eq(tamanho_nome("Ian"), "curto")
  check.eq(tamanho_nome("Gabriel"), "médio")
  check.eq(tamanho_nome("Marco Aurélio"), "longo")
}

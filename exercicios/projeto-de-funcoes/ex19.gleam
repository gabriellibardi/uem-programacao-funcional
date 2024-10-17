import gleam/string
import sgleam/check

/// Adiciona um ponto final no *texto* caso ele já não acabe com um
pub fn adiciona_ponto_final(texto: String) -> String {
  case string.slice(texto, -1, 1) == "." {
    True -> texto
    False -> texto <> "."
  }
}

pub fn adiciona_ponto_final_examples() {
  check.eq(adiciona_ponto_final(""), ".")
  check.eq(adiciona_ponto_final("Olá, mundo"), "Olá, mundo.")
  check.eq(
    adiciona_ponto_final("Que vontade de trancar o curso."),
    "Que vontade de trancar o curso.",
  )
}

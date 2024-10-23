import gleam/string
import sgleam/check

/// Substitui os *n* primeiros caracteres do *texto* por "x".
pub fn substitui_n_primeiros_por_x(texto: String, n: Int) -> String {
  case n >= 0 {
    True ->
      case n <= string.length(texto) {
        True ->
          string.repeat("x", n)
          <> string.slice(texto, n, string.length(texto) - n)
        False -> string.repeat("x", string.length(texto))
      }
    False -> texto
  }
}

pub fn substitui_n_primeiros_por_x_examples() {
  check.eq(substitui_n_primeiros_por_x("", 0), "")
  check.eq(substitui_n_primeiros_por_x("", 3), "")
  check.eq(
    substitui_n_primeiros_por_x("Olá, meu nome é Gabriel", 5),
    "xxxxxmeu nome é Gabriel",
  )
  check.eq(substitui_n_primeiros_por_x("Olá, mundo!", 32), "xxxxxxxxxxx")
  check.eq(substitui_n_primeiros_por_x("Olá, mundo!", -3), "Olá, mundo!")
}

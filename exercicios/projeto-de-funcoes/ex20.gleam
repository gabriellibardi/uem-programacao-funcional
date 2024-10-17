import gleam/string
import sgleam/check

/// Determina se uma *palavra* possui um traço ("-") no meio dela.
/// Por exemplo a palavra "lero-lero".
pub fn possui_traco_meio(palavra: String) -> Bool {
  string.length(palavra) % 2 != 0
  && string.slice(palavra, string.length(palavra) / 2, 1) == "-"
}

pub fn possui_traco_meio_examples() {
  check.eq(possui_traco_meio(""), False)
  check.eq(possui_traco_meio("-"), True)
  check.eq(possui_traco_meio("lero-lero"), True)
  check.eq(possui_traco_meio("guarda-chuva"), False)
  check.eq(possui_traco_meio("pega-pega"), True)
}

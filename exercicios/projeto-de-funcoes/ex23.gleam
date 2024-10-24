// Verificar se um texto digitado pelo usuário segue a regra de não possuir "espaços extras",
// isso é, não começa e nem termina com espaços.
import gleam/string
import sgleam/check

/// Verifica se o *texto* segue a regra de não possuir "espaços extras",
/// isso é, não começa e nem termina com espaços.
pub fn nao_possui_espacos_extras(texto: String) -> Bool {
  string.slice(texto, 0, 1) != " " && string.slice(texto, -1, 1) != " "
}

pub fn nao_possui_espacos_extras_examples() {
  check.eq(nao_possui_espacos_extras(""), True)
  check.eq(nao_possui_espacos_extras("Olá, mundo!"), True)
  check.eq(nao_possui_espacos_extras("Adoro o café da manhã do RU "), False)
  check.eq(nao_possui_espacos_extras(" Odeio o almoço do RU."), False)
  check.eq(nao_possui_espacos_extras(" Amo programação funcional "), False)
}

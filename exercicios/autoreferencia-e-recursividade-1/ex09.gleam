// Projete uma função que crie uma nova lista removendo as strings vazias de uma lista de strings.

import gleam/list
import sgleam/check

// Remove as strings vazias da *lista*
pub fn remove_vazio(lista: List(String)) -> List(String) {
  case lista {
    [] -> []
    [primeiro, ..resto] ->
      case primeiro {
        "" -> remove_vazio(resto)
        _ -> list.append([primeiro], remove_vazio(resto))
      }
  }
}

pub fn remove_vazio_examples() {
  check.eq(remove_vazio([]), [])
  check.eq(remove_vazio(["Bom", "dia", "RU"]), ["Bom", "dia", "RU"])
  check.eq(remove_vazio(["AAA", "", "", "BBB"]), ["AAA", "BBB"])
  check.eq(remove_vazio(["", "", "", ""]), [])
  check.eq(remove_vazio(["  ", " "]), ["  ", " "])
}

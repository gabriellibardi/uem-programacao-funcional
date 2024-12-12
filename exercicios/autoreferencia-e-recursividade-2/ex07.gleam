// Projete uma função que calcule a amplitude dos valores de uma lista de núme-
// ros, isto é, a diferença entre o valor máximo e mínimo da lista. Dica: crie 
// um plano e use funções auxiliares.
import sgleam/check

/// Calcula a amplitude de *lista*, isto é, a diferença entre seu valor máximo
/// e mínimo. Retorna um erro caso a *lista* seja vazia.
pub fn amplitude(lista: List(Int)) -> Result(Int, Nil) {
  case lista {
    [] -> Error(Nil)
    _ ->
      case maximo_lista(lista), minimo_lista(lista) {
        Ok(max), Ok(min) -> Ok(max - min)
        _, _ -> Error(Nil)
      }
  }
}

pub fn amplitude_examples() {
  check.eq(amplitude([]), Error(Nil))
  check.eq(amplitude([3]), Ok(0))
  check.eq(amplitude([3, 5]), Ok(2))
  check.eq(amplitude([1, 6, 3, 7]), Ok(6))
  check.eq(amplitude([4, -1, 5, -7, 2]), Ok(12))
  check.eq(amplitude([-4, -1, -5, -8]), Ok(7))
}

pub fn maximo_lista(lista: List(Int)) -> Result(Int, Nil) {
  case lista {
    [] -> Error(Nil)
    [primeiro, ..resto] ->
      case maximo_lista(resto) {
        Error(Nil) -> Ok(primeiro)
        Ok(max_resto) ->
          case primeiro > max_resto {
            True -> Ok(primeiro)
            False -> Ok(max_resto)
          }
      }
  }
}

pub fn minimo_lista(lista: List(Int)) -> Result(Int, Nil) {
  case lista {
    [] -> Error(Nil)
    [primeiro, ..resto] ->
      case minimo_lista(resto) {
        Error(Nil) -> Ok(primeiro)
        Ok(min_resto) ->
          case primeiro < min_resto {
            True -> Ok(primeiro)
            False -> Ok(min_resto)
          }
      }
  }
}

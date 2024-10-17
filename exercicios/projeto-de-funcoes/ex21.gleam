import sgleam/check

/// Encontra o valor máximo entre *n1*, *n2* e *n3*.
pub fn maximo_entre_3(n1: Float, n2: Float, n3: Float) -> Float {
  case n1 >. n2 {
    True -> n1
    False ->
      case n2 >. n3 {
        True -> n2
        False -> n3
      }
  }
}

pub fn maximo_entre_3_examples() {
  check.eq(maximo_entre_3(1.0, 1.0, 1.0), 1.0)
  check.eq(maximo_entre_3(1.2, 2.0, 0.1), 2.0)
  check.eq(maximo_entre_3(0.0, 0.0, 1.32), 1.32)
  check.eq(maximo_entre_3(32.1, 1.2, 21.2), 32.1)
  check.eq(maximo_entre_3(-32.1, 1.2, -21.2), 1.2)
}

import sgleam/check

/// Aumenta o *valor* em *porcentagem* por cento dele próprio.
/// Requer que o valor e a porcentagem sejam valores com ponto flutuante positivos.
pub fn aumenta(valor: Float, porcentagem: Float) -> Float {
  valor *. {1.0 +. porcentagem /. 100.0}
}

pub fn aumenta_examples() {
  check.eq(aumenta(50.32, 0.0), 50.32)
  check.eq(aumenta(10.0, 50.0), 15.0)
  check.eq(aumenta(21.0, 10.0), 23.1)
}
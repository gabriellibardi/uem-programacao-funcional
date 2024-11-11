import sgleam/check

/// Estados de um elevador
pub type EstadoElevador {
  Parado
  Subindo
  Descendo
}

/// Determina a situação do elevador após pedir que ele vá ao 
/// *andar_solicitado*, levando em conta o *andar_atual* e o que
/// o elevador está parado.
/// Requer que ambos os andares sejam inteiros não negativos.
pub fn solicitacao_elevador(
  andar_atual: Int,
  andar_solicitado: Int,
) -> EstadoElevador {
  case andar_atual == andar_solicitado {
    True -> Parado
    False ->
      case andar_atual > andar_solicitado {
        True -> Descendo
        False -> Subindo
      }
  }
}

pub fn solicitacao_elevador_examples() {
  check.eq(solicitacao_elevador(0, 0), Parado)
  check.eq(solicitacao_elevador(1, 3), Subindo)
  check.eq(solicitacao_elevador(21, 12), Descendo)
}

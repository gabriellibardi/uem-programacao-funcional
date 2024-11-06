import sgleam/check

/// Pontos cardeais
pub type Direcao {
  Norte
  Sul
  Leste
  Oeste
}

/// Indica a direção oposta de *direcao*.
pub fn direcao_oposta(direcao: Direcao) -> Direcao {
  case direcao {
    Norte -> Sul
    Sul -> Norte
    Leste -> Oeste
    Oeste -> Leste
  }
}

pub fn direcao_oposta_examples() {
  check.eq(direcao_oposta(Norte), Sul)
  check.eq(direcao_oposta(Sul), Norte)
  check.eq(direcao_oposta(Leste), Oeste)
  check.eq(direcao_oposta(Oeste), Leste)
}

/// Indica a direção que está à 90 graus no sentido horário de *direcao*.
pub fn direcao_90_graus_horario(direcao: Direcao) -> Direcao {
  case direcao {
    Norte -> Leste
    Leste -> Sul
    Sul -> Oeste
    Oeste -> Norte
  }
}

pub fn direcao_90_graus_horario_examples() {
  check.eq(direcao_90_graus_horario(Norte), Leste)
  check.eq(direcao_90_graus_horario(Leste), Sul)
  check.eq(direcao_90_graus_horario(Sul), Oeste)
  check.eq(direcao_90_graus_horario(Oeste), Norte)
}

/// Indica a direção que está à 90 graus no sentido anti-horário de *direcao*.
pub fn direcao_90_graus_antihorario(direcao: Direcao) -> Direcao {
  direcao_90_graus_horario(
    direcao_90_graus_horario(direcao_90_graus_horario(direcao)),
  )
}

pub fn direcao_90_graus_antihorario_examples() {
  check.eq(direcao_90_graus_antihorario(Norte), Oeste)
  check.eq(direcao_90_graus_antihorario(Leste), Norte)
  check.eq(direcao_90_graus_antihorario(Sul), Leste)
  check.eq(direcao_90_graus_antihorario(Oeste), Sul)
}

// Indica a quantidade de graus que deve ser girado no sentido horário para que
// a *direcao1* chegue na *direcao2*.
pub fn qnt_graus_horario(direcao1: Direcao, direcao2: Direcao) -> Int {
  case direcao1 == direcao2 {
    True -> 0
    False ->
      case direcao_90_graus_horario(direcao1) == direcao2 {
        True -> 90
        False ->
          case direcao_oposta(direcao1) == direcao2 {
            True -> 180
            False -> 270
          }
      }
  }
}

pub fn qnt_graus_horario_examples() {
  check.eq(qnt_graus_horario(Norte, Norte), 0)
  check.eq(qnt_graus_horario(Sul, Sul), 0)
  check.eq(qnt_graus_horario(Leste, Leste), 0)
  check.eq(qnt_graus_horario(Oeste, Oeste), 0)

  check.eq(qnt_graus_horario(Norte, Leste), 90)
  check.eq(qnt_graus_horario(Leste, Sul), 90)
  check.eq(qnt_graus_horario(Sul, Oeste), 90)
  check.eq(qnt_graus_horario(Oeste, Norte), 90)

  check.eq(qnt_graus_horario(Norte, Sul), 180)
  check.eq(qnt_graus_horario(Sul, Norte), 180)
  check.eq(qnt_graus_horario(Leste, Oeste), 180)
  check.eq(qnt_graus_horario(Oeste, Leste), 180)

  check.eq(qnt_graus_horario(Norte, Oeste), 270)
  check.eq(qnt_graus_horario(Oeste, Sul), 270)
  check.eq(qnt_graus_horario(Sul, Leste), 270)
  check.eq(qnt_graus_horario(Leste, Norte), 270)
}

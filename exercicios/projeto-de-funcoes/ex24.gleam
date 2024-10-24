// Calcular o imposto que um cidadão deve pagar de acordo com sua renda.
// - Cidadãos que recebem até 1000 dinheiros pagam 5% de imposto.
// - Cidadãos que recebem entre 1000 e 5000 dinheiros pagam 5% de imposto
// sobre 1000 dinheiros e 10% sobre o que passar de 1000.
// - Cidadãos que recebem mais do 5000 dinheiros pagam 5% de imposto sobre 
// 1000 dinheiros, 10% de imposto sobre 4000 dinheiros e 20% sobre o que passar de 5000
import sgleam/check

/// Calcula o imposto que uma pessoa deve pagar dado sua *renda*.
/// - até 1000 dinheiros é pago 5% de imposto sobre esse valor;
/// - passado de 1000 até 5000 é pago 10% de imposto sobre a quantidade passada;
/// - passado de 5000 é pago 20% de imposto sobre a quantidade passada.
/// Requer que a renda não seja um valor negativo.
pub fn calcula_imposto(renda: Float) -> Float {
  case renda <. 0.0 {
    True -> 0.0
    False ->
    case renda <=. 1000.0 {
        True -> renda *. 5.0 /. 100.0
        False ->
        case renda <=. 5000.0 {
        True -> {renda -. 1000.0} *. 10.0 /. 100.0 +. 50.0
        False -> {renda -. 5000.0} *. 20.0 /. 100.0 +. 450.0
        }
    }
  }
}

pub fn calcula_imposto_examples() {
    check.eq(calcula_imposto(-10.0), 0.0)
    check.eq(calcula_imposto(0.0), 0.0)
    check.eq(calcula_imposto(100.0), 5.0)
    check.eq(calcula_imposto(1500.0), 100.0)
    check.eq(calcula_imposto(5600.0), 570.0)   
}

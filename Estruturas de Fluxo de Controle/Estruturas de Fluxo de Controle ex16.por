programa {
  funcao inicio() {
    real salarioAnual

    escreva ("Digite o salário anual: R$")
    leia(salarioAnual)

    se (salarioAnual <= 24511.92 e salarioAnual >=0){
      escreva("Está isento de imposto de renda")
    }
    senao se (salarioAnual > 24511.92  e salarioAnual <= 33919.80){
      escreva("O imposto de renda é de R$", salarioAnual * 0.075)
    }
    senao se (salarioAnual >= 33919.81 e salarioAnual <= 45012.60){
      escreva("O imposto de renda é de R$", salarioAnual * 0.15)
    }
    senao se (salarioAnual >= 45012.61 e salarioAnual <= 55976.16){
      escreva("O imposto de renda é de R$", salarioAnual * 0.225)
    }
    senao se (salarioAnual > 55976.16 ){
      escreva ("O imposto de renda é de R$", salarioAnual * 0.275)
    }
    senao {escreva ("Digite um valor válido")}
  }
}

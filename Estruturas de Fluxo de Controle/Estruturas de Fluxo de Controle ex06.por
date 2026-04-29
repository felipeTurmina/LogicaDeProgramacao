programa {
  funcao inicio() {
  real salario
  real antigoSalario
  
    escreva ("Digite o salário do fúncionario: R$ ")
    leia (salario)
  antigoSalario = salario

    se (salario < 1500 e salario > 0){
      escreva("O novo salário do fúncionario é de R$", salario * 1.20, "\n")
    }

    senao se (salario >=1500 e salario <= 3000){
      escreva ("O novo salário do fúncionario é de R$", salario * 1.1, "\n")
    }

    senao {
      escreva ("O novo salário do fúncionario é de R$", salario * 1.05, "\n")
    }
      escreva("O salário original é de R$", antigoSalario)
  }
}

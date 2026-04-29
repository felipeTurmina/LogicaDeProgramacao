programa {
  funcao inicio() {
  inteiro numero

    escreva (" Digite um número inteiro para verificar se é divisivel por 3, por 5 ou por ambos: ")
    leia(numero)

    se (numero % 3 == 0 e numero % 5 == 0){
      escreva ("O número é divisivel por 3 e 5")
    }
    senao se (numero % 3 == 0){
      escreva ("O número é divisivel apenas por 3")
    }
    senao se (numero % 5 == 0){
      escreva ("O número é divisivel apenas por 5")
    }
    senao {escreva("O número não é divisivel nem por 3 nem por 5")}
  }
}

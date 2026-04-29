programa {
  funcao inicio() {
    inteiro digitado
    inteiro  aux = 0
    

    enquanto(digitado != -1){
      escreva("Digite um número (-1 para parar): ")
      leia(digitado)

      se(digitado > aux){
        aux = digitado
      }
    }
    escreva("Maior número: ", aux)

  }
}

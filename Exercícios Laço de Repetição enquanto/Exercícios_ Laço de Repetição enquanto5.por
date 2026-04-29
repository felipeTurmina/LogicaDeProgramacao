programa {
  funcao inicio() {
  inteiro numero
  inteiro contador = 0


  enquanto(numero != 14){
    escreva("Tente adivinhar o número secreto( 1 a 30): ")
    leia(numero)

    contador = contador +1

    se(numero < 0 ou numero > 30){
      escreva("O número é entre 1 e 30\n")
      
    }
    senao se (numero >19){
      escreva("Muito alto!\n")
    }
    senao se(numero > 10 ou numero < 19){
    escreva("Quase!\n")
    }
    senao se(numero <10){
      escreva("Muito baixo!\n")
    }
  }
  limpa()
  escreva("Parabéns você acertou em ", contador, "\n")
  }
}

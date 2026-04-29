programa {
  funcao inicio() {
  inteiro nota

    escreva ("Digite a nota do aluno para saber o conceito: ")
    leia (nota)

    se (nota >=90 e nota <= 100){
      escreva("Conceito A")
    }
    senao se (nota >=75 e nota <= 89){
      escreva("Conceito B")
    }
    senao se (nota >=60 e nota <= 74){
      escreva("Conceito C")
    }
    senao se (nota >=50 e nota <= 59){
      escreva("Conceito D")
    }
    senao se (nota >=0e nota <= 49){
      escreva("Conceito F")
    }
    senao {escreva("Nota inválida")}
  }
}

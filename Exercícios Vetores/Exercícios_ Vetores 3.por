programa {
  funcao inicio() {
    inteiro notas [6]
    inteiro aprovado = 0
    inteiro reprovado = 0


    para(inteiro i = 0; i < 6; i++){
      escreva("Digite a ", i+1,"ª nota: ")
      leia(notas[i])
      se(notas[i] >=6){
      aprovado = aprovado +1
    }
    senao{
      reprovado = reprovado + 1
    }
    }
    escreva("Alunos aprovados: ",aprovado,"\n")
    escreva("Alunos reprovados: ",reprovado,"\n")
    
  }
}

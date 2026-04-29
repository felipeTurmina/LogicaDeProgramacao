programa {
  funcao inicio() {

    real notas[4]

    para( inteiro i = 0; i < 4;i++){
      escreva("Digite a nota do ", i+1,"º aluno: ")
      leia(notas[i])
    }
    limpa()
    para(inteiro i = 0; i <4; i++){
      escreva("Aluno ", i+1, ": nota ", notas[i]," --> ", classificarNota(notas[i]),"\n")
    }
    
  }

  funcao cadeia classificarNota(real nota){
    se (nota >= 6.0){
      retorne "Aprovado"
    }
    se(nota >= 4.0 e nota < 6.0){
      retorne "Recuperacao"
    }
    senao{
      retorne "Reprovado"
    }
  }
}

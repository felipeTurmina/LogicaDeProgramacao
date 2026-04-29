programa {
  funcao inicio() {
    
    cadeia nota

     
    escreva("Digite a faixa da nota (A,B,C,D,F): ")
    leia (nota)

    escolha (nota){
      caso "A": escreva ("Pontuação entre 80 a 100, aprovado!")
      pare
      caso "B": escreva ("Pontuação entre 60 a 79, aprovado!")
      pare
      caso "C": escreva ("Pontuação entre 40 a 59, reprovado!")
      pare
      caso "D": escreva ("Pontuação entre 20 a 49, reprovado!")
      pare
      caso "f": escreva ("Pontuação entre 0 a 19, reprovado!")
      pare
      caso contrario: escreva ("Digite uma faixa válida")
    }
    
  }
}

programa {
  funcao inicio() {
    inteiro numero[5]

    para(inteiro i = 0; i < 5; i++){
      escreva("Digite o ", i+1,"º número \n")
      leia(numero[i])
    }
    para(inteiro j = 0; j <5; j++){
      se (ePar(numero[j])) {
        escreva(numero[j]," --> é par \n")
    }
    se (nao ePar(numero[j])) {
        escreva(numero[j]," --> ímpar\n")
    }
    }    
  }
  funcao logico ePar(inteiro numero){
    retorne(numero % 2 == 0)
  }
}


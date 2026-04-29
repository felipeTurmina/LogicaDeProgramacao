programa {
  funcao inicio() {

    inteiro numero[5]
    inteiro temp
    


    para(inteiro i = 0; i < 5; i++){
      escreva("Digite o ",i+1,"º número: ")
      leia(numero[i])
    }
    para(inteiro i = 0; i < 5; i++){
      para(inteiro j = 0; j < 4; j++){
        se(numero[j] < numero[j+1]){
          temp = numero[j]
          numero[j] = numero[j+1]
          numero[j+1] = temp
        }
      }
    }
    escreva("Ordem decrescente:\n")
    para(inteiro i = 0; i < 5; i++){
      escreva(numero[i]," -> (Posição Nº",i + 1,")\n")
    }
  }
}

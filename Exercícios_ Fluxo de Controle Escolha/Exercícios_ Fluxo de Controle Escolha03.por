programa {
  funcao inicio() {
    inteiro codigo

    escreva("Digite o código: \n Código 1: Alimentos não perecíveis\n Código 2, 3 ou 4: Alimentos perecíveis\n Código 5 ou 6: Vestuário\n Código 7: Higiene Pessoal\n Código 8 até 15: Limpeza e Utensílios Domésticos\n Qualquer outro: Código inválido\n")
    leia (codigo)

    se(codigo ==1){
      escreva("Alimentos não perecíveis")
    }
    senao se (codigo >=2 e codigo <=4){
      escreva("Alimentos perecíveis")
    }
    senao se (codigo >=5 e codigo <=6){
      escreva("Vestuário")
    }
    senao se (codigo ==7){
      escreva("Higiene Pessoal")
    }
    senao se (codigo >= 8 e codigo <= 15){
      escreva("Limpeza e Utensílios Domésticos")
    }
    senao{escreva("Código inválido")}
  }
}

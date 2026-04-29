programa {
  funcao inicio() {
    inteiro codigo

    escreva("Digite o código: \n Código 1: Alimentos não perecíveis\n Código 2, 3 ou 4: Alimentos perecíveis\n Código 5 ou 6: Vestuário\n Código 7: Higiene Pessoal\n Código 8 até 15: Limpeza e Utensílios Domésticos\n Qualquer outro: Código inválido\n")
    leia (codigo)
    limpa()

    escolha (codigo){
      caso 1: 
        escreva("Alimentos não perecíveis")
        pare
      caso 2:
      caso 3:
      caso 4:
        escreva("Alimentos perecíveis")
        pare
      caso 5:
      caso 6:
        escreva("Vestuário")
        pare
      caso 7:
        escreva("Higiene Pessoal")
        pare
      caso 8:
      caso 9:
      caso 10:
      caso 11:
      caso 12:
      caso 13:
      caso 14:
      caso 15:
        escreva ("Limpeza e Utensílios Domésticos")
        pare
      caso contrario: escreva ("Código inválido")
    }
  }
}

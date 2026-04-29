programa {
  funcao inicio() {
    inteiro notas [6]
    inteiro soma = 0


    para(inteiro i = 0; i < 6; i++){
      escreva("Digite a ", i+1,"ª nota: ")
      leia(notas[i])
      soma = soma + notas[i]
    }

    escreva("A soma das notas é de: ", soma, "\n")
    escreva("A média das notas é de: ", soma / 6, "\n")
    
  }
}

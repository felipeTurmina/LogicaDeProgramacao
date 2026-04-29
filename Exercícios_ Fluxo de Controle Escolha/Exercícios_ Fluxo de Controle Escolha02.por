programa {
  funcao inicio() {
    real pesoTerra
    inteiro planetaEscolha


    escreva("Digite seu peso em kg: ")
    leia(pesoTerra)
    escreva("Escolha um planeta: \n 1 --> Mercúrio\n 2 --> Vênus\n 3 --> Marte\n 4 --> Júpiter\n 5 --> Saturno \n")
    leia (planetaEscolha)

    escolha(planetaEscolha){
      caso 1:
      escreva("Seu peso em Mercúrio seria de ",pesoTerra * 0.37,"kg")
      pare
      caso 2:
      escreva("Seu peso em Vênus seria de ",pesoTerra * 0.88,"kg")
      pare
      caso 3:
      escreva("Seu peso em Marte seria de ",pesoTerra * 038,"kg")
      pare
      caso 4:
      escreva("Seu peso em Júpiter seria de ",pesoTerra * 2.64,"kg")
      pare
      caso 5:
      escreva("Seu peso em Saturno seria de ",pesoTerra * 1.15,"kg")
      pare
      caso contrario: escreva("Digite uma opção válida")
    }
  }
}

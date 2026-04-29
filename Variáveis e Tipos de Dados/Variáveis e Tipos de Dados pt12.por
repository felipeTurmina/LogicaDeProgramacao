programa {
  funcao inicio() {
    real largura
    real comprimento
    real area
    real perimetro


    escreva ("Digite a largura: ")
    leia (largura)

    escreva ("Digite o comprimento: ")
    leia (comprimento)

    area = largura * comprimento
    perimetro = 2* area

    escreva ("A área é de ", area , " e o perimetro é de ", perimetro)
  }
}

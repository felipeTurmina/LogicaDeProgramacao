programa {
  funcao inicio() {
    real numero1
    real numero2
    real numero3
    real temp
   
    escreva ("Digite o primeiro número: ")
    leia (numero1)
    escreva("Digite o segundo número: ")
    leia(numero2)
    escreva("Digite o teceiro número: ")
    leia (numero3)

    se (numero1 > numero2){
      temp = numero1
      numero1 = numero2
      numero2 = temp
    }
    se (numero1 > numero3){
      temp = numero1
      numero1 = numero3
      numero3 = temp
    }
    se (numero2 > numero3){
      temp = numero2
      numero2 = numero3
      numero3 = temp
    }
    escreva (numero1, " ", numero2," ", numero3)

  }
}

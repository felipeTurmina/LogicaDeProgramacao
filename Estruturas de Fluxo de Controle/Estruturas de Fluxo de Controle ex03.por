programa {
  funcao inicio() {
  real numero1
  real numero2

  escreva ("Digite o primeiro número real: ")
  leia (numero1)
  escreva ("Digite o segundo número real: ")
  leia (numero2)

  se (numero1 > numero2){
    escreva(numero1)
  }senao se (numero1 < numero2){
    escreva (numero2)
  }senao{
    escreva("Números iguais")
  }
  }
}

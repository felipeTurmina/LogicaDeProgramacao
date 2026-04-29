programa {
  funcao inicio() {
  inteiro numero = 1
  inteiro aux = 0

    enquanto(numero > 0){

      escreva("Digite um número (0 para parar):")
      leia(numero)

      aux = numero + aux

      se(numero == 0){
        escreva("Soma total: ", aux)
      }
    }
  }
}

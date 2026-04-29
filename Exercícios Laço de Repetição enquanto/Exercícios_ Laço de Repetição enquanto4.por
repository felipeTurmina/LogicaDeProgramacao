programa {
  funcao inicio() {
  inteiro numero = 0
  inteiro positivo = 0
  inteiro negativo = 0

    enquanto(numero >= 0 ou numero < 0){

      escreva("Digite um número (0 para parar):")
      leia(numero)

      se(numero > 0){
        positivo = positivo +1
      }
      senao se(numero <0){
        negativo = negativo + 1
      }
      senao{
        limpa()
        escreva("Positivos: ", positivo,"\n", "Negativos: ", negativo,"\n") 
      }
    }
  }
}

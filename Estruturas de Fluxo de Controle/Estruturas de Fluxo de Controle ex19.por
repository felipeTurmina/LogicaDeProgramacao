programa {
  funcao inicio() {
    real numero1
    real numero2
    real aux
    inteiro opcao

    
    escreva("1 - Somar\n")
    escreva("2 - Subtrair\n")
    escreva("3 - Multiplicar\n")
    escreva("4 - Dividir\n")
    escreva("Digite a opcao para realizar o cáculo: \n\n")
    leia (opcao)
      se(opcao <1 ou opcao > 4){
        inicio(escreva("Digite um número válido! \n\n")) 
      }senao{

        escreva ("Digite o primeiro número: ")
        leia (numero1)
        escreva ("Digite o segundo número: ")
        leia (numero2)

        limpa ()

        escolha(opcao){

          caso 1: escreva(numero1 + numero2)
          pare
          caso 2: escreva(numero1 - numero2)
          pare
          caso 3: escreva(numero1 * numero2)
          pare
          caso 4: se(numero1 == 0 ou numero2 == 0){
                  escreva("O valor de um dos divisores é 0")
                }
                senao (escreva(numero1 / numero2))

        }

      }
  }
}

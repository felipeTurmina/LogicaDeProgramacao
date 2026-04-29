programa {
  funcao inicio() {
    
    inteiro inicio
    inteiro final

    escreva("Digite um número para iniciar a contagem: ")
    leia (inicio)

    escreva("Digite um número para limitar o final da contagem: ")
    leia (final)

    se(inicio > final){
      escreva("O número para inciar a contagem é maior que o numero do fim")
      inicio()
    }
    senao{

      enquanto(inicio <= final){
        escreva(inicio, "\n")
        inicio = inicio + 1
      }
    }
  }
}

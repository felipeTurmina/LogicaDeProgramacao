programa {
  funcao inicio() {

    inteiro numero

    escreva("Digite um número maior que 1 para iniciar a contagem regressiva: ")
    leia (numero)

    se(numero > 1){
      para(inteiro i = numero; i >=1; i--){
        escreva(i,"\n")
      }
        escreva("Lançamento!")
    }
    senao{escreva("Digite um número maior que 1")
    }
    
    }
    
  }
}

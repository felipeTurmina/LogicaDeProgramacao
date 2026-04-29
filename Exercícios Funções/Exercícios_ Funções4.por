programa {
  funcao inicio() {

    inteiro a
    inteiro b
    inteiro c
    
    escreva("Digite o número 1: \n")
    leia(a)
    escreva("Digite o número 2: \n")
    leia(b)
    escreva("Digite o número 3: \n")
    leia(c)

    limpa()

    escreva("O maior dos 3 números é: ", maior(maior(a,b),c),"\n")
    escreva("O menor dos 3 números é: ", menor(menor(a,b),c),"\n")
  }

  funcao inteiro maior(inteiro a, inteiro b){
    se( a > b){
      retorne a
    }senao{
      retorne b
    }
  }
  funcao inteiro menor(inteiro a, inteiro b){
    se(a < b){
      retorne a
    }senao{
      retorne b
    }
  }
}

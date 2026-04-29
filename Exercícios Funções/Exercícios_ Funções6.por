programa {
  funcao inicio() {
    inteiro numero

    escreva("Digite um número para saber seu fatorial: ")
    leia(numero)
    limpa()

    escreva("O fatorial do número ", numero, " é de ", fatorial(numero))
    
  }

  funcao inteiro fatorial(inteiro numero){
    inteiro resultado = 1

    para(inteiro i = numero; i > 1; i--){

     resultado = resultado * i
    }
    retorne resultado
    
  }
}



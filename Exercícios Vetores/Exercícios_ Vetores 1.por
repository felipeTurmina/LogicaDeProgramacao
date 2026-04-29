programa {
  funcao inicio() {

    inteiro numeros[5]

    para (inteiro i = 0; i < 5; i++){
      escreva("Digite o número ", i +1,": ")
      leia(numeros[i])
    }

    para( inteiro i = 0; i < 5; i++){

      escreva("O ",i+1,"º número digitado é,  ", numeros[i], "\n" )
    }
  }
}

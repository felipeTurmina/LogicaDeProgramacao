programa {
  funcao inicio() {

    inteiro numeros[4]

    para(inteiro i = 0; i <4; i++){
      escreva("Digite o ", i+1,"º número: \n")
      leia(numeros[i])
    }

    para(inteiro i = 3; i >=0; i--){
      escreva("\n O ",i +1,"º número é ",numeros[i],"\n")
    }
    
  }
}

programa {
  funcao inicio() {
    inteiro limite
    real soma = 0
  

    escreva("Digite o número de limite para somar os numeros impares no intervalo de 1 até o número digitado:  ")
    leia(limite)
  

    para(inteiro i = 1; i <= limite; i +=2){
      soma = soma + i
      
    }
      escreva("A soma dos ímpares é de: ", soma)
    }
  }


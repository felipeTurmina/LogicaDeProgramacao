programa {
  funcao inicio() {
    real reais
    real conversor


    escreva ("Digite o valor em reais a ser convertido: R$")
    leia(reais)

    escreva("Digite a moeda que vocÊ deseja converter: \n 1--> Dólar (USD) \n 2--> Euro (EUR) \n 3--> Libra (GBP) \n 4--> Iene (JPY) \n")
    leia(conversor)


    escolha(conversor){
      caso 1:
      escreva("O valor convertido em Dólar (USD) é de $",reais * 5.23)
      pare
      caso 2:
      escreva("O valor convertido em Euro (EUR) é de €",reais * 6.02)
      pare
      caso 3:
      escreva("O valor convertido em Libra (GBP) é de £",reais * 6.96)
      pare
      caso 4:
      escreva("O valor convertido em Iene (JPY) é de ¥",reais * 0.033)
      pare
      caso contrario: escreva("Digite uma opção de conversor válida")
    }
      
  }
}

programa {
  funcao inicio() {
   

   inteiro parcelas
   real valorParcelado
   
  escreva ("Digite a quantidade de parcelas: ")
  leia (parcelas)

  escreva ("Digite o valor que foi parcelado em R$ ")
  leia (valorParcelado)

  escreva ("O valor das parcelas mensais sem juros é de R$ ", valorParcelado / parcelas, "\n")
  escreva ("O valor total com juros é de R$ ", valorParcelado * (1 + 0.02 * parcelas),"\n")
  escreva ("O valor de cada parcela com juros é de R$ ", valorParcelado * (1+0.02 * parcelas) / parcelas)



  }
}

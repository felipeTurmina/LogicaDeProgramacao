programa {
  funcao inicio() {
    real valorGasto
    inteiro clientePremium
    logico  premium
    

    escreva ("Digite o valot gasto pelo cliente em R$ ")
    leia(valorGasto)
    escreva("O cliente é premium?\n Sim\n Não\n")
    leia(premium)

    limpa ()

    se(premium == verdadeiro){
      clientePremium = 5
    } senao {
      premium == falso
      clientePremium = 0
    }
        

    se(valorGasto < 100){
      escreva("O Valor de ", valorGasto, " não tem desconto")
    }
    senao se(valorGasto >=100 e valorGasto<=499){
      escreva("O desconto é de ", clientePremium + 5,"%, o valor final é de R$", valorGasto- (valorGasto * (5 + clientePremium)/100))
    }
    senao se (valorGasto >= 500 e valorGasto <= 999){
      escreva("O desconto é de ",clientePremium +10,"%, o valor final é de R$", valorGasto- (valorGasto * (10 + clientePremium)/100))
    }
    senao{
      escreva("O desconto é de",clientePremium + 15,"%, o valor final é de R$", valorGasto- (valorGasto * (15 + clientePremium)/100))
    }
    
  }
}

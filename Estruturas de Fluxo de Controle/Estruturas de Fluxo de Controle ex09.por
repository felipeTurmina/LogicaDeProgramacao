programa {
  funcao inicio() {
    real preco


    escreva ("Digite o valor do produto: R$")
    leia (preco)

    se (preco >= 100){
      escreva ("O valor do produto com desconto é de ", preco - (preco * 0.015)) 
    }senao{
      escreva ("O valor do produto é de R$", preco," nao é aplicado o desconto")
    }
    
  }
}

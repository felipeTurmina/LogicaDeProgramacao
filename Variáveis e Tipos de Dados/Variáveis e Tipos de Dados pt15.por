programa {
  funcao inicio() {
    real preco
    real percentual
    real desconto

    escreva ("Digite o valor do produto em R$:")
    leia (preco)

    escreva ("Digite a porcentagem de desconto:")
    leia (percentual)

    desconto = preco * (percentual / 100.0)
    
    escreva ("O valor de desconto é de R$",desconto," o preço final é de R$", preco - desconto)
  }
}

programa {
  funcao inicio() {
    inteiro opcao
    inteiro quantidade

    escreva("Escolha o item do pedido: \n 100: Cachorro Quente un- R$ 12,00\n 101: Bauru Simples un- R$ 13,00\n 102: Bauru com Ovo un- R$ 15,00\n 103: Hambúrguer un- R$ 12,00\n 104: Cheeseburguer un - R$ 17,00\n 105: Refrigerante un - R$ 5,00\n")
    leia (opcao)
    escreva("Digite a quantidade de itens do pedido: ")
    leia(quantidade)

    escolha(opcao){
      caso 100:
        escreva("O valor do(s) cachorro(s) quente(s) é de R$ ",quantidade* 12)
        pare
      caso 101:
        escreva("O valor do(s) bauru(s) simples é de R$ ",quantidade* 13)
        pare
      caso 102:
        escreva("O valor do(s) bauru(s) com ovo é de R$ ",quantidade* 15)
        pare
      caso 103:
        escreva("O valor do(s) Hambúrguer(es) é de R$ ",quantidade* 12)
        pare
      caso 104:
        escreva("O valor do(s) Cheeseburguer(es) é de R$ ",quantidade* 17)
        pare
      caso 105:
        escreva("O valor do(s) refrigerantes(s) é de R$ ",quantidade* 5)
        pare
      caso contrario: escreva("Digite um código válido para o item do pedido")
    }

  }
}

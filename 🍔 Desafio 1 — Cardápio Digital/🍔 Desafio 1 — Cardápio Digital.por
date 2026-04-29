programa {
  funcao inicio() {
    inteiro opcao
    real lanche
    real quantidade
    logico confirma

    escreva("Bem-vindo à Lanchonete do CESURG! 🍔\nDigite o numero do pedido desejado\n")
    escreva("(1)🍔 X-Burguer........R$ 18,00\n(2)🍔 X-Frango.........R$ 16,00\n(3)🍟 Batata Frita.....R$ 12,00\n(4)🥫 Refrigerante......R$ 7,00\n(5)🧃 Suco Natural......R$ 9,00\n")// cardapio
    leia(opcao)
    limpa()

    escolha(opcao){
      caso 1:
      lanche = 18.00
      escreva("Quantos X-Burguers você gostaria?\n")
      leia(quantidade)

      se (quantidade >= 1){
      escreva("A sua conta fica:\nR$",quantidade*lanche, "\nConfirma a compra?\n")
      leia(confirma)
        limpa()   
        se(confirma){
          escreva("Ok Obrigo pela sua compra, a sua conta fica:\nR$",quantidade*lanche )
        }
        senao{
          inicio()
        }
      }

      senao{
        escreva("Numero invalido")
      }
      pare
      caso 2:
      lanche = 16.00
      escreva("Quantos X-Frango você gostaria?\n")
      leia(quantidade)

      se (quantidade >= 1){
      escreva("A sua conta fica:\nR$",quantidade*lanche, "\nConfirma a compra?\n")
      leia(confirma)
        limpa()   
        se(confirma){
          escreva("Ok Obrigo pela sua compra, a sua conta fica:\nR$",quantidade*lanche )
        }
        senao{
          inicio()
        }

      }
      senao{
        escreva("Numero invalido")
      }
      pare

      caso 3:
      lanche = 12.00
      escreva("Quantas Batata Frita você gostaria?\n")
      leia(quantidade)

      se (quantidade >= 1){
      escreva("A sua conta fica:\nR$",quantidade*lanche, "\nConfirma a compra?\n")
      leia(confirma)
      limpa()     
        se(confirma){
          escreva("Ok Obrigo pela sua compra, a sua conta fica:\nR$",quantidade*lanche )
        }
        senao{
          inicio()
        }
      }

      senao{
        escreva("Numero invalido")
      }
      pare

      caso 4:
      lanche = 7.00
      escreva("Quantos refrigerantes você gostaria?\n")
      leia(quantidade)

      se (quantidade >= 1){
      escreva("A sua conta fica:\nR$",quantidade*lanche, "\nConfirma a compra?\n")
      leia(confirma)
      limpa()     
        se(confirma){
          escreva("Ok Obrigo pela sua compra, a sua conta fica:\nR$",quantidade*lanche )
        }
        senao{
          inicio()
        }
      }

      senao{
        escreva("Numero invalido")
      }
      pare

      caso 5:
      lanche = 9.00
      escreva("Quantos sucos naturais você gostaria?\n")
      leia(quantidade)

      se (quantidade >= 1){
      escreva("A sua conta fica:\nR$",quantidade*lanche, "\nConfirma a compra?\n")
      leia(confirma)
      limpa()     
        se(confirma){
          escreva("Ok Obrigo pela sua compra, a sua conta fica:\nR$",quantidade*lanche )
        }
        senao{
          inicio()
        }
      }

      senao{
        escreva("Numero invalido")
      }
      pare

      caso contrario:
      escreva("Ops... numero invalido\n")
      inicio()
    
    }
    }
      
    }

  }
}

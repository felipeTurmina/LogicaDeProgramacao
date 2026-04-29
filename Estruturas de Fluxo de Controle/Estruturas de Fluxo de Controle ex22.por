programa {
  funcao inicio() {

    inteiro anoDeNascimento
    inteiro anoAtual
    inteiro idade


    escreva("Escreva o ano que você nasceu: ")
    leia(anoDeNascimento)
    escreva("Escreva o ano atual: ")
    leia (anoAtual)

    limpa ()

    idade = anoAtual - anoDeNascimento

    se(idade <16){
      escreva("Você tem ", idade , " anos, não pode votar!")
    }
    senao se (idade >=16 e idade<= 17){
      escreva("Você tem ", idade, " anos, você pode votar, mas não é obrigatorio!")
    }
    senao se (idade >= 18 e idade<=70){
      escreva("Você tem ", idade , " anos, você é obrigado a votar!")
    }
    senao{escreva("Você tem  ", idade, " anos, não é obrigatorio o voto!")
    }

    

  }
}

programa {
  funcao inicio() {
    inteiro golsA
    inteiro golsB
    inteiro rodada = 1
    inteiro pontos = 0

    escreva("Campeonato Gaúcho começa\n")
    
    
    para(rodada;rodada<=5;rodada++){
    escreva("\n", rodada, "° Jogo começou\n")

    escreva("\nQuantos gols seu time fez: ")
    leia(golsA)

    escreva("\nQuantos gols o time adversario fez: ")
    leia(golsB)

    limpa()

    se(golsA > golsB){
      pontos = pontos + 3
      escreva("\nVitoria - Seu time ganhou +3 pontos\n")
    }
    senao se(golsA == golsB){
      pontos = pontos + 1
      escreva("\nEmpate - Seu time ganhou +1 ponto\n")
    }
    senao{
      pontos = pontos + 0
      escreva("\nDerrota - Seu time não ganhou nenhum ponto\n")

    }
    }
    escreva("\nTotal de pontos: ",pontos," em 5 rodadas\n")
    se(pontos >= 12){
      escreva("\n🏆 CAMPEÃO! Parabéns, vocês conquistaram o título!\n")

    }
    senao se(pontos >= 7){
      escreva("\n🎯 Zona de Playoff! Lutem pela vaga!")
    }
    senao{
      escreva("\n⬇ Rebaixamento. Preparem-se para a próxima temporada.")
      }

  }
}
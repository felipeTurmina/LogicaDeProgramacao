programa {
/*
 * ================================================================
 *  SINAL PERDIDO — Trabalho Final
 * ================================================================
 *  Aluno: Felipe Turmina
 *  Turma: TI 2.26K
 *  Data de entrega: 24/06/2026
 */

  inclua biblioteca Util --> util

  inteiro pontuacao = 0
  inteiro puzzlesResolvidos = 0
  inteiro batalhasVencidas = 0
  inteiro cidadesDesbloqueadas = 0


  inteiro statusCidade[4]

  inteiro indiceZonaToxica = 2

  inteiro acoesPuzzleCidade = 0
  inteiro hacksParaViajar = 2

  cadeia nomeItens[] = {"Kit-Médico","Carregador de Bateria","Máscara de gás"}
  inteiro qtdItens[3]
  inteiro usoMascara = 0

  funcao inicio() {

    cadeia nomeCidades [] = {"Surface", "Deep", "Dark", "LAN"}
    inteiro cidadeAtual = 0
    inteiro totalCidades = 4

    cadeia nomePlayer

    inteiro vidaAtual = 100
    inteiro bateriaAtual = 100

    logico venceu = falso
    logico morreu = falso
    cadeia opcaoMenu = "1"

    pontuacao = 0
    puzzlesResolvidos = 0
    batalhasVencidas = 0
    cidadesDesbloqueadas = 0
    acoesPuzzleCidade = 0

    qtdItens[0] = 1
    qtdItens[1] = 0
    qtdItens[2] = 0
    usoMascara = 0


    statusCidade[0] = 2
    statusCidade[1] = 1
    statusCidade[2] = 0
    statusCidade[3] = 0

    telaDeInicio()
    escreva("                 [ Pressione ENTER para iniciar ]\n")
    cadeia pause
    leia(pause)

    escreva("Insira o nome do personagem: ")
    leia(nomePlayer)
    limpa()

    telaDeInicio()
    loading()
    limpa()


enquanto(opcaoMenu != "0" e venceu == falso e morreu == falso){

      limpa()

      cidadeToxica(vidaAtual, cidadeAtual)


      se(vidaAtual <= 0){
        morreu = verdadeiro
      }

      se(morreu == falso){

        statusPlayer(nomePlayer, vidaAtual, bateriaAtual, nomeCidades[cidadeAtual])
        separadorTopo()
        escreva("║          AÇÕES DISPONIVEIS           ║\n")
        separadorMeio()
        escreva("║  [1] 📡Hackear dispositivos (-20 🪫)║\n")
        escreva("║  [2] 🚶 Andar pela cidade            ║\n")
        escreva("║  [3] 💬 Abordar pessoas na rua       ║\n")
        escreva("║  [4] 🗺️ Mapa / viajar entre cidades  ║\n")
        escreva("║  [5] 🛏️ Descansar                    ║\n")
        escreva("║  [6] 🎒 Acessar inventario           ║\n")
        escreva("║  [0] ❌ Finalizar o jogo             ║\n")
        separadorBase()
        escreva("\n  ▶ Escolha sua ação: \n")
        leia(opcaoMenu)
        limpa()


        se(opcaoMenu == "1"){
          se(bateriaAtual >= 20){
            bateriaAtual = bateriaAtual - 20
            hackear(vidaAtual, bateriaAtual)
          }
          senao{
            escreva("\n  🔋 Bateria insuficiente para hackear (-20).\n")
            util.aguarde(3000)
          }
        }
          senao se(opcaoMenu == "2"){
            explorarCidade(vidaAtual, bateriaAtual)
          }
          senao se(opcaoMenu == "3"){
            abordarPessoas(vidaAtual, bateriaAtual)
          }
          senao se(opcaoMenu == "4"){
            menuCidades(cidadeAtual, nomeCidades, totalCidades, venceu, vidaAtual, bateriaAtual)
          }
          senao se(opcaoMenu == "5"){
            descanso(vidaAtual, bateriaAtual)
          }
          senao se(opcaoMenu == "6"){
            mostrarInventario(vidaAtual, bateriaAtual)
          }
          senao se(opcaoMenu == "0"){
          }
          senao{
            escreva("\n  ⚠️ Opção invalida! Digite um numero de 0 a 6.\n")
            util.aguarde(3000)
          }
          se(vidaAtual <= 0){
            morreu = verdadeiro
          }
      }
    }
    se(morreu == verdadeiro){
      gameOver()
    }
    senao se(venceu == verdadeiro){
      telaVitoria(nomePlayer)
    }
    senao{
      limpa()
      escreva("\n  Voce desligou o terminal. O sinal permanece perdido...\n")
      util.aguarde(2000)
    }
}
funcao cidadeToxica(inteiro &vida, inteiro cidadeAtual){
    cadeia opcaoCidade = ""
      se(cidadeAtual == indiceZonaToxica){

      se(usoMascara > 0){
        usoMascara = usoMascara - 1
        escreva("\n  🤿 Mascara ativa: o ar toxico nao te afeta (", usoMascara, " uso(s) restante(s)).\n")
        util.aguarde(2000)
      }
      senao se(qtdItens[2] > 0){
        enquanto(opcaoCidade != "1" e opcaoCidade != "2"){
          separadorTopo()
          escreva("║        ☣️  ZONA TOXICA  ☣️            ║\n")
          separadorMeio()
          escreva("  O ar corroe seus pulmoes a cada segundo.\n")
          escreva("  Voce tem ", qtdItens[2], " máscara(s) de gas.\n")
          separadorMeio()
          escreva("  [1] Usar máscara agora (3 usos )\n")
          escreva("  [2] Arriscar sem máscara (-15 ❤️ por turno)\n")
          separadorBase()
          leia(opcaoCidade)

          se(opcaoCidade == "1"){
            qtdItens[2] = qtdItens[2] - 1
            usoMascara = 3
            escreva("\n  🤿 Máscara colocada! Voce respira aliviado.\n")
            util.aguarde(3000)
          }
          senao se(opcaoCidade == "2"){
            vida = vida - 15
            escreva("\n  ☣️ Voce inala o gas toxico! -15 de vida.\n")
            util.aguarde(3000)
          }
          senao{
            escreva("\n  ⚠️ Opção invalida! Digite 1 ou 2.\n")
            util.aguarde(2000)
            limpa()
          }
        }
      }
          senao{
            vida = vida - 15
            escreva("\n  ☣️ Você inala o gas toxico! -15 de vida.\n")
            util.aguarde(3000)
          }
    }
}
funcao hackear(inteiro &vidaAtual, inteiro &bateriaAtual){
    inteiro tipo = sorteadorPuzzle()
    inteiro premio = 0
    logico resolvido = falso

    escolha(tipo){
      caso 1: resolvido = puzzleOne()   
      pare

      caso 2: resolvido = puzzleTwo()   
      pare

      caso 3: resolvido = puzzleThree() 
      pare

      caso 4: resolvido = puzzleFour()  
      pare
    }

    limpa()
    se(resolvido == verdadeiro){
      puzzlesResolvidos = puzzlesResolvidos + 1

      acoesPuzzleCidade = acoesPuzzleCidade + 1
      ganharPontos(100, "Puzzle resolvido")

      premio = util.sorteia(1, 3)
      se(premio == 1){
        qtdItens[0] = qtdItens[0] + 1
        escreva("\n  ✅ Invasão concluida! Voce achou um kit medico.\n")
      }
      senao se(premio == 2){
        qtdItens[1] = qtdItens[1] + 1
        escreva("\n  ✅ Invasão concluida! Voce achou um recarregador.\n")
      }
      senao{
        vidaAtual = vidaAtual + 15
        se(vidaAtual > 100){ vidaAtual = 100 }
        escreva("\n  ✅ Invasão concluida! Os dados te ajudam a se recuperar (+15 ❤️).\n")
      }
      util.aguarde(3000)
    }
    senao{
      escreva("\n  ⚠️ O sistema detectou a invasão.\n")
      util.aguarde(3000)
    }
}
funcao explorarCidade(inteiro &vidaAtual, inteiro &bateriaAtual){
    inteiro evento = util.sorteia(1,5)

    separadorTopo()
    escreva("║        🚶 EXPLORANDO A CIDADE        ║\n")
    separadorBase()
    util.aguarde(1000)

      escolha(evento){

        caso 1:
          escreva("\n  Voce vasculha um beco vazio. Nada por aqui.\n")
          util.aguarde(3000)
        pare
        
        caso 2:
          escreva("\n  💊 Voce encontra um kit medico !\n")
          qtdItens[0] = qtdItens[0] + 1
          util.aguarde(3000)
        pare

        caso 3:
          escreva("\n  🔋 Voce acha uma bateria!\n")
          qtdItens[1] = qtdItens[1] + 1
          util.aguarde(3000)
        pare

        caso 4:
          escreva("\n  🤿 Voce acha uma mascara de gas!\n")
          qtdItens[2] = qtdItens[2] + 1
          util.aguarde(3000)
        pare

        caso 5:
          escreva("\n  ⚠️ Um drone de seguranca te detectou!\n")
          util.aguarde(3000)
          batalha(vidaAtual, bateriaAtual)
        pare        
      }
}
funcao menuCidades(inteiro &cidadeAtual, cadeia nomeCidades[], inteiro totalCidades, logico &venceu, inteiro &vidaAtual, inteiro &bateriaAtual){
    cadeia escolhaCidade = ""
    inteiro destino = -1

    enquanto(escolhaCidade != "0" e venceu == falso e vidaAtual > 0){
      limpa()
      separadorTopo()
      escreva("║            🗺️  M A P A               ║\n")
      separadorMeio()

   
      para(inteiro i = 0; i < totalCidades; i++){
        escreva("  [", i + 1, "] ", nomeCidades[i], " ")
      
        se(i == cidadeAtual){
          escreva("📍 você esta aqui")
        }
        senao se(statusCidade[i] == 2){
          escreva("✅ liberada para viajem")
        }
        senao se(statusCidade[i] == 1){
          escreva("🔒Próxima cidade ")
        }
        senao{
          escreva("🔒 Bloqueada")
        }
        escreva("\n")
      }

      separadorMeio()
      escreva("  [0] Voltar\n")
      separadorBase()
      escreva("\n  ▶ Viajar para qual cidade? ")
      leia(escolhaCidade)

      destino = -1
      se(escolhaCidade == "1"){ destino = 0 }
      senao se(escolhaCidade == "2"){ destino = 1 }
      senao se(escolhaCidade == "3"){ destino = 2 }
      senao se(escolhaCidade == "4"){ destino = 3 }

      se(destino > 0 e destino < totalCidades){
        se(destino == cidadeAtual){
          escreva("\n  Você já esta em ", nomeCidades[destino], ".\n")
          util.aguarde(3000)
        }
        senao se(statusCidade[destino] == 2){
          cidadeAtual = destino
          acoesPuzzleCidade = 0
          escreva("\n  🚶 Você retorna para ", nomeCidades[destino], ".\n")
          util.aguarde(3000)
        }
        senao se(statusCidade[destino] == 1){
          se(acoesPuzzleCidade >= hacksParaViajar){
            conquistarCidade(destino, cidadeAtual, nomeCidades, totalCidades, venceu, vidaAtual, bateriaAtual)
          }
          senao{
            escreva("\n  🔒 Você precisa fazer pelo menos ", hacksParaViajar, " hacks\n")
            escreva("     nesta cidade antes de viajar. Feito: ", acoesPuzzleCidade, "/", hacksParaViajar, "\n")
            escreva("     Use a opção [1] Hackear no menu da cidade.\n")
            util.aguarde(3000)
          }
        }
        senao{
          escreva("\n  🔒 Rota bloqueada. Conquiste a cidade anterior primeiro.\n")
          util.aguarde(3000)
        }
      }
      senao se(escolhaCidade != "0"){
        escreva("\n  ⚠️ Opção invalida! Digite o numero de uma cidade (0 a 4).\n")
        util.aguarde(3000)
      }
    }
}
funcao conquistarCidade(inteiro destino, inteiro &cidadeAtual, cadeia nomeCidades[], inteiro totalCidades, logico &venceu, inteiro &vidaAtual, inteiro &bateriaAtual){
    logico puzzleOk = falso
    logico mobOk = falso
    inteiro tipo = 0

    limpa()
    separadorTopo()
    se(destino == totalCidades - 1){
      escreva("║          BATALHA   FINAL             ║\n")
      separadorMeio()
      escreva("  Destino: ", nomeCidades[destino], "\n")
      escreva("  Algo corrompido sufoca o sinal la dentro.\n")
      escreva("   1) Decifrar o codigo mestre \n")
      escreva("   2) Destruir o Núcleo de Interferencia \n")
    }
    senao{
      escreva("║          ROTA BLOQUEADA              ║\n")
      separadorMeio()
      escreva("  Destino: ", nomeCidades[destino], "\n")
      escreva("  Para abrir caminho voce precisa:\n")
      escreva("   1) Burlar o sistema de seguranca \n")
      escreva("   2) Derrotar o guardiao da passagem \n")
    }
    separadorBase()
    util.aguarde(4000)
    limpa()
      se(destino == totalCidades - 1){
      puzzleOk = restaurarSinalPuzzle()
    }
    senao{
      tipo = util.sorteia(1, 4)
      escolha(tipo){
        caso 1: puzzleOk = puzzleOne()   
        pare

        caso 2: puzzleOk = puzzleTwo()   
        pare

        caso 3: puzzleOk = puzzleThree()
        pare

        caso 4: puzzleOk = puzzleFour ()
        pare
      }
    }
      

    se(puzzleOk == verdadeiro){
      puzzlesResolvidos = puzzlesResolvidos + 1
      ganharPontos(100, "Seguranca da rota burlada")
      util.aguarde(3000)
      limpa()

      se(destino == totalCidades - 1){
        mobOk = bossFinal(vidaAtual, bateriaAtual)
      }
      senao{
        escreva("\n  ⚔️ O guardião da passagem aparece!\n")
        util.aguarde(3000)
        mobOk = batalha(vidaAtual, bateriaAtual)
      }

      se(vidaAtual > 0){
        se(mobOk == verdadeiro){
          cidadeAtual = destino
          statusCidade[destino] = 2
          cidadesDesbloqueadas = cidadesDesbloqueadas + 1
          acoesPuzzleCidade = 0
          ganharPontos(50, "Nova cidade desbloqueada")

          se(destino + 1 < totalCidades){
            statusCidade[destino + 1] = 1
          }

          limpa()
          se(destino == totalCidades - 1){
            escreva("\n  📡 Nucleo destruido! O sinal volta a fluir...\n")
          }
          senao{
            escreva("\n  🌆 Você chegou em ", nomeCidades[destino], "!\n")
          }
          util.aguarde(2000)

          se(destino == totalCidades - 1){
            ganharPontos(300, "SINAL RESTAURADO")
            util.aguarde(2000)
            venceu = verdadeiro
          }
        }
        senao{
          limpa()
          escreva("\n  🏃 Você recuou do guardiao. A rota continua bloqueada.\n")
          util.aguarde(2000)
        }
      }
    }
    senao{
      limpa()
      escreva("\n  🚫 Seguranca não foi burlada. A rota continua bloqueada.\n")
      util.aguarde(2000)
    }
}
funcao logico restaurarSinalPuzzle(){
    separadorTopo()
    escreva("║     📡 TORRE CENTRAL — TX MASTER     ║\n")
    separadorMeio()
    escreva("  Decifre o código mestre de transmissao\n")
    escreva("  para reativar o sinal perdido.\n")
    separadorBase()
    util.aguarde(2000)
    limpa()
    retorne puzzleFour()
}
funcao descanso(inteiro &vidaAtual, inteiro &bateriaAtual){
    inteiro sorte = util.sorteia(1, 3)
    escolha(sorte){
      caso 1:
        escreva("🥱 Você dorme tranquilamente e recupera 30 pontos de vida.\n")
        vidaAtual = vidaAtual + 30
        se(vidaAtual > 100){
          vidaAtual = 100
        }
        util.aguarde(2000)
      pare
      caso 2:
        escreva("💤 Você teve um sono leve e recuperou 10 pontos de vida.\n")
        vidaAtual = vidaAtual + 10
        se(vidaAtual > 100){
          vidaAtual = 100
        }
        util.aguarde(2000)
      pare
      caso 3:
        escreva("Voce acorda com barulho de helices..\n")
        util.aguarde(2000)
        batalha(vidaAtual, bateriaAtual)
      pare
    }
}
funcao abordarPessoas(inteiro &vidaAtual, inteiro &bateriaAtual){
    cadeia escolhaNpc = ""
    inteiro sorte
    inteiro dano

    enquanto(escolhaNpc != "1" e escolhaNpc != "2" e escolhaNpc != "3"){
      separadorTopo()
      escreva("║ Você se aproxima de uma pessoa..     ║\n")
      separadorMeio()
      escreva("  Ele percebe voce e fala: Tenho alguns suprimentos..\n")
      util.aguarde(800)
      escreva("  Mas vão custar caro!\n")
      separadorMeio()
      escreva("  [1] ▶ Confiar e seguir com ele\n")
      escreva("  [2] ▶ Ameaçar e exigir os suprimentos\n")
      escreva("  [3] ▶ Ignorar e seguir o caminho\n")
      separadorBase()
      leia(escolhaNpc)

      se(escolhaNpc == "1"){
        sorte = util.sorteia(1, 3)
        se(sorte == 1){
          escreva("\n  Ele te entrega um kit medico e pede 10 cargas de bateria.\n")
          qtdItens[0] = qtdItens[0] + 1
          bateriaAtual = bateriaAtual - 10
          se(bateriaAtual < 0){ bateriaAtual = 0 }
        }
        senao se(sorte == 2){
          escreva("\n  Ele mostra uma mochila cheia de itens e diz que vai confiar tudo a você...\n")
          util.aguarde(3000)
          escreva("  Antes de pegar, voce ouve helices e olha para cima..\n")
          util.aguarde(2000)
          batalha(vidaAtual, bateriaAtual)
        }
        senao{
          escreva("\n  - Na mão, a carga; no escuro, o pulsar. Te entrego esta bateria para o sinal voltar.\n")
          qtdItens[1] = qtdItens[1] + 1
        }
        util.aguarde(2000)
      }
      senao se(escolhaNpc == "2"){
        sorte = util.sorteia(1, 2)
        se(sorte == 1){
          escreva("\n  Com medo, ele te entrega um kit medico e um recarregador.\n")
          qtdItens[0] = qtdItens[0] + 1
          qtdItens[1] = qtdItens[1] + 1
        }
        senao{
          escreva("\n  Ele te olha com o canto do olho..\n")
          util.aguarde(2000)
          dano = util.sorteia(20, 30)
          vidaAtual = vidaAtual - dano
          se(vidaAtual < 0){ vidaAtual = 0 }
          escreva("  ..e te da uma facada, tirando ", dano, " pontos de vida!\n")
        }
        util.aguarde(2000)
      }
      senao se(escolhaNpc == "3"){
        sorte = util.sorteia(1, 5)
        se(sorte >= 1 e sorte < 5){
          escreva("\n  Você segue em frente, sem olhar para tras..\n")
        }
        senao{
          escreva("\n  Num canto, voce encontra uma mascara de gas!\n")
          qtdItens[2] = qtdItens[2] + 1
        }
        util.aguarde(2000)
      }
      senao{
        escreva("\n  ⚠️ Opção invalida! Digite 1, 2 ou 3.\n")
        util.aguarde(3000)
        limpa()
      }
    }
}
funcao logico usarItemNaBatalha(inteiro &vidaAtual, inteiro &bateriaAtual){
    cadeia escolhaItem = ""

    separadorTopo()
    escreva("║        🎒 USAR ITEM (BATALHA)        ║\n")
    separadorMeio()
    escreva("  [1] ", nomeItens[0], " 🧰 ", qtdItens[0], " un  (+30 ❤️)\n")
    escreva("  [2] ", nomeItens[1], " 🔋 ", qtdItens[1], " un  (+30 🪫)\n")
    escreva("  [0] Voltar (nao usar nada)\n")
    separadorBase()
    escreva("\n  ▶ Item: ")
    leia(escolhaItem)

    se(escolhaItem == "1"){
      se(qtdItens[0] > 0){
        qtdItens[0] = qtdItens[0] - 1
        vidaAtual = vidaAtual + 30
        se(vidaAtual > 100){ vidaAtual = 100 }
        escreva("\n  🧰 Kit-médico usado! +30 de vida.\n")
        util.aguarde(3000)
        retorne verdadeiro
      }
      senao{
        escreva("\n  Você nao tem ", nomeItens[0], ".\n")
        util.aguarde(3000)
        retorne falso
      }
    }
    senao se(escolhaItem == "2"){
      se(qtdItens[1] > 0){
        qtdItens[1] = qtdItens[1] - 1
        bateriaAtual = bateriaAtual + 30
        se(bateriaAtual > 100){ bateriaAtual = 100 }
        escreva("\n  🔋 Recarregador usado! +30 de bateria.\n")
        util.aguarde(3000)
        retorne verdadeiro
      }
      senao{
        escreva("\n  Você não tem ", nomeItens[1], ".\n")
        util.aguarde(3000)
        retorne falso
      }
    }
    senao se(escolhaItem == "0"){
      retorne falso
    }
    senao{
      escreva("\n  ⚠️ Opção inválida! Digite 1, 2 ou 0.\n")
      util.aguarde(3000)
      retorne falso
    }
}
funcao logico batalha(inteiro &vidaAtual, inteiro &bateriaAtual){

    inteiro vidaInimigo = util.sorteia(40, 100)
    cadeia acao = ""       
    inteiro dano = 0
    inteiro chance = 0
    logico turnoGasto = verdadeiro

    separadorTopo()
    escreva("  Um drone de segurança te encontrou!\n")
    separadorBase()
    util.aguarde(3000)
    limpa()

    enquanto(vidaInimigo > 0 e vidaAtual > 0){
      separadorTopo()
      escreva("║               COMBATE                ║\n")
      separadorMeio()
      escreva("  Sua vida.......: ", vidaAtual, "\n")
      escreva("  Sua bateria....: ", bateriaAtual, "\n")
      escreva("  Vida do inimigo: ", vidaInimigo, "\n")
      separadorMeio()
      escreva("  [1] Atacar (dano normal)\n")
      escreva("  [2] Pulso de energia (-25 🪫, dano alto)\n")
      escreva("  [3] Tentar fugir\n")
      escreva("  [4] Usar item (inventario)\n")
      separadorBase()
      escreva("\n  ▶ Ação: ")
      leia(acao)
      limpa()

      se(acao == "1" ou acao == "2" ou acao == "3" ou acao == "4"){
        turnoGasto = verdadeiro

 
        se(acao == "1"){
          dano = util.sorteia(10, 20)
          vidaInimigo = vidaInimigo - dano
          escreva("\n  💥 Você atacou e causou ", dano, " de dano!\n")
        }
        
        senao se(acao == "2"){
          se(bateriaAtual >= 25){
            bateriaAtual = bateriaAtual - 25
            dano = util.sorteia(25, 50)
            vidaInimigo = vidaInimigo - dano
            escreva("\n  ⚡ PULSO EMP! ", dano, " de dano!\n")
          }
          senao{
            escreva("\n  🔋 Bateria insuficiente para o EMP!\n")
          }
        }

        senao se(acao == "3"){
          chance = util.sorteia(1, 4)
          se(chance == 1){
            escreva("\n  🏃 Você conseguiu escapar!\n")
            util.aguarde(3000)
            retorne falso
          }
          senao{
            escreva("\n  ❌ Fuga falhou! O inimigo bloqueou a saida.\n")
          }
        }
        senao{
          turnoGasto = usarItemNaBatalha(vidaAtual, bateriaAtual)
        }

        se(vidaInimigo <= 0){
          escreva("\n  ✅ Inimigo neutralizado!\n")
          batalhasVencidas = batalhasVencidas + 1
          ganharPontos(75, "Inimigo neutralizado")
          util.aguarde(2000)
          retorne verdadeiro
        }

        se(turnoGasto == verdadeiro){
          dano = util.sorteia(5, 15)
          vidaAtual = vidaAtual - dano

          se(vidaAtual < 0){
            vidaAtual = 0
          }
          escreva("  🩸 O inimigo revidou: -", dano, " de vida.\n")
          util.aguarde(1800)
          limpa()
        }
      }
      senao{
        escreva("\n  ⚠️ Acao invalida! Digite 1, 2, 3 ou 4.\n")
        util.aguarde(3000)
        limpa()
      }
    }
    se(vidaAtual <= 0){
      escreva("\n  ☠️ Voce foi derrotado em combate...\n")
      util.aguarde(2000)
      retorne falso
    }
    retorne verdadeiro
}
funcao logico bossFinal(inteiro &vidaAtual, inteiro &bateriaAtual){
    inteiro vidaBoss = 140
    inteiro vidaBossMax = 140
    cadeia acao = ""  
    inteiro dano = 0
    inteiro chance = 0
    inteiro ataqueBoss = 0
    logico enfurecido = falso
    logico turnoGasto = verdadeiro


    limpa()
    escreva("\n")
    escreva("          ▄▄███████▄▄          \n")
    escreva("        ▄█▀▀░░░░░░░▀▀█▄        \n")
    escreva("       █▀░░░▄█████▄░░░▀█       \n")
    escreva("      █░░░░██▀▀▀▀▀██░░░░█      \n")
    escreva("      █░░░██░◣███◢░██░░░█      \n")
    escreva("      █░░░██░░███░░██░░░█      \n")
    escreva("      █░░░░██▄▄▄▄▄██░░░░█      \n")
    escreva("       █▄░░░▀█████▀░░░▄█       \n")
    escreva("        ▀█▄▄░░░░░░░▄▄█▀        \n")
    escreva("          ▀▀███████▀▀          \n")
    escreva("         ░║░░║░░║░░║░░         \n")
    escreva("       ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓        \n")
    escreva("\n")
    separadorTopo()
    escreva("║       NÚCLEO DE INTERFERENCIA        ║\n")
    separadorMeio()
    escreva("  A fonte que sufoca o sinal se revela:\n")
    escreva("  uma torre-IA corrompida.\n")
    escreva("  Nao tem como fugir.\n")
    separadorBase()
    util.aguarde(3500)
    limpa()

    enquanto(vidaBoss > 0 e vidaAtual > 0){
      separadorTopo()
      escreva("║       NÚCLEO DE INTERFERENCIA        ║\n")
      separadorMeio()
      desenharBarras("  NÚCLEO ", vidaBoss, vidaBossMax, "🟥")
      escreva("  Sua vida....: ", vidaAtual, "\n")
      escreva("  Sua bateria.: ", bateriaAtual, "\n")
      se(enfurecido == verdadeiro){
        escreva("  ⚠️ ESTADO DE SOBRECARGA\n")
      }
      separadorMeio()
      escreva("  [1] Atacar (dano normal)\n")
      escreva("  [2] Pulso EMP (-25 🪫)\n")
      escreva("  [3] Mirar no núcleo exposto \n")
      escreva("  [4] Usar item (inventario)\n")
      separadorBase()
      escreva("\n  ▶ Ação: ")
      leia(acao)
      limpa()

      se(acao == "1" ou acao == "2" ou acao == "3" ou acao == "4"){
        dano = 0
        turnoGasto = verdadeiro

        se(acao == "1"){
          dano = util.sorteia(12, 22)
          escreva("\n  💥 Você dispara contra o núcleo: ", dano, " de dano!\n")
        }

        senao se(acao == "2"){
          se(bateriaAtual >= 25){
            bateriaAtual = bateriaAtual - 25
            dano = util.sorteia(28, 48)
            escreva("\n  ⚡ PULSO EMP!", dano, " de dano!\n")
          }
          senao{
            escreva("\n  🔋 Bateria insuficiente para o EMP!\n")
          }
        }
        senao se(acao == "3"){
          chance = util.sorteia(1, 2)
          se(chance == 1){
            dano = util.sorteia(35, 55)
            escreva("\n  🎯 ACERTO CRITICO no nucleo exposto: ", dano, " de dano!\n")
          }
          senao{
            escreva("\n  ❌ O nucleo se reposiciona e voce erra o tiro!\n")
          }
        }
        senao{
          turnoGasto = usarItemNaBatalha(vidaAtual, bateriaAtual)
        }
        vidaBoss = vidaBoss - dano

        se(vidaBoss < 0){
          vidaBoss = 0
        }
        se(enfurecido == falso e vidaBoss <= vidaBossMax / 2 e vidaBoss > 0){
          enfurecido = verdadeiro
          escreva("\n  ⚠️ O NUCLEO ENTRA EM SOBRECARGA! A interferencia se intensifica!\n")
          util.aguarde(2500)
        }
        se(vidaBoss <= 0){
          batalhasVencidas = batalhasVencidas + 1
          ganharPontos(200, "Núcleo de Interferencia destruido")
          escreva("\n  💥💥 O NUCLEO IMPLODE 💥💥\n")
          util.aguarde(3000)
          retorne verdadeiro
        }

  
        se(turnoGasto == verdadeiro){
          util.aguarde(3000)
          ataqueBoss = util.sorteia(1, 3)

          se(ataqueBoss == 1){
            dano = util.sorteia(8, 16)
            se(enfurecido == verdadeiro){
              dano = dano + 8
            }
            vidaAtual = vidaAtual - dano
            escreva("  🩸 Descarga de energia: -", dano, " de vida.\n")
          }
          senao se(ataqueBoss == 2){
            dano = util.sorteia(14, 24)
            
            se(enfurecido == verdadeiro){
              dano = dano + 10
            }
            vidaAtual = vidaAtual - dano
            escreva("  ☄️ Pulso de sobrecarga: -", dano, " de vida!\n")
          }
          senao{
            dano = util.sorteia(15, 30)
            bateriaAtual = bateriaAtual - dano
            
            se(bateriaAtual < 0){
              bateriaAtual = 0
            }
            escreva("  📡 Ruido de interferencia drena sua bateria: -", dano, " 🪫!\n")
          }
          se(vidaAtual < 0){
            vidaAtual = 0
          }
          util.aguarde(2000)
          limpa()
        }
      }
      senao{
        escreva("\n  ⚠️ Ação invalida! Digite 1, 2, 3 ou 4.\n")
        util.aguarde(3000)
        limpa()
      }
    }
    se(vidaAtual <= 0){
      escreva("\n  ☠️ O nucleo te sobrecarrega e tudo escurece...\n")
      util.aguarde(2500)
      retorne falso
    }
    retorne verdadeiro
}
funcao logico puzzleFour(){
    inteiro senha1 = util.sorteia(0, 5)
    inteiro senha2 = util.sorteia(0, 5)
    inteiro senha3 = util.sorteia(0, 5)
    inteiro soma = senha1 + senha2 + senha3

    inteiro opcao1 = 0
    inteiro opcao2 = 0
    inteiro opcao3 = 0
    inteiro tentativas = 3
    inteiro acertos = 0
    inteiro barra = 0

    enquanto(tentativas > 0){
      escreva("\n")
      escreva("   ╔══════════════════════════════════════════════╗\n")
      escreva("   ║   ░▒▓██  D E C R Y P T E R   v2.3  ██▓▒░       ║\n")
      escreva("   ╚══════════════════════════════════════════════╝\n")
      escreva("\n")
      escreva("   ┌──────────────────────────────────────────────┐\n")
      escreva("   │  > Cofre digital protegido por senha de 3     │\n")
      escreva("   │    digitos (cada um de 0 a 5).                │\n")
      escreva("   │  > Decifre a sequencia antes do bloqueio.     │\n")
      escreva("   └──────────────────────────────────────────────┘\n")
      escreva("\n")
      escreva("   ┌─[ INTERCEPTACAO ]────────────────────────────┐\n")
      escreva("     > A SOMA dos tres digitos e..: ", soma, "\n")
      escreva("     > Tentativas restantes.......: ", tentativas, "\n")
      escreva("   └──────────────────────────────────────────────┘\n")
      escreva("\n")
      escreva("   ► Digite os 3 digitos da senha:\n")
      escreva("\n")
      escreva("     1o digito > ")
      leia(opcao1)
      escreva("     2o digito > ")
      leia(opcao2)
      escreva("     3o digito > ")
      leia(opcao3)
      escreva("\n")
      escreva("   [ SISTEMA ] Quebrando criptografia")
      barra = 0
      enquanto(barra < 6){
        escreva("⌛")
        util.aguarde(250)
        barra = barra + 1
      }
      escreva("\n\n")

      acertos = 0
      se(opcao1 == senha1){ acertos = acertos + 1 }
      se(opcao2 == senha2){ acertos = acertos + 1 }
      se(opcao3 == senha3){ acertos = acertos + 1 }

      se(acertos == 3){
        escreva("   ▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄\n")
        escreva("   █   ░▒▓██   S E N H A   A C E I T A   ██▓▒░  █\n")
        escreva("   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀\n")
        escreva("\n")
        escreva("     [🔓] Cofre destravado! Senha: ", senha1, senha2, senha3, "\n")
        util.aguarde(2000)
        retorne verdadeiro
      }

      tentativas = tentativas - 1

      se(tentativas == 0){
        escreva("   ▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄\n")
        escreva("   █   ░▒▓██   C O F R E   T R A V A D O  ██▓▒░ █\n")
        escreva("   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀\n")
        escreva("\n")
        escreva("     [🚫] Sistema bloqueado por seguranca.\n")
        escreva("     [🔑] A senha correta era: ", senha1, senha2, senha3, "\n")
        util.aguarde(2000)
        retorne falso
      }

      escreva("   ┌─[ ANALISE PARCIAL ]──────────────────────────┐\n")
      escreva("     > Digitos na posicao CORRETA: ", acertos, "\n")
      escreva("     > Continue decifrando...\n")
      escreva("   └──────────────────────────────────────────────┘\n")
      util.aguarde(3000)
      limpa()
    }
    retorne falso
}
funcao logico puzzleThree(){
    inteiro corCerta = util.sorteia(1, 3)
    cadeia resposta
    inteiro tentativa = 2
    logico acertou = falso

    separadorTopo()
    escreva("║         REATOR CRITICO               ║\n")
    separadorMeio()
    escreva("║                                      ║\n")
    escreva("║  O reator vai explodir em segundos!  ║\n")
    escreva("║  Corte o fio correto:                ║\n")
    escreva("║                                      ║\n")
    escreva("║   [V] Fio VERMELHO                   ║\n")
    escreva("║   [A] Fio AZUL                       ║\n")
    escreva("║   [M] Fio AMARELO                    ║\n")
    escreva("║                                      ║\n")
    separadorMeio()
    se(corCerta == 1){
      escreva("║  Manual: A cor do sangue cura      ║\n")
    }
    se(corCerta == 2){
      escreva("║  Manual: A cor do ceu acalma       ║\n")
    }
    se(corCerta == 3){
      escreva("║  Manual: A cor do sol ilumina      ║\n")
    }
    separadorBase()

    enquanto(tentativa > 0){
      escreva("\n  Qual fio cortar? (V/A/M): \n")
      leia(resposta)

      se(corCerta == 1 e (resposta == "V" ou resposta == "v")){
        acertou = verdadeiro
      }
      se(corCerta == 2 e (resposta == "A" ou resposta == "a")){
        acertou = verdadeiro
      }
      se(corCerta == 3 e (resposta == "M" ou resposta == "m")){
        acertou = verdadeiro
      }

      se(acertou == verdadeiro){
        escreva("\n  ✅ CLICK! Reator estabilizado!\n")
        util.aguarde(2000)
        retorne verdadeiro
      }

      tentativa = tentativa - 1
      se(tentativa > 0){
        escreva("\n  Fio errado! Tentativas restantes: ", tentativa, "\n")
      }
    }

    escreva("\n  🧨 BOOOOM! O reator explodiu...\n")
    util.aguarde(2000)
    retorne falso
}
funcao logico puzzleTwo(){
    inteiro opcao = 0
    inteiro tentativas = 3
    inteiro barrinha = 0

    inteiro padrao = util.sorteia(1, 3)
    inteiro binario1, binario2, binario3, binario4, binario5, binario6, binario7
    inteiro resposta = 0

    se(padrao == 1){
      binario1 = 0  binario2 = 1  binario3 = 0
      binario4 = 1  binario5 = 0  binario6 = 1
      binario7 = 0  resposta = 1
    }
    se(padrao == 2){
      binario1 = 0  binario2 = 0  binario3 = 1
      binario4 = 1  binario5 = 0  binario6 = 0
      binario7 = 1  resposta = 1
    }
    se(padrao == 3){
      binario1 = 1  binario2 = 1  binario3 = 1
      binario4 = 0  binario5 = 1  binario6 = 1
      binario7 = 1  resposta = 0
    }

    enquanto(tentativas > 0){

      escreva("\n")
      escreva("   ▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄\n")
      escreva("   █   ░▒▓██  S Y S T E M   B R E A C H  ██▓▒░  █\n")
      escreva("   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀\n")
      escreva("\n")
      escreva("   ╔══════════════════════════════════════════════╗\n")
      escreva("   ║  ANTENA: TX-7  │  MODO: BINARIO              ║\n")
      escreva("   ║  FREQ: 915 MHz │  SINAL: ativo               ║\n")
      escreva("   ╚══════════════════════════════════════════════╝\n")
      escreva("\n")
      escreva("   ┌──────────────────────────────────────────────┐\n")
      escreva("   │  > Transmissao binaria interceptada.         │\n")
      escreva("   │  > [ 0 ] = sinal BAIXO  [ 1 ] = sinal ALTO   │\n")
      escreva("   │  > Qual o proximo estado do sinal?           │\n")
      escreva("   └──────────────────────────────────────────────┘\n")
      escreva("\n")
      escreva("   ┌─[ DICA               ]─────────────────────────┐\n")
      se(padrao == 1){
        escreva("   │  > O sinal nunca repete o mesmo estado.      │\n")
      }
      se(padrao == 2){
        escreva("   │  > O sinal emite em pares antes de trocar.   │\n")
      }
      se(padrao == 3){
        escreva("   │  > O sinal cai uma vez a cada quatro pulsos. │\n")
      }
      escreva("   └──────────────────────────────────────────────┘\n")
      escreva("\n")
      escreva("   ┌─[ PULSOS CAPTURADOS ]────────────────────────┐\n")
      escreva("   │                                              │\n")
      escreva("   │   ")
      se(binario1 == 1){ escreva("▀▀") } senao { escreva("__") }
      escreva("  ")
      se(binario2 == 1){ escreva("▀▀") } senao { escreva("__") }
      escreva("  ")
      se(binario3 == 1){ escreva("▀▀") } senao { escreva("__") }
      escreva("  ")
      se(binario4 == 1){ escreva("▀▀") } senao { escreva("__") }
      escreva("  ")
      se(binario5 == 1){ escreva("▀▀") } senao { escreva("__") }
      escreva("  ")
      se(binario6 == 1){ escreva("▀▀") } senao { escreva("__") }
      escreva("  ")
      se(binario7 == 1){ escreva("▀▀") } senao { escreva("__") }
      escreva("  ??        │\n")
      escreva("   │                                              │\n")
      escreva("   │    ", binario1,"    ", binario2,"    ", binario3,"    ", binario4,"    ", binario5,"    ", binario6,"    ", binario7,"    ?           │\n")
      escreva("   │                                              │\n")
      escreva("   └──────────────────────────────────────────────┘\n")
      escreva("\n")
      escreva("   ┌─[ STATUS ]───────────────────────────────────┐\n")
      escreva("     Tentativas restantes...... ", tentativas, "\n")
      escreva("     Frequencia................ 915 MHz\n")
      escreva("     Nivel de seguranca........ ALTO\n")
      escreva("   └──────────────────────────────────────────────┘\n")
      escreva("\n")
      escreva("   ► Qual o proximo estado? [ 0 ] ou [ 1 ]: ")
      leia(opcao)
      escreva("\n")
      escreva("   [ SISTEMA ] Analisando pulso")
      barrinha = 0
      enquanto(barrinha < 5){
        escreva("⌛")
        util.aguarde(250)
        barrinha = barrinha + 1
      }
      escreva("\n")

      se(opcao == resposta){
        escreva("\n")
        escreva("   ▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄\n")
        escreva("   █ ░▒▓██  A C E S S O  G A R A N T I D O ██▓▒░█\n")
        escreva("   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀\n")
        escreva("\n")
        escreva("   ┌──────────────────────────────────────────────┐\n")
        escreva("   │  [✅] Pulso identificado corretamente!       \n")
        escreva("   │  [✅] Padrao binario decifrado               \n")
        escreva("   │  [🔓] Transmissão desbloqueada               \n")
        escreva("   └──────────────────────────────────────────────┘\n")
        util.aguarde(2000)
        retorne verdadeiro
      }

      tentativas = tentativas - 1

      se(tentativas == 0){
        escreva("\n")
        escreva("   ▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄\n")
        escreva("   █  ░▒▓██    A C E S S O   N E G A D O  ██▓▒░ █\n")
        escreva("   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀\n")
        escreva("\n")
        escreva("   ┌──────────────────────────────────────────────┐\n")
        escreva("   │  [🚫] Limite de tentativas atingido          \n")
        escreva("   │  [🔒] Transmissão bloqueada                  \n")
        escreva("   │  [❌] O estado correto era: ", resposta,"    \n")
        escreva("   └──────────────────────────────────────────────┘\n")
        util.aguarde(2000)
        retorne falso
      }

      escreva("   [ ERRO ] Tente novamente.\n")
      util.aguarde(2000)
      limpa()
    }
    retorne falso
}
funcao logico puzzleOne(){
    inteiro portaA = 0
    inteiro portaB = 0
    inteiro portaC = 0
    inteiro tentativas = 3

    inteiro corretaA = util.sorteia(0, 1)
    inteiro corretaB = util.sorteia(0, 1)
    inteiro corretaC = util.sorteia(0, 1)

    enquanto(tentativas > 0){
      escreva("\n")
      escreva("  ╔══════════════════════════════════════════╗\n")
      escreva("  ║       ░▒▓█  FECHADURA BLINDADA  █▓▒░     ║\n")
      escreva("  ╠══════════════════════════════════════════╣\n")
      escreva("  ║                                          ║\n")
      escreva("  ║   Sistema de segurança de 3 alavancas    ║\n")
      escreva("  ║   Descubra a combinacao correta...       ║\n")
      escreva("  ║                                          ║\n")
      escreva("  ║      ┌─────┐    ┌─────┐    ┌─────┐       ║\n")
      escreva("  ║      │  A  │    │  B  │    │  C  │       ║\n")
      escreva("  ║      │ ╔═╗ │    │ ╔═╗ │    │ ╔═╗ │       ║\n")
      escreva("  ║      │ ║▓║ │    │ ║▓║ │    │ ║▓║ │       ║\n")
      escreva("  ║      │ ╚═╝ │    │ ╚═╝ │    │ ╚═╝ │       ║\n")
      escreva("  ║      └──┬──┘    └──┬──┘    └──┬──┘       ║\n")
      escreva("  ║         │          │          │          ║\n")
      escreva("  ║      ═══╧══════════╧══════════╧═══       ║\n")
      escreva("  ║                                          ║\n")
      escreva("  ╠══════════════════════════════════════════╣\n")
      escreva("  ║   ► [ 1 ] ACIONAR    ► [ 0 ] DESLIGAR    ║\n")
      escreva("  ╠══════════════════════════════════════════╣\n")
      escreva("  ║   💡 DICA:                               ║\n")

      se(corretaA == 1){
        escreva("  ║  A primeira alavanca deve ser acionada ║\n")
      }senao{
        escreva("  ║  A primeira alavanca deve ficar desligada║\n")
      }
      se(corretaB == 0 e corretaC == 0){
        escreva("  ║   As duas restantes sao opostas a A   ║\n")
      }
      se(corretaB == 1 e corretaC == 1){
        escreva("  ║   B e C compartilham o mesmo estado    ║\n")
      }
      se(corretaB == 1 e corretaC == 0){
        escreva("  ║   Apenas a do meio deve ser acionada   ║\n")
      }
      se(corretaB == 0 e corretaC == 1){
        escreva("  ║   Apenas a ultima deve ser acionada    ║\n")
      }

      escreva("  ╠══════════════════════════════════════════╣\n")
      escreva("  ║   Tentativas restantes: ", tentativas, "               \n")
      escreva("  ╚══════════════════════════════════════════╝\n")
      escreva("\n")

      escreva("    ┌─[ ALAVANCA A ]──> ")
      leia(portaA)
      escreva("    ┌─[ ALAVANCA B ]──> ")
      leia(portaB)
      escreva("    ┌─[ ALAVANCA C ]──> ")
      leia(portaC)

      escreva("\n")
      escreva("  ┌──────────────────────────────────────────┐\n")
      escreva("    Configuração registrada:\n")
      escreva("       A = [", portaA, "]   B = [", portaB, "]   C = [", portaC, "]\n")
      escreva("  └──────────────────────────────────────────┘\n")

      se(portaA == corretaA e portaB == corretaB e portaC == corretaC){
        escreva("\n")
        escreva("  ╔══════════════════════════════════════════╗\n")
        escreva("  ║                                          ║\n")
        escreva("  ║       🔓 FECHADURA DESTRAVADA 🔓        ║\n")
        escreva("  ║                                          ║\n")
        escreva("  ║       A sequencia estava correta!        ║\n")
        escreva("  ║                                          ║\n")
        escreva("  ╚══════════════════════════════════════════╝\n")
        util.aguarde(2000)
        retorne verdadeiro
      }

      tentativas = tentativas - 1

      se(tentativas == 0){
        escreva("\n")
        escreva("  ╔══════════════════════════════════════════╗\n")
        escreva("  ║                                          ║\n")
        escreva("  ║       🔒 BLOQUEIO PERMANENTE 🔒         ║\n")
        escreva("  ║                                          ║\n")
        escreva("  ║    Sistema travou apos varias falhas.    ║\n")
        escreva("  ║Combinação era: A=", corretaA," B=", corretaB," C=", corretaC,"         ║\n")
        escreva("  ║                                          ║\n")
        escreva("  ╚══════════════════════════════════════════╝\n")
        util.aguarde(2000)
        retorne falso
      }

      escreva("\n")
      escreva("    >>> COMBINACAO INCORRETA <<<\n")
      escreva("    Recalibrando sistema...\n\n")
      util.aguarde(2000)
      limpa()
    }
    retorne falso
}
funcao inteiro sorteadorPuzzle(){
    retorne util.sorteia(1, 4)
}
funcao ganharPontos(inteiro valor, cadeia motivo){
    pontuacao = pontuacao + valor
    escreva("\n  💠 +", valor, " pontos — ", motivo, "  (total: ", pontuacao, ")\n")
}
funcao placarFinal(){
    separadorTopo()
    escreva("║              P L A C A R             ║\n")
    separadorMeio()
    escreva("  Puzzles resolvidos...: ", puzzlesResolvidos, "\n")
    escreva("  Batalhas vencidas....: ", batalhasVencidas, "\n")
    escreva("  Cidades desbloqueadas: ", cidadesDesbloqueadas, "\n")
    separadorMeio()
    escreva("  PONTUAÇÃO FINAL......: ", pontuacao, "\n")
    separadorBase()
}
funcao loading(){
    escreva("  Loading: [")
    inteiro i = 0
    enquanto(i < 20){
      escreva("█")
      util.aguarde(50)
      i = i + 1
    }
    escreva("] 100%\n")
}
funcao statusPlayer(cadeia nomePlayer, inteiro vida, inteiro bateria, cadeia cidadeAtual){
    separadorTopo()
    escreva("║                STATUS                ║\n")
    separadorMeio()
    escreva("              ", nomePlayer, "\n")
    separadorMeio()
    desenharBarras("  VIDA   ", vida, 100, "❤️")
    separadorMeio()
    desenharBarras("  BATERIA", bateria, 100, "🔋")
    separadorMeio()
    escreva("  Cidade atual: ", cidadeAtual, "\n")
    escreva("  Pontuação...: ", pontuacao, "\n")
    escreva("  Hacks p/ viajar: ", acoesPuzzleCidade, "/", hacksParaViajar, "\n")
    separadorBase()
}
funcao separadorTopo(){
    escreva("\n╔══════════════════════════════════════╗\n")
}
funcao separadorMeio(){
    escreva("╠══════════════════════════════════════╣\n")
}
funcao separadorBase(){
    escreva("╚══════════════════════════════════════╝\n")
}
funcao separadorLinha(){
    escreva("\n════════════════════════════════════════\n")
}
funcao mostrarInventario(inteiro &vidaAtual, inteiro &bateriaAtual){
    cadeia opcao = ""
    enquanto(opcao != "0"){
      separadorTopo()
      desenharBarras("  VIDA   ", vidaAtual, 100, "❤️")
      separadorMeio()
      desenharBarras("  BATERIA", bateriaAtual, 100, "🔋")
      separadorMeio()
      escreva("║ 1 ▶ ", nomeItens[0], " 🧰 ", qtdItens[0], " un\n")
      escreva("║ 2 ▶ ", nomeItens[1], " 🔋 ", qtdItens[1], " un\n")
      escreva("║ 3 ▶ ", nomeItens[2], " 🤿 ", qtdItens[2], " un\n")
      escreva("║ 0 ▶ Sair do inventario\n")
      separadorBase()
      leia(opcao)
      se(opcao == "1"){
        se(qtdItens[0] == 0){
          escreva("\n  Você nao tem ", nomeItens[0], ".\n")
          util.aguarde(3000)
        }
        senao{
          qtdItens[0] = qtdItens[0] - 1
          vidaAtual = vidaAtual + 30
          se(vidaAtual > 100){
            vidaAtual = 100
          }
          somarBarraVida(vidaAtual)
          util.aguarde(500)
          limpa()
        }
      }
      senao se(opcao == "2"){
        se(qtdItens[1] == 0){
          escreva("\n  Você nao tem ", nomeItens[1], ".\n")
          util.aguarde(3000)
        }
        senao{
          qtdItens[1] = qtdItens[1] - 1
          bateriaAtual = bateriaAtual + 30
          se(bateriaAtual > 100){
            bateriaAtual = 100
          }
          somarBarraBateria(bateriaAtual)
          util.aguarde(500)
          limpa()
        }
      }
      senao se(opcao == "3"){
        se(qtdItens[2] == 0){
          escreva("\n  Você nao tem ", nomeItens[2], ".\n")
          util.aguarde(3000)
        }
        senao{
          qtdItens[2] = qtdItens[2] - 1
          usoMascara = 3
          escreva("\n  🤿 Máscara equipada! Protege por 3 turnos na Zona Toxica.\n")
          util.aguarde(3000)
          limpa()
        }
      }
      senao se(opcao == "0"){
      }
      senao{
        escreva("\n  ⚠️ Opção inválida! Digite 1, 2, 3 ou 0.\n")
        util.aguarde(3000)
        limpa()
      }
    }
}
funcao somarBarraBateria(inteiro aumentadorDeBarra){
    inteiro tamanhoBarra = 10
    inteiro preenchimento = (aumentadorDeBarra * tamanhoBarra) / 100

    para(inteiro i = 0; i < tamanhoBarra; i++){
      se(i < preenchimento){
        escreva("🔋")
        util.aguarde(120)
      }
      senao{
        escreva("💀")
        util.aguarde(120)
      }
    }
    escreva("\n")
}
funcao somarBarraVida(inteiro aumentadorDeBarra){
    inteiro tamanhoBarra = 10
    inteiro preenchimento = (aumentadorDeBarra * tamanhoBarra) / 100

    para(inteiro i = 0; i < tamanhoBarra; i++){
      se(i < preenchimento){
        escreva("❤️")
        util.aguarde(120)
      }
      senao{
        escreva("💀")
        util.aguarde(120)
      }
    }
    escreva("\n")
}
funcao desenharBarras(cadeia barra, inteiro barraAtual, inteiro barraMaxima, cadeia icone){
    inteiro tamanhoBarra = 10
    inteiro preenchimento = (barraAtual * tamanhoBarra) / barraMaxima

    escreva(barra, " ~{")
    para(inteiro i = 0; i < tamanhoBarra; i++){
      se(i < preenchimento){
        escreva(icone)
      }
      senao{
        escreva("💀")
      }
    }
    escreva("}~\n")
}
funcao telaDeInicio(){
    escreva("\n\n")
    escreva("    ███████╗██╗███╗   ██╗ █████╗ ██╗     \n")
    escreva("    ██╔════╝██║████╗  ██║██╔══██╗██║     \n")
    escreva("    ███████╗██║██╔██╗ ██║███████║██║     \n")
    escreva("    ╚════██║██║██║╚██╗██║██╔══██║██║     \n")
    escreva("    ███████║██║██║ ╚████║██║  ██║███████╗\n")
    escreva("    ╚══════╝╚═╝╚═╝  ╚═══╝╚═╝  ╚═╝╚══════╝\n")
    escreva("                                         \n")
    escreva("     ██████╗ ███████╗██████╗ ██████╗ ██╗██████╗  ██████╗ \n")
    escreva("     ██╔══██╗██╔════╝██╔══██╗██╔══██╗██║██╔══██╗██╔═══██╗\n")
    escreva("     ██████╔╝█████╗  ██████╔╝██║  ██║██║██║  ██║██║   ██║\n")
    escreva("     ██╔═══╝ ██╔══╝  ██╔══██╗██║  ██║██║██║  ██║██║   ██║\n")
    escreva("     ██║     ███████╗██║  ██║██████╔╝██║██████╔╝╚██████╔╝\n")
    escreva("     ╚═╝     ╚══════╝╚═╝  ╚═╝╚═════╝ ╚═╝╚═════╝  ╚═════╝ \n")
    escreva("\n")
    escreva("            ┌──────────────────────────────────────┐\n")
    escreva("            │  >> O sinal foi cortado as 03:47 <<  │\n")
    escreva("            │     Você e a ultima esperanca...     │\n")
    escreva("            └──────────────────────────────────────┘\n")
    escreva("\n\n")
}
funcao telaVitoria(cadeia nomePlayer){
    limpa()
    escreva("\n")
    escreva("  ╔══════════════════════════════════════════╗\n")
    escreva("  ║                                          ║\n")
    escreva("  ║     📡  S I N A L   R E S T A U R A D O  ║\n")
    escreva("  ║                                          ║\n")
    escreva("  ╚══════════════════════════════════════════╝\n")
    escreva("\n")
    separadorTopo()
    escreva("║            ✅ V I T Ó R I A ✅        ║\n")
    separadorMeio()
    escreva("  As 04:12, a transmissão volta a vida.\n")
    escreva("  ", nomePlayer, " reestabeleceu a cconexão do planeta.\n")
    separadorBase()
    placarFinal()
    escreva("\n  >> FIM <<\n")
    util.aguarde(5000)
}
funcao gameOver(){
    limpa()
    escreva("\n")
    escreva("      ███████████████████████████\n")
    escreva("      ███████▀▀▀░░░░░░░▀▀▀███████\n")
    escreva("      ████▀░░░░░░░░░░░░░░░░░▀████\n")
    escreva("      ███│░░░░░░░░░░░░░░░░░░░│███\n")
    escreva("      ██▌│░░░░░░░░░░░░░░░░░░░│▐██\n")
    escreva("      ██░└┐░░░░░░░░░░░░░░░░░┌┘░██\n")
    escreva("      ██░░└┐░░░░░░░░░░░░░░░┌┘░░██\n")
    escreva("      ██░░┌┘▄▄▄▄▄░░░░░▄▄▄▄▄└┐░░██\n")
    escreva("      ██▌░│██████▌░░░▐██████│░▐██\n")
    escreva("      ███░│▐███▀▀░░▄░░▀▀███▌│░███\n")
    escreva("      ██▀─┘░░░░░░░▐█▌░░░░░░░└─▀██\n")
    escreva("      ██▄░░░▄▄▄▓░░▀█▀░░▓▄▄▄░░░▄██\n")
    escreva("      ████▄─┘██▌░░░░░░░▐██└─▄████\n")
    escreva("      █████░░▐█─┬┬┬┬┬┬┬─█▌░░█████\n")
    escreva("      ████▌░░░▀┬┼┼┼┼┼┼┼┬▀░░░▐████\n")
    escreva("      █████▄░░░└┴┴┴┴┴┴┴┘░░░▄█████\n")
    escreva("      ███████▄░░░░░░░░░░░▄███████\n")
    escreva("      ██████████▄▄▄▄▄▄▄██████████\n")
    escreva("      ███████████████████████████\n")
    escreva("\n")
    separadorTopo()
    escreva("║           G A M E   O V E R          ║\n")
    separadorMeio()
    escreva("║      O sinal se perdeu para sempre   ║\n")
    separadorBase()
    placarFinal()
    escreva("\n  [ENTER] para tentar novamente...\n")
    cadeia pause
    leia(pause)
    limpa()
    inicio()
}
}

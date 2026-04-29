programa {
  funcao inicio() {
    cadeia usuario = "joao"
    cadeia usuarioLogar
    cadeia senha = "123456"
    cadeia senhaLogar
    logico logado = falso
    inteiro qtdVetores = 100

    cadeia nomesPacientes[qtdVetores]
    cadeia telefonesPacientes[qtdVetores]
    inteiro contadorPacientes = 0
    inteiro pacienteSelecionado

    cadeia nomesDoutores[qtdVetores]
    cadeia especialidadeDoutores[qtdVetores]
    inteiro contadorDoutores = 0
    inteiro doutorSelecionado
    inteiro especialidadeSelecionada

    cadeia pacientesConsultas[qtdVetores]
    cadeia doutoresConsultas[qtdVetores]
    cadeia dataConsultas[qtdVetores]
    cadeia servicoConsultas[qtdVetores]
    real valorConsultas[qtdVetores]
    logico consultaAtiva[qtdVetores]
    inteiro contadorConsultas = 0
    inteiro consultaSelecionada

    cadeia servicos[] = {"Ortodontia", "Implantodontia", "Periodontia", "Endodontia", "Armonização Facial"}
    real valoresServicos[] = {500, 2000, 650, 800, 3500}
    inteiro contadorServicos = 5
    inteiro servicoSelecionado

    enquanto(logado == falso){
      escreva("Usuário: ")
      leia(usuarioLogar)

      escreva("Senha: ")
      leia(senhaLogar)

      se(usuarioLogar == usuario e senhaLogar == senha){
        logado = verdadeiro
      }senao{
        limpa()
        escreva("Usuário ou senha incorretos, tente novamente.\n\n")
      }
    }

    inteiro opcao = -1
    limpa()

    // AQUI JÁ ESTAMOS LOGADO
    enquanto(opcao != 0){
      escreva ("⫘⫘⫘⫘⫘ CONSULTÓRIO ODONTOLÓGICO ⫘⫘⫘⫘⫘\n")
      escreva ("[1]      CADASTRAR PACIENTE        \n")
      escreva ("[2]      CADASTRAR DOUTOR          \n")
      escreva ("[3]      AGENDAR CONSULTAS         \n")
      escreva ("[4]      LISTAR CONSULTAS          \n")
      escreva ("[5]      REMARCAR CONSULTAS        \n")
      escreva ("[6]      CANCELAR CONSULTAS        \n")
      escreva ("[7]      SALDO DO CONSULTÓRIO      \n")
      escreva ("[0]      SAIR                      \n\n")
      leia(opcao)

      escolha(opcao){
        caso 1:
          limpa()
          escreva("CADASTRO DE PACIENTES\n\n")

          escreva("Nome: ")
          leia(nomesPacientes[contadorPacientes])
          enquanto(nomesPacientes[contadorPacientes] == ""){
            escreva("Nome inválido. Digite novamente: ")
            leia(nomesPacientes[contadorPacientes])
          }

          escreva("Telefone: ")
          leia(telefonesPacientes[contadorPacientes])
          enquanto(telefonesPacientes[contadorPacientes] == ""){
            escreva("Telefone inválido. Digite novamente: ")
            leia(telefonesPacientes[contadorPacientes])
          }

          contadorPacientes++
          limpa()
          escreva("Paciente cadastrado com sucesso!\n\n")
        pare

        caso 2:
          limpa()
          escreva("CADASTRO DE DOUTORES\n\n")

          escreva("Nome: ")
          leia(nomesDoutores[contadorDoutores])
          enquanto(nomesDoutores[contadorDoutores] == ""){
            escreva("Nome inválido. Digite novamente: ")
            leia(nomesDoutores[contadorDoutores])
          }

          escreva("\nEspecialidades: \n")
          para(inteiro i = 0; i < contadorServicos; i++){
            escreva("[", i, "] ", servicos[i], "\n")
          }

          escreva("Selecione a especialidade do doutor: ")
          leia(especialidadeSelecionada)
          enquanto(especialidadeSelecionada < 0 ou especialidadeSelecionada >= contadorServicos){
            escreva("Especialidade inválida. Digite novamente: ")
            leia(especialidadeSelecionada)
          }

          especialidadeDoutores[contadorDoutores] = servicos[especialidadeSelecionada]

          contadorDoutores++
          limpa()
          escreva("Doutor cadastrado com sucesso!\n\n")
        pare

        caso 3:
          limpa()
          se(contadorPacientes == 0 ou contadorDoutores == 0){
            escreva("NÃO É POSSÍVEL AGENDAR UMA CONSULTA SEM PACIENTES OU DOUTORES CADASTRADOS\n\n")
          } senao {
            escreva("AGENDAR CONSULTA\n\n")

            escreva("Escolha um paciente: \n")
            para(inteiro i = 0; i < contadorPacientes; i++){
              escreva("[", i, "] ", nomesPacientes[i], "\n")
            }

            escreva("Digite o ID do paciente: ")
            leia(pacienteSelecionado)

            limpa()
            escreva("Paciente selecionado: ", nomesPacientes[pacienteSelecionado], "\n")

            escreva("Escolha um doutor: \n")
            para(inteiro i = 0; i < contadorDoutores; i++){
              escreva("[", i, "] ", nomesDoutores[i], " - ", especialidadeDoutores[i], "\n")
            }

            escreva("Digite o ID do doutor: ")
            leia(doutorSelecionado)

            limpa()
            escreva("Doutor selecionado: ", nomesDoutores[doutorSelecionado], "\n")

            escreva("Qual a data do atendimento: ")
            leia(dataConsultas[contadorConsultas])

            escreva("Qual vai ser o procedimento: \n")
            para(inteiro i = 0; i < contadorServicos; i++){
              escreva("[", i, "] ", servicos[i], " - R$ ", valoresServicos[i], "\n")
            }

            // AQUI O VALOR E O NOME DO SERVIÇO VAI SER O MESMO ÍNDICE
            escreva("\nEscolha o serviço: ")
            leia(servicoSelecionado)

            pacientesConsultas[contadorConsultas] = nomesPacientes[pacienteSelecionado]
            doutoresConsultas[contadorConsultas] = nomesDoutores[doutorSelecionado]
            servicoConsultas[contadorConsultas] = servicos[servicoSelecionado]
            valorConsultas[contadorConsultas] = valoresServicos[servicoSelecionado]
            consultaAtiva[contadorConsultas] = verdadeiro

            contadorConsultas++
            limpa()
            escreva("Consulta agendada com sucesso!\n\n")
          }
        pare

        caso 4:
          limpa()
          cadeia valorBusca = ""
          logico encontrou = falso
          escreva("LISTAGEM DE CONSULTAS\n\n")
          escreva("Digite o nome de um paciente, doutor ou data de atendimento: \n")
          leia(valorBusca)

          para(inteiro i = 0; i < contadorConsultas; i++){
            se(consultaAtiva[i] == verdadeiro e (pacientesConsultas[i] == valorBusca ou doutoresConsultas[i] == valorBusca ou dataConsultas[i] == valorBusca)){
              encontrou = verdadeiro
              escreva("\nConsulta encontrada: \n")
              escreva("╔════════════════════════════════════════╗\n")
              escreva("║ Paciente: ", pacientesConsultas[i], "\n")
              escreva("║ Doutor: ", doutoresConsultas[i], "\n")
              escreva("║ Data da consulta: ", dataConsultas[i], "\n")
              escreva("║ Serviço: ", servicoConsultas[i], "\n")
              escreva("║ Valor: R$ ", valorConsultas[i], "\n")
              escreva("╚════════════════════════════════════════╝\n")
            }
          }

          se(encontrou == falso){
            escreva("Nenhuma consulta encontrada com esse termo.\n")
          }
          escreva("\n\n")
        pare

        caso 5:
          limpa()
          se(contadorConsultas == 0){
            escreva("NÃO HÁ CONSULTAS PARA REMARCAR\n\n")
          } senao {
            escreva("REMARCAR CONSULTA\n\n")
            escreva("Consultas agendadas: \n")

            logico temAtiva = falso
            para(inteiro i = 0; i < contadorConsultas; i++){
              se(consultaAtiva[i] == verdadeiro){
                temAtiva = verdadeiro
                escreva("[", i, "] ", pacientesConsultas[i], " com Dr(a). ", doutoresConsultas[i], " em ", dataConsultas[i], "\n")
              }
            }

            se(temAtiva == falso){
              escreva("Não há consultas ativas para remarcar.\n\n")
            } senao {
              escreva("\nDigite o ID da consulta que deseja remarcar: ")
              leia(consultaSelecionada)

              se(consultaSelecionada < 0 ou consultaSelecionada >= contadorConsultas ou consultaAtiva[consultaSelecionada] == falso){
                escreva("Consulta inválida.\n\n")
              } senao {
                escreva("Digite a nova data: ")
                leia(dataConsultas[consultaSelecionada])
                limpa()
                escreva("Consulta remarcada com sucesso!\n\n")
              }
            }
          }
        pare

        caso 6:
          limpa()
          se(contadorConsultas == 0){
            escreva("NÃO HÁ CONSULTAS PARA CANCELAR\n\n")
          } senao {
            escreva("CANCELAR CONSULTA\n\n")
            escreva("Consultas agendadas: \n")

            logico temAtiva = falso
            para(inteiro i = 0; i < contadorConsultas; i++){
              se(consultaAtiva[i] == verdadeiro){
                temAtiva = verdadeiro
                escreva("[", i, "] ", pacientesConsultas[i], " com Dr(a). ", doutoresConsultas[i], " em ", dataConsultas[i], "\n")
              }
            }

            se(temAtiva == falso){
              escreva("Não há consultas ativas para cancelar.\n\n")
            } senao {
              escreva("\nDigite o ID da consulta que deseja cancelar: ")
              leia(consultaSelecionada)

              se(consultaSelecionada < 0 ou consultaSelecionada >= contadorConsultas ou consultaAtiva[consultaSelecionada] == falso){
                escreva("Consulta inválida.\n\n")
              } senao {
                consultaAtiva[consultaSelecionada] = falso
                limpa()
                escreva("Consulta cancelada com sucesso!\n\n")
              }
            }
          }
        pare

        caso 7:
          limpa()
          escreva("SALDO DO CONSULTÓRIO\n\n")

          real saldoTotal = 0
          inteiro qtdAtivas = 0
          inteiro qtdCanceladas = 0

          para(inteiro i = 0; i < contadorConsultas; i++){
            se(consultaAtiva[i] == verdadeiro){
              saldoTotal += valorConsultas[i]
              qtdAtivas++
            } senao {
              qtdCanceladas++
            }
          }

          escreva("Consultas ativas: ", qtdAtivas, "\n")
          escreva("Consultas canceladas: ", qtdCanceladas, "\n")
          escreva("Saldo total (consultas ativas): R$ ", saldoTotal, "\n\n")
        pare

        caso 0:
          limpa()
          escreva("Saindo do sistema... Até logo!\n")
        pare

        caso contrario:
          limpa()
          escreva("Opção inválida. Tente novamente.\n\n")
      }
    }
  }
}

programa {
  funcao inicio() {

    real temperatura [7]
    real aux = 0
    cadeia dias[]={"Segunda-Feira", "Terça-Feira", "Quarta-Feira", "Quinta-Feira","Sexta-Feira","Sábado","Domingo"}
    inteiro auxiliarSemana

    para(inteiro i = 0; i < 7; i++){
      escreva("Digite a temperatura do ",i + 1," º dia: ")
      leia(temperatura[i])
    }

    para(inteiro i = 0; i < 7; i++){
        se(temperatura[i]> aux){
          aux = temperatura[i]
          auxiliarSemana = i
        }
    }
        escreva("Temperatura mais alta: ",aux,"\n")
        escreva("Dia ",auxiliarSemana + 1,", ", dias[auxiliarSemana],"\n") 
 }
}




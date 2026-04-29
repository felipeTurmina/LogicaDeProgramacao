programa {
  funcao inicio() {
    cadeia mes

    escreva ("Informe o mês para saber a estação do ano: ")
    leia  (mes)

    escolha (mes){
      caso "Dezembro" ou "Janeiro" ou "Fevereiro":
      escreva("Verão")
      pare
      caso "Março" ou "Abril" ou "Maio":
      escreva("Outono")
      pare
      caso "Junho" ou "Julho" ou "Agosto":
      escreva("Inverno")
      pare
      caso "Setembro" ou "Outubro" ou "Novembro":
      escreva("Primavera")
      pare
      caso contrario: escreva ("Informe um mês válido")
    }
  }
}

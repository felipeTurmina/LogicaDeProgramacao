programa {
  funcao inicio() {
  inteiro numeroDoMes

    escreva ("Digite o número correspondente ao mês para saber a estação do ano: ")
    leia (numeroDoMes)

    se (numeroDoMes == 12 ou numeroDoMes == 1 ou numeroDoMes == 2){
      escreva("Verão")
    }
    senao se (numeroDoMes == 3 ou numeroDoMes == 4 ou numeroDoMes == 5){
      escreva("Outono")
    }
    senao se (numeroDoMes == 6 ou numeroDoMes == 7 ou numeroDoMes ==  8){
      escreva("Inverno")
    }
    senao se (numeroDoMes == 9 ou numeroDoMes == 10 ou numeroDoMes ==11){
      escreva("Primevera")
    }
    senao{escreva("Digite um número referente ao mês que seja válido!")}
  }  
}

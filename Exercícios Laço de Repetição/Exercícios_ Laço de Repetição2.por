programa {
  funcao inicio() {
    inteiro multiplicador
  

    escreva("Digite o multiplicador para a tabuada até 10: ")
    leia(multiplicador)
  

    para(inteiro i = 1; i <=10; i++){
      escreva(multiplicador," x ", i ," = ", multiplicador * i,"\n")
    }
  }
}

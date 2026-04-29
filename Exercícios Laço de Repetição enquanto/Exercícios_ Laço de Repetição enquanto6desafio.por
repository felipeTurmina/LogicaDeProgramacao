programa {
  funcao inicio() {
  inteiro senha = 1234
  inteiro digita 
  inteiro contador = 0


  enquanto(digita != senha){
    escreva("Digite sua senha: ")
    leia(digita)
    se(digita != senha){
    escreva("Senha incorreta, tente novamente.\n")
    contador = contador + 1
    }
    se(contador == 3){
      escreva("Conta bloqueada!")
    }
    senao se(digita == senha){
      escreva("Acesso liberado!")
    }
  }  
  }
}

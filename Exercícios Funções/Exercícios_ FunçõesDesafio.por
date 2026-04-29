programa {
  funcao real soma(real num1, real num2){
    retorne num1 + num2
  }
  funcao real subtracao(real num1, real num2){
    retorne num1 - num2
  }
  funcao real divisao(real num1, real num2){
    retorne num1 / num2
  }
  funcao real multiplicacao(real num1, real num2){
    retorne num1 * num2
  }
  funcao real potencia(real num1, real num2){
    para(inteiro i = 0; i < num2; i++){
      num1 = num1 * num1
      retorne num1
    }
  }
  funcao inicio() {
    inteiro menu = -1
    real num1
    real num2

    enquanto(menu !=0){
     escreva("\n === CALCULADORA ===\n")
     escreva(" 1. Somar\n")
     escreva(" 2. Subtrair\n")
     escreva(" 3. Multiplicar\n")
     escreva(" 4. Dividir\n")
     escreva(" 5. Potência\n")
     escreva(" 0. Sair\n")
     leia(menu)
      escolha(menu){
      caso 1:
        escreva("Digite o primeiro número: \n")
        leia(num1)
        escreva("Digite o segundo número: \n")
        leia(num2)
        limpa()
        escreva("\n\n\nA soma do numero ", num1, " com o número ", num2, " é de ", soma(num1,num2),"\n")
        pare
      caso 2:
        escreva("Digite o primeiro número: \n")
        leia(num1)
        escreva("Digite o segundo número: \n")
        leia(num2)
        limpa()
        escreva("\n\n\nA subtracao do numero ", num1, " com o número ", num2, " é de ", subtracao(num1,num2),"\n")
        pare
      caso 3:
        escreva("Digite o primeiro número: \n")
        leia(num1)
        escreva("Digite o segundo número: \n")
        leia(num2)
        limpa()
        escreva("\n\n\nA divisao do numero ", num1, " com o número ", num2, " é de ", multiplicacao(num1,num2),"\n")
        pare
      caso 4:
        escreva("Digite o primeiro número: \n")
        leia(num1)
        escreva("Digite o segundo número: \n")
        leia(num2)
        limpa()
        escreva("\n\n\nA subtracao do numero ", num1, " com o número ", num2, " é de ", divisao(num1,num2),"\n")
        pare
      caso 5:
        escreva("Digite o primeiro número: \n")
        leia(num1)
        escreva("Digite a potencia: \n")
        leia(num2)
        limpa()
        escreva("\n\n\nA potencia do numero ", num1, " elevada a ", num2, " é de ", potencia(num1,num2),"\n")
        pare
      }
    }
  }
}

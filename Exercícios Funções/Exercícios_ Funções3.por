programa {
  funcao inicio() {
    real a
    real b
    

    escreva("Digite o primeiro número: \n")
    leia(a)
    escreva("Digite o segundo número: \n" )
    leia(b)
    limpa()

    escreva("A soma dos números é ",somar(a,b),"\n")
    escreva("A subtracao  dos números é ",subtrair(a,b),"\n")
    escreva("A multiplicacao  dos números é ",multiplicar(a,b),"\n")
    escreva("A divisão  dos números é ",dividir(a,b),"\n")
  }
  funcao real somar(real a, real b){
    retorne a + b
  }
  funcao real subtrair(real a, real b){
    retorne a - b
  }
  funcao real multiplicar(real a, real b){
    retorne a * b
  }
  funcao real dividir(real a, real b){
    retorne a / b
  }
}

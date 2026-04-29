programa {
  funcao inicio() {
    inteiro dia

    escreva("Digite um número correspondente ao dia da semana (1~7): ")
    leia(dia)

    escolha (dia){
      caso 1: 
        escreva("Segunda-Feira")
        pare
      caso 2:
        escreva("Terça-Feira")
        pare
      caso 3:
        escreva("Quarta-Feira")
        pare
      caso 4:
        escreva("Quinta-Feira")
        pare
      caso 5:
        escreva("Sexta-Feira")
        pare
      caso 6:
        escreva("Sábado")
        pare
      caso 7:
        escreva("Domingo")
        pare
      caso contrario:
        escreva ("Digite um número válido")  
    }
  }
}
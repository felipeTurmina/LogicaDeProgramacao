programa {
  funcao inicio() {
    
    inteiro opcao

     
    escreva("1 → Verão\n")
    escreva("2 → Outono\n")
    escreva("3 → Inverno\n")
    escreva("4 → Primavera\n")
    escreva ("Digite o número para exibir a estacao do ano: ")
      leia (opcao)
      limpa ()

      escolha (opcao){
        caso 1: escreva("Verão")
        pare
        caso 2: escreva("Outono")
        pare
        caso 3: escreva("Inverno")
        pare
        caso 4: escreva ("Primavera")
        pare
        caso contrario: opcao < 1 ou opcao > 4
        escreva ("Digite um número válido")
      } 
  }
}

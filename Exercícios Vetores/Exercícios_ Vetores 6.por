programa {
  funcao inicio() {
    inteiro numeros[5]
    inteiro busca
    inteiro encontrado = 0


    para(inteiro i = 0 ; i < 5;i++){
      escreva("Digite o ",i + 1,"º número: ")
      leia(numeros[i])
    }
      escreva("Digite um numero a ser buscado na lista: ")
      leia(busca)

      para(inteiro i = 0 ; i < 5; i++){
        se(busca == numeros[i]){
        escreva("Encontrado na posição ", i+1, "\n")
        encontrado = 1
        pare
        }
      }

      se(encontrado == 0){
      escreva("Número não encontrado")
      }   
  }
}

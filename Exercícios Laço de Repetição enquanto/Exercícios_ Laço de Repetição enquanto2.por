programa {
  funcao inicio() {
    
    inteiro nota = -1

    

    enquanto(nota <0 ou nota >10){

      escreva("Digite a nota (valor entre 0 e 10): ")
      leia (nota)
        se(nota < 0 ou nota >10){
          escreva(" Valor inválido! Nota digitada: ", nota , "\n")
        }
        senao{escreva("Nota registrada: ", nota)
        }
    }
    

  }
  }


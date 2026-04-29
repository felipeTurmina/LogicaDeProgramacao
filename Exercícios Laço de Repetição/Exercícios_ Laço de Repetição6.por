programa {
  funcao inicio() {

    inteiro alunos
    real nota, soma = 0, media

    escreva("Digite a quantidade de alunos: ")
    leia(alunos)

    se(alunos >=1){
      para(inteiro i = 1; i <= alunos; i++){
        escreva("Digite a nota do aluno ", i,": ")
        leia(nota)
        
        soma = soma + nota 
      }
        escreva("A média é de ", soma / alunos)
    }
    senao{escreva("Digite um número válido")}
    }
    
  }


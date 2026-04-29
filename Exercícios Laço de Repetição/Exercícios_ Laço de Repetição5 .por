programa {
  funcao inicio() {

    inteiro alunos
    real nota, soma = 0, media, notaIndividual

    escreva("Digite a quantidade de alunos: ")
    leia(alunos)

    se(alunos >=1){
      para(inteiro i = 1; i <= alunos; i++){
        escreva("Digite a nota do aluno ", i,": ")
        leia(nota)
        nota = nota2
        soma = soma + nota
        
      }
      para(inteiro i= 1; i <= alunos; i++){
        escreva("A nota do aluno ", i ," é de: ", nota2,"\n")
      }
        escreva("A média é de ", soma / alunos)
   
    }
    senao {escreva("Digite um numero válido")
    }
    }
    
  }


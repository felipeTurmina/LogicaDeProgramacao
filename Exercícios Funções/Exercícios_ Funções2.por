programa {
  funcao inicio() {
    cadeia nome[3]
    cadeia curso[3]

    para( inteiro i = 0; i < 3; i++){
      escreva("Digite seu nome: \n")
      leia(nome[i])
      escreva("Digite seu curso: \n")
      leia(curso[i])
    }
    para(inteiro j = 0; j <3; j++){
      saudar(nome[j],curso[j])
    }
    
  }
  funcao saudar(cadeia nome, cadeia curso){
    escreva("Olá, ", nome,"\n")
    escreva("Bem-vindo ao curso de ", curso,"\n")
  }
}

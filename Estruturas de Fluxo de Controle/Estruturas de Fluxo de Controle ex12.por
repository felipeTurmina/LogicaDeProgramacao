programa {
  funcao inicio() {
  inteiro idade

    escreva ("Digite sua idade: ")
    leia (idade)

    se (idade >= 0 e idade <= 11){
      escreva("Criança")
    }
    senao se (idade >=12 e idade <= 17){
      escreva("Adolescente")
    }
    senao se (idade >= 18 e idade <= 59){
      escreva("Adulto")
    }
    senao{escreva("Idoso")}

  }
}

programa {
  funcao inicio() {
  real altura
  real peso
  real imc

    escreva ("Digite sua altura em metros: ")
    leia (altura)

    escreva ("Digite seu peso em kg: ")
    leia (peso)

  imc = peso / (altura * altura)

    se (imc <18.5){
      escreva("Abaixo do peso")
    }
    senao se ( imc >= 18.6 e imc <= 24.9){
      escreva("Peso normal")
    }
    senao se ( imc >= 25 e imc <= 29.9){
      escreva("Sobrepeso")
    }
    senao se (imc >= 30 e imc <= 34.9){
      escreva("Obesidade grau I")
    }
    senao se (imc >= 35 e imc <= 39.9){
      escreva("Obesidade grau II")
    }
    senao{escreva("Obesidade grau III")}
  }  
}

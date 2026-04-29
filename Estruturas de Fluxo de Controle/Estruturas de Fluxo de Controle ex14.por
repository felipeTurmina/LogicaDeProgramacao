programa {
  funcao inicio() {
  real velocidade

  escreva ("Velocidade verificada é de (km/h): ")
  leia (velocidade)

  se (velocidade <= 80){
    escreva("Dentro do limite")
  }
  senao se (velocidade >=81 e velocidade <= 100){
    escreva("Infração leve (multa R$ 130)")
  }
  senao se (velocidade >= 101 e velocidade <= 120){
    escreva ("Infração média (multa R$ 195)")
  }
  senao{escreva("Infração grave (multa R$ 293 + suspensão)")}
  }  
}

programa {
  funcao inicio() {

   real valor 
   inteiro pessoas
   

   escreva ("Digite o número de pessoas: ")
   leia (pessoas)

   escreva ("Digite o valor total da conta:")
   leia (valor)

   escreva ("Cada pessoa deverá pagar R$", valor / pessoas, " sem gorjeta \n")
   escreva ("Cada pessoa deverá pagar R$", valor * 1.1 / pessoas, " com gorjeta")

  }
}

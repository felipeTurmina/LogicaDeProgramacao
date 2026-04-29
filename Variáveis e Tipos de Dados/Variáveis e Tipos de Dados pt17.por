programa {
  funcao inicio() {
   
   real salario
   real porcentagem
   real aumento

   escreva ("Digite o seu salário em R$:")
   leia (salario)
   escreva ("Digite a porcentagem de aumento: ")
   leia (porcentagem)

   aumento = salario * (porcentagem / 100.00)

   escreva ("O aumento salarial é de R$", aumento)

   escreva ("O novo salário é de R$", salario + aumento)

  }
}

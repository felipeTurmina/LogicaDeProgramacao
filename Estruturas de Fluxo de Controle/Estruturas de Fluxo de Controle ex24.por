programa {
  funcao inicio() {
    cadeia usuario = "admin"
    cadeia usuarioLogin
    inteiro senha = 123
    inteiro senhaLogin
    escreva("Digite o usuário: \n")
    leia (usuarioLogin)
    escreva ("Digite a senha: \n")
    leia(senhaLogin)

    se ( usuario == usuarioLogin e senha == senhaLogin){
      escreva("Acesso concedido!")
    }
    senao se (usuario == usuarioLogin e senha != senhaLogin){
      escreva("Senha incorreta.")
    }
    senao se (usuario != usuarioLogin){
      escreva("Usuário não encontrado.")
    } 
  }
}

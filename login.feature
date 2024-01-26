            #language: pt

            Funcionalidade: login da plataforma
            
            Como cliente da EBAC-SHOP
            Quero fazer o login (autenticação) na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que eu acesse a página de login na EBAC-SHOP

            Cenário: login válido
            Quando eu digitar o usuário "madalena@ebac.com.br"
            E a senha "senha@123"
            Então deve ser direcionado para a tela de checkout

            Esquema do Cenário: login inválido
            Quando eu digitar <usuario>
            E a <senha>
            Então deve exibir a <mensagem>

            Exemplos:
            | usuario                | senha       | mensagem                     |
            | "madalena@ebac.com.br" | "senja@124" | "Usuário ou senha inválidos" |
            | "madlena@ebac.com.br"  | "senha@123" | "Usuário ou senha inválidos" |

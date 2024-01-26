            #language: pt

            Funcionalidade: tela de cadastro - checkout
            
            Como cliente da EBAC-SHOP
            Quero concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que eu acesse a página de cadastro na EBAC-SHOP

            Cenário: cadastro válido
            Quando eu preencher todos os campos obrigatórios
            E e preencher com e-mail "madalena@ebac.com.br"
            Então deve exibir a página de finalização da compra

            Cenário: e-mail inválido
            Quando eu preencher todos os campos obrigatórios
            E e preencher o e-mail "madalena@con.br"
            Então deve exibir uma mensagem de erro: "E-mail inválido."

            Esquema do Cenário: dados obrigatórios não preenchidos
            Quando eu não preencher todos os campos obrigatórios
            E preencher com e-mail "madalena@ebac.com.br"
            Então deve exibir uma mensagem de alerta: "Campo obrigatório não preenchido."

            Exemplos:
            | nome       | sobrenome  | país     | endereço               | cidade      | cep         | telefone          |
            | "Madalena" | "Oliveira" |          | "Rua 1 de Maio, nº 01" | "São Paulo" |             | "(99) 99999-9999" |
            | "Madalena" | "Oliveira" | "Brasil" |                        | "São Paulo" | "12345-678" |                   |
            | "Madalena" | "Oliveira" | "Brasil" | "Rua 1 de Maio, nº 01" |             | "12345-678" | "(99) 99999-9999" |
            | "Madalena" | "Oliveira" |          | "Rua 1 de Maio, nº 01" | "São Paulo" | "12345-678" | "(99) 99999-9999" |
            | "Madalena" |            | "Brasil" | "Rua 1 de Maio, nº 01" | "São Paulo" |             | "(99) 99999-9999" |
            |            | "Oliveira" | "Brasil" | "Rua 1 de Maio, nº 01" | "São Paulo" | "12345-678" | "(99) 99999-9999" |



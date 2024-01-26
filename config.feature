            #language: pt

            Funcionalidade: Configurar produto
            
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho

            Contexto:
            Dado que eu acesse a página do produto na EBAC-SHOP

            Cenário: quantidade de produtos não permitida
            Quando eu selecionar a cor "Orange", o tamanho "XS" e a quantidade "12"
            E clicar no botão "comprar"
            Então deve ser exibida a mensagem: "Só é permitido 10 produtos por venda."

            Cenário: botão de limpar válido
            Quando eu selecionar os campos obrigatórios
            E clicar no botão "limpar"
            Então os dados devem voltar para o estado original

            Esquema do Cenário: configuração de produtos válida
            Quando eu selecionar <cor>, <tamanho> e <quantidade>
            E clicar no botão <acao>
            Então deve exibir a <mensagem>

            Exemplos:
            | cor      | tamanho | quantidade | acao      | mensagem              |
            | "Blue"   | "XS"    | "2"        | "Comprar" | "Carrinho atualizado" |
            | "Orange" | "S"     | "10"       | "Comprar" | "Carrinho atualizado" |
            | "Red"    | "XL"    | "1"        | "Comprar" | "Carrinho atualizado" |


            Tabela de dados:

            Funcionalidade: Configurar produto

            Cenário: configuração de produtos inválida
            Dado que eu acesse a página do produto na EBAC-SHOP e selecione as opções de:
            | cor    | tamanho | quantidade |
            | "Blue" | "XS"    |            | 
            |        | "S"     | "10"       |
            | "Red"  |         | "1"        | 
            Quando eu clicar no botão "Comprar"
            Então deve exibir a mensagem de alerta: "Selecionar todos os campos obrigatórios." 






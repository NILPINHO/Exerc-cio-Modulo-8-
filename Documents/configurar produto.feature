            #language: pt
            Funcionalidade: configuração de conta
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamnho e gosto
            E escolher quantidade
            Para depois inserir no carrinho

            Contexto:
            Dado que eu acesse o site EBAC-SHOP


            Cenário: Seleção de cor, tamanho e quantidade
            Quando eu preencher os campos cor, tamnho e quantidade
            Então devo inserir o produto no carrinho

            Cenário: Deve permitir apenas 10 produtos por compra
            Quando eu selecionar a quantidade de 11 produtos
            Então deve enviar uma mensagem de alerta "quantidade de produto excedida"

            Cenário: Quando clicar no botão "limpar" deve voltar ao estado original
            Quando clicar no botão limpar para excluir a quantidade de produto excedida
            Então deve voltar ao estado original

            Esquema do Cenário:
            Quando eu prencher os campos <cor>, <tamnho> e <quantidade>
            E for mais de 10 produtos
            Então deve enviar uma <mensagem> de alerta

            Exemplos:

            | Cor   | Tamnho | Quantidade | Mensagem                         |
            | "Red" | "G"    | "11"       | "Quantidade de produto excedida" |

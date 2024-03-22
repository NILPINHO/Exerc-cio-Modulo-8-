            #language: pt
            Funcionalidade: Concluir cadastro

            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que eu acesse a plataforma EBAC-SHOP

            Cenário: Cadastro com dados obrigatorios e asteriscos
            Quando eu inserir meus dados obrigatórios
            E marcado com asteriscos
            Então deve direcionar para finalizar compra

            Cenário: Dados inválidos
            Quando inserir o e-mail "nil.com@hotmail"
            Então deve mostrar uma mensagem de erro "formato de e-mail incorreto"

            Cenário: Campos vazio
            Quando finalizar o cadastro com campos vazio
            Então deve exibir uma mensagem de alerta "preenceher todos os campos"

            Esquema do Cenário:
            Quando eu inserir <usuario> e deixar o campos da <senha> vazio
            Então deve exibir uma <mensagem> de alerta
            Exemplos:

            | Usuário        | Senha | Mensagem             |
            | "nil@ebac.com" | "  "  | "Campos obrigatório" |
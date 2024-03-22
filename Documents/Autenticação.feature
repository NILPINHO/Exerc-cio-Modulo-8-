            #language: pt
            Funcionalidade: Fazer login (autenticação) na plataforma
            Como cliente da EBAC-SHOP
            Quero fazer o login "autenticação" na plataforma
            Para visualizar meus produtos

            Contexto:
            Dado que eu acesse EBAC-SHOP

            Cenário: Dados válidos
            Quando eu digitar o usuário "nilma@ebac.com"
            E senha "nil123"
            Então deve seer direcionado para tela de checkout

            Cenário: Dados inválidos
            Quando eu digitar o usuário "nil2341ghs"
            E senha "nil123"
            Entao deve ser exibido uma mensagem de alerta "usuário ou senha inválido"

            Esquema do Cenário:
            Quando eu digitar <usuario> e a <senha>
            Então deve aparecer <mensagem> de sucesso

            Exemplos:

            | Usuário          | Senha    | Mensagem    |
            | "nilma@ebac.com" | "nil123" | "ola nilma" |


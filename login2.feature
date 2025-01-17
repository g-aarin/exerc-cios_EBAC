            Funcionalidade: Tela de login
            Como cliente da EBAC-SHOP
            Quero fazer login na plataforma
            Para vizualiar meus pedidos

            Contexto:
            Dado que eu acesse a loja EBAC

            Cenario: Autenticação válida
            Quando colocar "gustavorezende@gmail.com"
            E colocar "gustavo@0602"
            Entao deve aparecer mensagem de boas vindas "Olá Gustavo"

            Cenario: Usuário não cadastrado
            Quando colocar "gustavoaraujo@gmail.com"
            E colocar "gustavo@0602"
            Entao deve aparecer mensagem "usuário não cadastrado!"

            Cenario: Senha inválida
            Quando digitar "gustavorezende@gmail.com"
            E digitar "gustavo@2309"
            Entao deve aparecer uma mensagem de aviso "Senha incorreta!"



            Esquema do Cenário: Multiplas autenticações válidas e inválidas
            Quando digitar o <usuario>, <emailCadastrado>, <senha>
            Entao deve aparecer <mensagem> de sucesso

            Exemplos: Válido

            | gustavoARJU | gustavorezende@gmail.com |  | gustavo@0602 |  | Olá Gustavo! |
            | beatrizR    | beatrizaraujo@gmail.com  |  | bibi@2309    |  | Olá Beatriz! |

            Exemplos: Inválidos

            | gustavoARJU | gustavoaraujo@gmail.com |  | gustavo@0602 |  | Usuario não cadastrado |
            | beatrizR    | beatrizaraujo@gmail.com |  | bibi@0602    |  | Senha incorreta!       |
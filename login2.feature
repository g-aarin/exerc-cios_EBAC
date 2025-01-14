Feature: Tela de login
    Como cliente da EBAC-SHOP
    Quero fazer login na plataforma
    Para vizualiar meus pedidos

    Background:
        Given que eu acesse a loja EBAC

    Scenario: Autenticação válida
        When eu colocar "gustavorezende@gmail.com"
        And eu colocar "gustavo@0602"
        Then deve ser redirecionado ao checkout e aparecer mensagem de boas vindas "Olá Gustavo"

    Scenario: Usuário não cadastrado
        When eu colocar "gustavoaraujo@gmail.com"
        And eu colocar "gustavo@0602"
        Then deve aparecer mensagem "usuário não cadastrado!"

    Scenario: Senha inválida
        When eu digitar "gustavorezende@gmail.com"
        And eu digitar "gustavo@2309"
        Then deve aparecer uma mensagem de aviso "Senha incorreta!"



    Scenario Outline: Multiplas autenticações válidas e inválidas
        When deve digitar o <usuario> ou <emailCadastrado>
        And deve digitar a <senha>
        Then deve aparecer <mensagem> de sucesso

        Examples: Válido

            | gustavoARJU | gustavorezende@gmail.com |  | gustavo@0602 |  | Olá Gustavo! |
            | beatrizR    | beatrizaraujo@gmail.com  |  | bibi@2309    |  | Olá Beatriz! |

        Examples: Inválidos

            | gustavoARJU | gustavoaraujo@gmail.com |  | gustavo@0602 |  | Usuario não cadastrado |
            | beatrizR    | beatrizaraujo@gmail.com |  | bibi@0602    |  | Senha incorreta!       |
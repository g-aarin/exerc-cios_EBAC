Feature: Checkout ou Tela de cadastro
    Como cliente da EBAC-SHOP
    Quero concluir meu cadastro
    Para finalizar a minha compra

    Background:
        Given eu tente finalizar a compra sem cadastro
        Then deve mandar o usuário a página de cadastro/Checkout

    Scenario: Cadastro válido
        When preencher todos os campos obrigatórios
        And o sistema deve válidar como informações existentes
        Then deve cadastrar as informações no sistema
        And redirecionar o usuário ao sistema de pagamento

    Scenario: Cadastro inválido com o campo vazio
        When o usuario não preencher os campos obrigatórios
        And tentar finalizar o cadastro
        Then deve aparecer uma mensagem "Campos Obrigatórios não preenchidos!"

    Scenario: Cadastro inválido
        When o usuário digitar "gustavorezendegmail.com"
        And o sistema verificar se o endereço de email deve válidar ou inválidar
        Then caso o endereço de email esteja fora do formato, deve aparecer a mensagem "Email inválido"

    Scenario Outline: Cadastros inválidos e válidos
        Examples:

            | Email                    | Confirmação de email     | Sistema  |  | Mensagem            |
            | gustavorezende@gmail.com | gustavorezende@gmail.com | Válido   |  | Cadastro Realizado! |
            | gustavorezendegmail.com  | gustavorezende@gmail.com | Inválido |  | Email inválido!     |

            | CEP          | Sistema  | Aviso                 |
            | *campoVazio* | Inválido | *Campos Obrigatórios* |
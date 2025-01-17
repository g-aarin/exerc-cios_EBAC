            Funcionalidade: Checkout ou Tela de cadastro
            Como cliente da EBAC-SHOP
            Quero concluir meu cadastro
            Para finalizar a minha compra

            Contexto:
            Dado eu tente finalizar a compra sem cadastro
            Entao deve mandar o usuário a página de cadastro/Checkout

            Cenario: Cadastro válido
            Quando o usuario preencher todos os campos obrigatórios
            Entao o sistema deve validar as informações (Enviar o usuário para o checkout.)

            Cenario: Cadastro inválido com o campo vazio
            Quando o usuario deixar de preencher um campo obrigatório
            Entao deve aparecer um aviso " *Campo Obrigatório* "

            Cenario: Cadastro inválido
            Quando o usuário digitar "gustavorezendegmail.com"
            Entao deve aparecer um aviso "Email inválido"

            Esquema do Cenario: Cadastros inválidos e válidos
            Exemplos:

            | Email                    | Confirmação de email     | Sistema  |  | Mensagem            |
            | gustavorezende@gmail.com | gustavorezende@gmail.com | Válido   |  | Cadastro Realizado! |
            | gustavorezendegmail.com  | gustavorezende@gmail.com | Inválido |  | Email inválido!     |

            | CEP          | Sistema                            |
            | *campoVazio* | Gerar um aviso *Campo Obrigatório* |
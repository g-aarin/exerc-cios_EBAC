Feature: Configurar produto
    Como cliente da EBAC-Shop
    Quero configurar meu produto de acordo com meu tamanho e gosto
    e escolher a quantidade
    para depois inserir no carrinho

    Background:
        Given o produto selecionado

    Scenario: Processo de adição ao carrinho válido
        When o usuario escolher o <tamanho>
        And escolher a <cor>
        And escolher a <quantidade>
        Then deve inserir ao carrinho após os requisitos preenchidos
        When selecionado a opção limpar
        Then deve limpar as opções selecionadas acima voltando para o original

    Scenario: Adicionando no carrinho inválida
        When o usuario não escolher o <tamanho>
        And o escolher a <cor>
        And o usuario escolher a quantidade
        Then mostrar uma janela interativa nova para ele colocar as opções ausentes

        Examples: Valído

            | Tamanho | Cor      | Qtd. |
            | P       | Amarelo  | 1    |
            | M       | Laranja  | 4    |
            | G       | Vermelho | 2    |
            | GG      | Azul     | 7    |

        Examples: Inválido

            | Tamanho |   Cor    | Qtd. | 
            | *vazio* | Amarelo  | 1    |
            | M       | *vazio*  | 1    |
            | *vazio* | *vazio*  | 1    |
            | GG      | Azul     | 11   |


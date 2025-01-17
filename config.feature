            Funcionalidade: Configurar produto
            Como cliente da EBAC-Shop
            Quero configurar meu produto de acordo com meu tamanho e gosto
            e escolher a quantidade
            para depois inserir no carrinho

            Contexto:
            Quando o produto for selecionado

            Cenario: Processo de adição ao carrinho válido
            Quando o usuario escolher o <tamanho>, <cor>, <quantidade>
            Entao deve inserir ao carrinho
            Quando selecionado a opção limpar
            Entao deve limpar as opções selecionadas acima voltando para o original

            Cenario: Adicionando no carrinho inválida
            Quando o usuario não escolher o <tamanho>, <cor>, <quantidade>
            Entao deve mostrar uma janela interativa nova para ele colocar as opções ausentes

            Exemplos: Valído

            | Tamanho | Cor      | Qtd. |
            | P       | Amarelo  | 1    |
            | M       | Laranja  | 4    |
            | G       | Vermelho | 2    |
            | GG      | Azul     | 7    |

            Exemplos: Inválido

            | Tamanho | Cor     | Qtd. |
            | *vazio* | Amarelo | 1    |
            | M       | *vazio* | 1    |
            | *vazio* | *vazio* | 1    |
            | GG      | Azul    | 11   |


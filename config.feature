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

            Cenario: Processo de voltar aos padrões
            Quando selecionado a opção limpar
            Entao deve limpar as opções selecionadas acima voltando para o original

            Cenario: Adicionando no carrinho inválida
            Quando o usuario não escolher o <tamanho>, <cor>, <quantidade>
            Entao deve mostrar uma janela interativa nova para ele colocar as opções ausentes

            Esquema do Cenario: Processo de adição ao carrinho válido e inválido.
            Quando selecionadas as opções desejadas
            Entao deve validar as informações (Enviar o usuário para checkout.)

            Exemplos: Valído e Inválido 

            | Tamanho | Cor      | Qtd. |
            | P       | Amarelo  | 1    |
            | M       | Azul     | 4    |
            | *vazio* | Vermelho | 2    |
            | *vazio* | *vazio*  | 7    |
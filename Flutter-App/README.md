#Loja Flutter - Avaliação UniSENAI

Projeto desenvolvido por Lucas Tunes Poliseli, Isadora de Souza Peixoto e Suelem Antunes Waldrigues, estudantes de Análise e Desenvolvimento de Sistemas

Aplicação Flutter simulando uma loja virtual, desenvolvida como atividade acadêmica.

Versão do FlutLab: flutter 3.29

Como executar o projeto:

1-Pré-requisitos: ter o Flutter SDK instalado.

Verifique com: flutter --version

2-Clonar o repositório:
git clone <URL_DO_SEU_REPOSITORIO>
cd flutter_store

3-Instalar dependências:
flutter pub get

4-Executar:

No emulador Android/iOS: flutter run

No navegador (Flutter Web): flutter run -d chrome


#Telas implementadas:

Splash: tela inicial com logo e carregamento animado.

Login: campos de e-mail e senha, com validação de campos obrigatórios.

Cadastro: nome, e-mail, senha e confirmação de senha, com validação.

Home: contém AppBar, Drawer e BottomNavigationBar para navegação.

Início: mensagem de boas-vindas.

Produtos: lista de produtos com imagem, preço e opção de favoritar.

Detalhes: exibe imagem, nome, descrição e preço de um produto, além de botão de favoritar/desfavoritar.

Favoritos: lista apenas dos produtos favoritados pelo usuário.

Sobre: informações estáticas sobre o aplicativo.



#Observações e limitações:

O gerenciamento de favoritos é feito com setState, não foi usado um banco de dados.

As imagens dos produtos foram escolhidas de links da internet da escolha do grupo (placeholders), .

O app não possui autenticação real — o login/cadastro são apenas simulações.

Uma limitação é que no login, é possível colocar qualquer palavra ou letra e a aplicação ainda aceita para entrar. Mas foi implementada a funcionalidade de criar conta, ele aceita conta, verifica a conta ...

Projeto focado em front-end com Flutter, usando os principais widgets: Container, Row, Column, ListView, TextField, Drawer, navegação com Navigator, e gerenciamento simples de estado.
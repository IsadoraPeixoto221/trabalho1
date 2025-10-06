class Produto {
  final int id;
  final String nome;
  final String descricao;
  final double preco;
  final String imagemUrl;
  bool favorito;

  Produto({
    required this.id,
    required this.nome,
    required this.descricao,
    required this.preco,
    required this.imagemUrl,
    this.favorito = false,
  });
}

final listaProdutos = <Produto>[
  Produto(
    id: 1,
    nome: 'Adesivos',
    descricao: 'Adesivos divertidos para amantes do Flutter.',
    preco: 89.90,
    imagemUrl:
        'https://ih1.redbubble.net/image.1097116877.5862/st,small,507x507-pad,600x600,f8f8f8.u2.jpg',
  ),
  Produto(
    id: 2,
    nome: 'Caneca',
    descricao: 'Caneca branca para recarregar sua energia com estilo.',
    preco: 49.90,
    imagemUrl:
        'https://cdn.awsli.com.br/600x700/2517/2517292/produto/186095082/d0ef29672b.jpg',
  ),
  Produto(
    id: 3,
    nome: 'Moletom Debugging',
    descricao: 'Moletom unissex para devs estilosos.\n'
        'Tamanho ÚNICO.\n'
        'Material: 100% algodão, confortável e durável.\n'
        'Cor: Preto com estampa branca.',
    preco: 250.00,
    imagemUrl:
        'https://acdn-us.mitiendanube.com/stores/003/290/789/products/moletom-preto-f13e8f8f5d35418b4117115852458338-640-0.jpg',
  ),
  Produto(
    id: 4,
    nome: 'Mousepad Flutter',
    descricao: 'Mousepad Flutter para devs com bom gosto.',
    preco: 159.90,
    imagemUrl:
        'https://cdn.awsli.com.br/1943/1943462/produto/1964832013c214f83c9.jpg',
  ),
  Produto(
    id: 5,
    nome: 'Teclado Colorido',
    descricao:
        'Mousepad Gamer RGB XXL Superfície antiderrapante e costura reforçada, com iluminação em 7 cores para uma experiência imersiva.',
    preco: 299.90,
    imagemUrl:
        'https://images0.kabum.com.br/produtos/fotos/662630/teclado-sem-fio-mecanico-gamer-redragon-elf-pro-rgb-usb-e-bluetooth-abnt2-cristalino-transparente-k649ct-rgb-pro-pt_1751889821_gg.jpg',
  ),
  Produto(
      id: 6,
      nome: 'Cadeira Gamer',
      descricao:
          'Cadeira Gamer ergonômica com ajuste de altura e encosto reclinável.\nRevestimento em couro sintético resistente.\nEspuma de alta densidade para maior conforto.\nDesign esportivo azul e preto, ideal para gamers e home office.',
      preco: 850,
      imagemUrl:
          'https://lojagoldentec.vteximg.com.br/arquivos/ids/165902-1000-1000/image-cff5e7dc880d4c21bb11ed10984a894b.jpg?v=638483534503930000'),
  Produto(
      id: 7,
      nome: 'Monitor IPS 24 " Samsung Full HD',
      descricao:
          'Monitor Samsung 24" com painel IPS Full HD — cores fiéis, amplo ângulo de visão e design elegante, perfeito para trabalho, estudos e entretenimento',
      preco: 900,
      imagemUrl: 'https://i.zst.com.br/thumbs/12/32/30/1977660648.jpg')
];

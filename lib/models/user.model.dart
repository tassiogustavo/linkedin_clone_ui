class UserModel {
  final String name;
  final String description;
  final String urlProfile;
  final String urlPost;
  final String occupation;
  final String datePost;
  final int reactions;
  final String actions;

  UserModel({
    required this.name,
    required this.description,
    required this.urlProfile,
    required this.urlPost,
    required this.occupation,
    required this.datePost,
    required this.reactions,
    required this.actions,
  });
}

List<UserModel> userData = [
  UserModel(
    name: "Mark Zuckerberg",
    description: 'Trabalho em time na terça feira',
    urlProfile: 'https://upload.wikimedia.org/wikipedia/commons/1/14/Mark_Zuckerberg_F8_2018_Keynote_%28cropped_2%29.jpg',
    urlPost: 'https://i.insider.com/5a2834f2f914c31f008b854e?width=600&format=jpeg&auto=webp',
    occupation: "CEO Facebook",
    datePost: "1d",
    reactions: 2300,
    actions: '50 comments · 7 shares',
  ),
  UserModel(
    name: "Elon Musk",
    description: 'Foguete não tem ré',
    urlProfile: 'https://upload.wikimedia.org/wikipedia/commons/e/ed/Elon_Musk_Royal_Society.jpg',
    urlPost: 'https://classic.exame.com/wp-content/uploads/2021/05/elon-musk.jpg?quality=70&strip=info&w=1024',
    occupation: "CEO Tesla | CEO SpaceX",
    datePost: "2w",
    reactions: 60000,
    actions: '1.200 comments · 189 shares',
  ),
  UserModel(
    name: "Thiago Nigro",
    description: 'Promoção relampago do meu novo livro, corre aproveitar',
    urlProfile: 'https://www.suno.com.br/wp-content/uploads/2021/04/Thiago-Nigro-2.jpg',
    urlPost: 'https://a-static.mlcdn.com.br/1500x1500/title-reference/magazineluiza/229459000/78f0e1fc4453facea2ccad4f71a3ad39.jpg',
    occupation: "Primo Rico",
    datePost: "5h",
    reactions: 500,
    actions: '25 comments · 5 shares',
  ),
  UserModel(
    name: "Caito Maia",
    description: 'Sonhar é a melhor realidade que se pode viver',
    urlProfile: 'https://assets.propmark.com.br/uploads/2022/05/Caito-Maia--3-.jpg',
    urlPost: 'https://presleyson.com.br/wp-content/uploads/2020/08/caito_1200x630-min.png',
    occupation: "CEO Chilli Beans",
    datePost: "2a",
    reactions: 200,
    actions: '7 comments',
  ),
  UserModel(
    name: "Dave Mustaine",
    description: 'Não faço mais parte do Metallica, Angra me contrata!!',
    urlProfile: 'https://portalpopline.com.br/wp-content/uploads/2021/12/Megadeth-Dave-Mustaine-2.jpg',
    urlPost: 'https://i0.wp.com/igormiranda.com.br/wp-content/uploads/2021/09/metallica-dave-mustaine-1983.jpg?fit=1500%2C785&ssl=1',
    occupation: "Ex Metallica | Lead vocal | Base Vocal",
    datePost: "40a",
    reactions: 90000,
    actions: '2495 comments · 98 shares',
  ),
];

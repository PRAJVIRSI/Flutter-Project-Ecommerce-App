class Product {
  String name;
  String description;
  double price;
  String imageUrl;

  Product(
     this.name,
     this.description,
     this.price,
     this.imageUrl,
  );

  static List<Product> products = [
    Product(
      'GTA V',
      'Grand Theft Auto V is an action-adventure game played from either a third-person or first-person perspective.',
      44.78,
      'images/GTAV.png',
    ),
    Product(
      'COD Modern Warfare 3',
      'COD: Modern Warfare 3 is a first-person shooter video game, the eighth installment in the Call of Duty series.',
      48.89,
      'images/cod3.png',
    ),
    Product(
      'Diablo IV',
      'Diablo IV is an upcoming action role-playing game developed and published by Blizzard Entertainment.',
      53.89,
      'images/diablo4.png',
    ),
    Product(
      'WWE 2K24',
      'WWE 2K24 is a professional wrestling video game developed by Visual Concepts and published by 2K Sports.',
      79.78,
      'images/wwe.png',
    ),
    Product(
      'FIFA 23',
      'FIFA 23 is a football simulation video game published by Electronic Arts as part of the FIFA series.',
      41.69,
      'images/fifa23.jpg',
    ),
    Product(
      'NFS Unbound',
      'Need for Speed Unbound is a racing video game, the twenty-fourth installment in the Need for Speed series.',
      13.49,
      'images/nfs.png',
    ),
    Product(
      'Spider-Man 2',
      'Spider-Man 2 is an action-adventure game developed by Insomniac Games and published by Sony Interactive Entertainment.',
      89.56,
      'images/spider.jpeg',
    ),
    Product(
      'Witcher 3',
      'The Witcher 3: Wild Hunt is an action role-playing game developed and published by CD Projekt.',
      30.65,
      'images/witcher3.jpg',
    ),
    Product(
      'Hogwards Legacy',
      'Hogwarts Legacy is an upcoming action role-playing video game set in the Harry Potter universe.',
      49.99,
      'images/hogwards.jpg',
    ),
    Product(
      'Red Dead Redemption 2',
      'RDR 2 is an action-adventure game developed and published by Rockstar Games.',
      79.96,
      'images/rdr2.jpg',
    ),
    Product(
      'Bayonetta',
      'Bayonetta is an action-adventure hack and slash video game developed by PlatinumGames.',
      60.00,
      'images/Bayonetta.png',
    ),
  ];

}
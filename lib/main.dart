import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Menu du Restaurant',
      theme: ThemeData(primarySwatch: Colors.orange),
      home: RestaurantMenuPage(),
    );
  }
}

class RestaurantMenuPage extends StatefulWidget {
  @override
  _RestaurantMenuPageState createState() => _RestaurantMenuPageState();
}

class _RestaurantMenuPageState extends State<RestaurantMenuPage> {
  final List<String> categories = [
    'Nos entrées délicieuses',
    'Nos plats hors du commun',
    'Des desserts savoureux'
  ];

  String selectedCategory = 'Nos entrées délicieuses';

  // Données des plats codées en dur
  final List<Map<String, dynamic>> allDishes = [
    {
      'category': 'Nos entrées délicieuses',
      'name': 'Salade Verte',
      'image': 'https://fac.img.pmdstatic.net/fit/~1~fac~2022~06~02~088d9847-ea9c-41bc-aa76-2ce921f7819c.jpeg/750x562/quality/80/crop-from/center/cr/wqkgYS1sZXNhIHN1ciBJc3RvY2twaG90byAvIEZlbW1lIEFjdHVlbGxl/salade-verte-nos-recettes-vraiment-originales-pour-en-profiter.jpeg',
      'price': 5.99,
      'description': 'Une salade fraîche avec des légumes croquants.',
    },
    {
      'category': 'Nos entrées délicieuses',
      'name': 'Soupe du jour',
      'image': 'https://images.unsplash.com/photo-1623337034690-0e88825e6d4e?q=80&w=3174&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'price': 4.50,
      'description': 'Soupe maison avec ingrédients locaux.',
    },
    {
      'category': 'Nos entrées délicieuses',
      'name': 'Bruschetta Tomate-Basilic',
      'image':
      'https://images.unsplash.com/photo-1630230596557-ad07b433f5c0?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'price': 6.50,
      'description':
      'Tranches de pain grillé avec tomates fraîches et basilic parfumé.',
    },
    {
      'category': 'Nos entrées délicieuses',
      'name': 'Tartare de Saumon',
      'image':
      'https://images.unsplash.com/photo-1735315050688-010b5b548054?q=80&w=3085&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'price': 8.99,
      'description':
      'Saumon frais coupé en dés avec citron, câpres et herbes fines.',
    },
    {
      'category': 'Nos entrées délicieuses',
      'name': 'Carpaccio de Bœuf',
      'image':
      'https://images.unsplash.com/photo-1668887465701-41fee9e1d474?q=80&w=3144&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'price': 9.50,
      'description':
      'Fines tranches de bœuf accompagnées de roquette et copeaux de parmesan.',
    },
    {
      'category': 'Nos entrées délicieuses',
      'name': 'Velouté de Potiron',
      'image':
      'https://plus.unsplash.com/premium_photo-1669559809615-b08af364b738?q=80&w=3083&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'price': 5.75,
      'description': 'Velouté crémeux au potiron, parfait pour l\'automne.',
    },
    {
      'category': 'Nos entrées délicieuses',
      'name': 'Mini Quiches Variées',
      'image':
      'https://i.postimg.cc/X7fvNbwn/mini-quiches.jpg',
      'price': 7.00,
      'description': 'Mini quiches avec garnitures diverses pour débuter en douceur.',
    },
    {
      'category': 'Nos plats hors du commun',
      'name': 'Steak Frites',
      'image': 'https://upload.wikimedia.org/wikipedia/commons/6/62/Steak_frites.jpg',
      'price': 15.99,
      'description': 'Steak juteux accompagné de frites croustillantes.',
    },
    {
      'category': 'Nos plats hors du commun',
      'name': 'Pâtes Carbonara',
      'image': 'https://images.unsplash.com/photo-1588013273468-315fd88ea34c?q=80&w=2969&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'price': 12.50,
      'description': 'Pâtes avec une sauce crémeuse et bacon.',
    },
    {
      'category': 'Nos plats hors du commun',
      'name': 'Poulet Rôti aux Herbes',
      'image':
      'https://images.unsplash.com/photo-1700956026134-107cfb1cc7b1?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'price': 13.99,
      'description': 'Poulet rôti aux herbes de Provence, accompagné de légumes.',
    },
    {
      'category': 'Nos plats hors du commun',
      'name': 'Poisson Grillé',
      'image':
      'https://images.unsplash.com/photo-1600699899970-b1c9fadd8f9e?q=80&w=3174&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'price': 14.50,
      'description': 'Filet de poisson grillé, servi avec une sauce citronnée. Selon arrivage du jour.',
    },
    {
      'category': 'Nos plats hors du commun',
      'name': 'Risotto aux Champignons',
      'image':
      'https://images.unsplash.com/photo-1609770424775-39ec362f2d94?q=80&w=2982&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'price': 16.00,
      'description':
      'Risotto crémeux aux champignons sauvages et parmesan râpé.',
    },
    {
      'category': 'Nos plats hors du commun',
      'name': 'Burger Gourmet',
      'image':
      'https://images.unsplash.com/photo-1627378378955-a3f4e406c5de?q=80&w=3156&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'price': 14.99,
      'description':
      'Burger de qualité avec viande premium et garnitures originales.',
    },
    {
      'category': 'Nos plats hors du commun',
      'name': 'Curry de Légumes',
      'image':
      'https://images.unsplash.com/photo-1596797038530-2c107229654b?q=80&w=3024&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'price': 11.50,
      'description':
      'Curry végétarien riche en épices, accompagné de riz basmati.',
    },
    {
      'category': 'Des desserts savoureux',
      'name': 'Crème Brûlée',
      'image': 'https://images.unsplash.com/photo-1676300184943-09b2a08319a3?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'price': 6.00,
      'description': 'Dessert classique avec une croûte caramélisée.',
    },
    {
      'category': 'Des desserts savoureux',
      'name': 'Tarte aux Fruits',
      'image': 'https://images.unsplash.com/photo-1572383672419-ab35444a6934?q=80&w=2448&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'price': 5.50,
      'description': 'Tarte légère et fruitée pour finir en beauté.',
    },
    {
      'category': 'Des desserts savoureux',
      'name': 'Mousse au Chocolat',
      'image':
      'https://plus.unsplash.com/premium_photo-1674176787609-82eb81bea0d8?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'price': 6.50,
      'description': 'Mousse légère et aérienne au chocolat noir intense.',
    },
    {
      'category': 'Des desserts savoureux',
      'name': 'Profiteroles',
      'image':
      'https://images.unsplash.com/photo-1606163050754-05a6a7530815?q=80&w=3027&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'price': 7.00,
      'description': 'Petits choux garnis de crème onctueuse et nappés de chocolat.',
    },
    {
      'category': 'Des desserts savoureux',
      'name': 'Cheesecake',
      'image':
      'https://images.unsplash.com/photo-1524351199678-941a58a3df50?q=80&w=2942&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'price': 7.50,
      'description': 'Cheesecake crémeux avec une base biscuitée, un délice en bouche.',
    },
    {
      'category': 'Des desserts savoureux',
      'name': 'Fondant au Chocolat',
      'image':
      'https://i.postimg.cc/g2dtQfyw/1575898110-fondant-au-chocolat.jpg',
      'price': 6.75,
      'description': 'Gâteau fondant au cœur coulant pour les amateurs de chocolat.',
    },
    {
      'category': 'Des desserts savoureux',
      'name': 'Glace Artisanale',
      'image':
      'https://plus.unsplash.com/premium_photo-1661601634359-43cc1f37ede2?q=80&w=2942&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'price': 5.00,
      'description': 'Glace faite maison aux saveurs authentiques et rafraîchissantes.',
    },
  ];

  List<Map<String, dynamic>> get filteredDishes =>
      allDishes.where((dish) => dish['category'] == selectedCategory).toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("Menu du Restaurant d'Olivier 👨🏻‍🍳"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10),
          SizedBox(
            height: 50,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              padding: EdgeInsets.symmetric(horizontal: 10),
              separatorBuilder: (_, __) => SizedBox(width: 8),
              itemBuilder: (context, index) {
                final category = categories[index];
                final isSelected = category == selectedCategory;
                return ChoiceChip(
                  label: Text(
                    category,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: isSelected ? Colors.white : Colors.black,
                    ),
                  ),
                  selected: isSelected,
                  selectedColor: Colors.orange,
                  backgroundColor: Colors.orange[100],
                  onSelected: (_) {
                    setState(() {
                      selectedCategory = category;
                    });
                  },
                );
              },
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            child: AnimatedSwitcher(
              duration: Duration(milliseconds: 300),
              switchInCurve: Curves.easeIn,
              switchOutCurve: Curves.easeOut,
              child: ListView.builder(
                key: ValueKey<String>(selectedCategory),
                padding: EdgeInsets.symmetric(horizontal: 10),
                itemCount: filteredDishes.length,
                itemBuilder: (context, index) {
                  final dish = filteredDishes[index];
                  return DishCard(dish: dish);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DishCard extends StatelessWidget {
  final Map<String, dynamic> dish;
  const DishCard({required this.dish});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8),
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                dish['image'],
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    dish['name'],
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                  Text(
                    '€${dish['price'].toStringAsFixed(2)}',
                    style: TextStyle(color: Colors.green[700]),
                  ),
                  SizedBox(height: 5),
                  Text(
                    dish['description'],
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
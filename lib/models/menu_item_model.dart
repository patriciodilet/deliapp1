import 'package:equatable/equatable.dart';

class MenuItem extends Equatable {
  final int id;
  final int restaurantId;
  final String name;
  final String category;
  final String description;
  final double price;

  MenuItem({
    required this.id,
    required this.restaurantId,
    required this.name,
    required this.category,
    required this.description,
    required this.price,
  });

  @override
  List<Object?> get props => [
        id,
        restaurantId,
        name,
        category,
        description,
        price,
      ];

  static List<MenuItem> menuItems = [
    MenuItem(
      id: 1,
      restaurantId: 1,
      name: 'Clavos',
      category: 'Ferretería',
      description: 'clavos, tornillos',
      price: 2990,
    ),
    MenuItem(
      id: 2,
      restaurantId: 1,
      name: 'Tornillos',
      category: 'Ferretería',
      description: 'Clavos, tornillos',
      price: 4990,
    ),
    MenuItem(
      id: 3,
      restaurantId: 1,
      name: 'Cerámica',
      category: 'Pisos',
      description: 'Cerámica, pastelones',
      price: 14990,
    ),
    MenuItem(
      id: 4,
      restaurantId: 1,
      name: 'Pastelones',
      category: 'Pisos',
      description: 'Pastelones, ceramicos',
      price: 24990,
    ),
    MenuItem(
      id: 5,
      restaurantId: 1,
      name: 'Esmeril',
      category: 'Máquinas',
      description: 'Esmeril angular',
      price: 11.990,
    ),
    MenuItem(
      id: 6,
      restaurantId: 1,
      name: 'Fusibles',
      category: 'Hogar',
      description: 'Fusibles para calefont',
      price: 1990,
    ),
    MenuItem(
      id: 7,
      restaurantId: 2,
      name: 'Gásfiter',
      category: 'Servicios',
      description: 'Gasfiter certificados',
      price: 12990,
    ),
    MenuItem(
      id: 8,
      restaurantId: 3,
      name: 'Cerrajería',
      category: 'Servicios',
      description: 'Cerrajeros expertos',
      price: 12990,
    ),
    MenuItem(
      id: 9,
      restaurantId: 2,
      name: 'Cifón',
      category: 'Hogar',
      description: 'Cifón para baño',
      price: 16990,
    ),
    MenuItem(
      id: 10,
      restaurantId: 3,
      name: 'Piso flotante',
      category: 'Pisos',
      description: 'Piso flotante de madera',
      price: 9990,
    ),
    MenuItem(
      id: 11,
      restaurantId: 4,
      name: 'Cemento',
      category: 'Ferretería',
      description: 'Cemento Sandía',
      price: 19990,
    )
  ];
}

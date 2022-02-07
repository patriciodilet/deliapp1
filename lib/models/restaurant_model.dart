import 'package:equatable/equatable.dart';

import 'menu_item_model.dart';

class Restaurant extends Equatable {
  final int id;
  final String name;
  final String imageUrl;
  final List<String> tags;
  final List<MenuItem> menuItems;
  final int deliveryTime;
  final String priceCategory;
  final double deliveryFee;
  final double distance; // TODO: Calculate distance between user and restaurant

  const Restaurant({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.tags,
    required this.menuItems,
    required this.deliveryTime,
    required this.priceCategory,
    required this.deliveryFee,
    required this.distance,
  });

  @override
  List<Object> get props {
    return [
      id,
      name,
      imageUrl,
      tags,
      menuItems,
      deliveryTime,
      priceCategory,
      deliveryFee,
      distance,
    ];
  }

  static List<Restaurant> restaurants = [
    Restaurant(
      id: 1,
      name: 'Ferretería Imperial',
      imageUrl:
          'https://images.unsplash.com/photo-1631856955350-77f4023dff2b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=876&q=80',
      tags: MenuItem.menuItems
          .where((menuItem) => menuItem.restaurantId == 1)
          .map((menuItem) => menuItem.category)
          .toSet()
          .toList(),
      menuItems: MenuItem.menuItems
          .where((menuItem) => menuItem.restaurantId == 1)
          .toList(),
      deliveryTime: 60,
      priceCategory: '\$',
      deliveryFee: 4990,
      distance: 0.1,
    ),
    Restaurant(
      id: 2,
      name: 'Sodimac Constructor',
      imageUrl:
          'https://images.unsplash.com/photo-1542238060-646c7ed65622?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
      tags: MenuItem.menuItems
          .where((menuItem) => menuItem.restaurantId == 2)
          .map((menuItem) => menuItem.category)
          .toSet()
          .toList(),
      menuItems: MenuItem.menuItems
          .where((menuItem) => menuItem.restaurantId == 2)
          .toList(),
      deliveryTime: 30,
      priceCategory: '\$',
      deliveryFee: 4990,
      distance: 0.1,
    ),
    Restaurant(
      id: 3,
      name: 'Yolito',
      imageUrl:
          'https://images.unsplash.com/photo-1631856954913-c751a44490ec?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
      tags: MenuItem.menuItems
          .where((menuItem) => menuItem.restaurantId == 3)
          .map((menuItem) => menuItem.category)
          .toSet()
          .toList(),
      menuItems: MenuItem.menuItems
          .where((menuItem) => menuItem.restaurantId == 3)
          .toList(),
      deliveryTime: 30,
      priceCategory: '\$',
      deliveryFee: 4990,
      distance: 0.1,
    ),
    Restaurant(
      id: 4,
      name: 'FerreTODO',
      imageUrl:
          'https://images.unsplash.com/photo-1631856954655-966f97d809de?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=846&q=80',
      tags: MenuItem.menuItems
          .where((menuItem) => menuItem.restaurantId == 4)
          .map((menuItem) => menuItem.category)
          .toSet()
          .toList(),
      menuItems: MenuItem.menuItems
          .where((menuItem) => menuItem.restaurantId == 4)
          .toList(),
      deliveryTime: 30,
      priceCategory: '\$',
      deliveryFee: 4990,
      distance: 0.1,
    ),
    Restaurant(
      id: 5,
      name: 'Easy',
      imageUrl:
          'https://images.unsplash.com/photo-1631856956334-35db20cb7748?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
      tags: MenuItem.menuItems
          .where((menuItem) => menuItem.restaurantId == 5)
          .map((menuItem) => menuItem.category)
          .toSet()
          .toList(),
      menuItems: MenuItem.menuItems
          .where((menuItem) => menuItem.restaurantId == 5)
          .toList(),
      deliveryTime: 30,
      priceCategory: '\$',
      deliveryFee: 4990,
      distance: 0.4,
    )
  ];
}

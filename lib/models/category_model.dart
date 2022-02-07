import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class Category extends Equatable {
  final int id;
  final String name;
  final Image image;

  Category({
    required this.id,
    required this.name,
    required this.image,
  });

  @override
  List<Object?> get props => [name, image];

  static List<Category> categories = [
    Category(
      id: 1,
      name: 'Ferretería',
      image: Image.asset(
        'assets/ferreteria.png',
      ),
    ),
    Category(
      id: 2,
      name: 'Pisos',
      image: Image.asset(
        'assets/pisos.png',
      ),
    ),
    Category(
      id: 3,
      name: 'Máquinas',
      image: Image.asset(
        'assets/maquinas.png',
      ),
    ),
    Category(
      id: 4,
      name: 'Hogar',
      image: Image.asset(
        'assets/hogar.png',
      ),
    ),
    Category(
      id: 5,
      name: 'Servicios',
      image: Image.asset(
        'assets/servicios.png',
      ),
    ),
  ];
}

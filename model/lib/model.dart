import 'package:flutter/material.dart';

class Krossovka {
  Krossovka(
      {required this.model,
      required this.name,
      required this.size,
      this.tusu,
      this.sezon});

  final String model;
  final String name;
  final String size;
  final Color? tusu;
  final String? sezon;
}

List<Krossovka> ListKrossovka = [
  Krossovka(model: 'Nike', name: 'Force', size: '36-45')
];

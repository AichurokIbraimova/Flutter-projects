import 'package:flutter/material.dart';



class Student{
  Student(
    {required this.id, 
    required this.name,
    required this.surName,
    required this.age,
    this.phone,
    required this.email,
    this.address,
    required this.group,
    this.gender,
    this.married});

  final int id;
  final String name;
  final String surName;
  int age;
  String? phone;
  final String email;
  final String? address;
  int group;
  final String? gender;
  String ? married;

}
  final daniar = Student(
     id: 1,
     name: 'Daniar',
     surName: 'Askarov',
      age: 18, 
     email: 'daniar@mail', 
     address: 'Bishkek',
     group: 1,
     gender: 'male'
      );

     final dinara = Student(
      id: 2,
     name: 'Dinara',
     surName: 'Elmuratova',
      age: 22, 
     email: 'dinara@mail', 
     group: 1,
     phone: '+996500808076',
     married: 'single',
     );

     final hanzada = Student(
      id:3,
     name: 'Hanzada',
     surName: 'Kerimova',
      age: 24, 
     email: 'hanzada@mail', 
     group: 1,
     address: 'Naryn',
     gender: 'female',
     married: 'single'
     );

     final mirbek = Student(
      id: 4,
     name: 'Mirbek',
     surName: 'Atabekov',
      age: 19, 
     email: 'mirbek@mail', 
     group: 1);

     final aybek = Student(
      id: 5,
     name: 'Aybek',
     surName: 'Toktorov',
      age: 21, 
     email: 'aybek@mail', 
     group: 1,
     phone: '+996501404088',
     gender: 'male',
     address: 'Osh'
     );

     final karim = Student(
      id: 6,
     name: 'Karim',
     surName: 'Alimbekov',
      age: 25, 
     email: 'karim@mail', 
     group: 1,
     phone: '+996700100710',
     gender: 'male',
     address: 'Talas',
     );

     final aizat = Student(
      id: 7,
     name: 'Aizat',
     surName: 'Kurmanbekova',
      age: 18, 
     email: 'aizat@mail', 
     group: 1,
     address: 'Moskva',
     );

  // <> generic

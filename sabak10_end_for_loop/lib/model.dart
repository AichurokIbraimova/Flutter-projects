// ignore_for_file: unused_import

import 'package:flutter/material.dart';

// final bul men bir gana jolu atalam boldu ozgorboim
// ? Meni koldonso bolot koldonboso da bolot

class Student {
  Student(
      {required this.id,
      required this.image,
      required this.name,
      required this.surName,
      required this.age,
      this.phone,
      required this.email,
      this.address,
      required this.group,
      this.gender,
      this.marriage});

  final int id;
  final String image;
  final String name;
  final String surName;
  int age;
  String? phone;
  final String email;
  final String? address;
  int group;
  final String? gender;
  String? marriage;
}

final daniar = Student(
    id: 1,
    image:
        'https://t4.ftcdn.net/jpg/02/24/86/95/360_F_224869519_aRaeLneqALfPNBzg0xxMZXghtvBXkfIA.jpg',
    name: 'Daniar',
    surName: 'Askarov',
    age: 18,
    email: 'daniar@mail',
    address: 'Bishkek',
    group: 1,
    gender: 'male');

final dinara = Student(
  id: 2,
  image:
      'https://images.freeimages.com/images/premium/previews/1622/16225040-bw-portrait-of-a-beautiful-woman.jpg',
  name: 'Dinara',
  surName: 'Elmuratova',
  age: 22,
  email: 'dinara@mail',
  group: 1,
  phone: '+996500808076',
  marriage: 'single',
);

final hanzada = Student(
    id: 3,
    image:
        'https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8ZmVtYWxlJTIwcG9ydHJhaXR8ZW58MHx8MHx8&w=1000&q=80',
    name: 'Hanzada',
    surName: 'Kerimova',
    age: 24,
    email: 'hanzada@mail',
    group: 1,
    address: 'Naryn',
    gender: 'female',
    marriage: 'single');

final mirbek = Student(
    id: 4,
    image:
        'https://vesti.kg/media/k2/items/cache/45d9bfd1718fcb2c5c7b6c7d999b7cb3_XL.jpg?t=20191125_061900',
    name: 'Mirbek',
    surName: 'Atabekov',
    age: 35,
    email: 'mirbek@mail',
    group: 1);

final aybek = Student(
    id: 5,
    image:
        'https://img.freepik.com/free-photo/portrait-of-handsome-young-man-closeup_176420-15568.jpg',
    name: 'Aybek',
    surName: 'Toktorov',
    age: 21,
    email: 'aybek@mail',
    group: 1,
    phone: '+996501404088',
    gender: 'male',
    address: 'Osh');

final karim = Student(
  id: 6,
  image:
      'https://img.freepik.com/free-photo/emotions-people-concept-headshot-serious-looking-handsome-man-with-beard-looking-confident-determined_1258-26730.jpg',
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
  image:
      'https://media.istockphoto.com/id/1425797951/photo/portrait-of-beautiful-smiling-woman.jpg?b=1&s=170667a&w=0&k=20&c=wYDlVzZDPiaIcJRhOm0NiW9P42X6hElDcHqoPxxHdVk=',
  name: 'Aizat',
  surName: 'Kurmanbekova',
  age: 18,
  email: 'aizat@mail',
  group: 1,
  address: 'Moskva',
);

  // <> generic

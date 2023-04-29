import 'package:sabak15_quize_app/model.dart';

class UseQuize {
  int index = 0;
  List<QuizeModel> surooJoop = [
    QuizeModel(suroo: 'Курандын 86 сүрөөсү Меккеде түшүрүлгөнбу?', joop: true),
    QuizeModel(
        suroo: 'Мухаммад сав Куранды жазуу түрүндө чогултууну буйруганбы?',
        joop: false),
    QuizeModel(suroo: 'Куранда намаз 700 жолу айтылганбы?', joop: true),
    QuizeModel(suroo: 'Аль-Каусар сүрөөсү эн узунбу?', joop: false),
    QuizeModel(suroo: 'Куранда 114 сүрө барбы?', joop: true),
  ];

  String surooAluu() {
    return surooJoop[index].suroo;
  }

  bool joopAluu() {
    return surooJoop[index].joop;
  }

  void nextQuestion() {
    if (index <= surooJoop.length) {
      index++;
    }
  }

  bool isFinished() {
    if (surooJoop[index] == surooJoop.last) {
      return true;
    } else {
      return false;
    }
  }

  void indexZero() {
    index = 0;
  }
}

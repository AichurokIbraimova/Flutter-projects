// импорт бул бардык флаттерге тиешелуу нерселерди озуно камтыйт
import 'package:flutter/material.dart';
// void: эч нерсе кайтарбайт 
// main: негизги функция 
// (): функциянын функция экенин билдирет
// {}:  функциянын денеси  
void main() {
  runApp(const MyApp());
// runApp: Сиздин тиркеменизди баштоо функциясы ал ичине виджет алат 
// MyApp (): класс же виджеттин аталышы
}
// class MyApp: класс
// extends: Мурас алуу => StatelessWidget
class MyApp extends StatelessWidget {
  // класстын конструктору
  const MyApp({super.key});
  // @override: отменить
  @override
  // build: Куруу ал озуно виджет алат 
  // BuildContext: бул адрес виджеттерди козомолдоочу вектор
  Widget build(BuildContext context) {
    // return: кайтарат эмнени кайтарат дегенде? MaterialAppты кайтарат
    // MaterialApp: материалдык дизайны бар жаны флаттер колдонмосун тузот
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      // Theme: бул тема MaterialAppка тиешелуу свойство
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: Уй. MaterialAppтын свойствосу
      // MyHomePagе () бул бир виджет же класс
      home:  const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 int index = 0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
       title: const Center(
        child: Text(
          "Тапшырма 1",
          style: TextStyle(
            color: Colors.black,
            ),)),
        elevation: 0,

        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Container(
               
              width: double.infinity,
              height: 30,
                child:  Center(
                  child:  Text(
                    "Сан: $index",
                     style: const TextStyle(
                      fontSize: 20),)),
                    decoration: BoxDecoration(
                      color: Colors.grey, borderRadius: BorderRadius.circular(8) ),
                    
                
                  ),
                  const SizedBox(
                    height: 20,
                  ), 
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(onPressed: () {
                        setState(() {
                          index--;
                        });
                      }, child: const Icon(Icons.remove)),
                      const SizedBox(
                        width: 10,
                        ),
                      ElevatedButton(onPressed: () {
                       setState(() {
                         index++;
                       });
                      }, child: const Icon(Icons.add))
                      ],
                      ),
            ],),
          ),
        ),       
      );
  }
}


import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Components and constants"),
        
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQig3yxGYD_lMJ7WiLu30FO6Ek5IvPIUSD6hg&usqp=CAU"),
            CustomButton(),
            SizedBox(
              height: 15,
            ),
           
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: 225,
      child: ElevatedButton(onPressed: (){}, child: Row(
        children: const [
          Icon(Icons.phone), 
          SizedBox(width: 20,),
          Text(
            "Телефон номер", style: TextStyle(color: Colors.pink, fontSize: 20,
            ), 
            ),
        ],
      ),
      ),
    );
  }
}
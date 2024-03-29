import 'package:flutter/material.dart';
import 'package:sabak32_capitals_logic_3/constants/app_colors.dart';
import 'package:sabak32_capitals_logic_3/constants/app_text_styles.dart';
import 'package:sabak32_capitals_logic_3/model/suroo_joop.dart';

class TestView extends StatefulWidget {
  const TestView({super.key, required this.suroo});
  final List<Suroo> suroo;
  @override
  State<TestView> createState() => _TestViewState();
}

class _TestViewState extends State<TestView> {
  int indexText = 0;
  int tuuraJoop = 0;
  int kataJoop = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        actions: [
          Container(
            height: 30,
            width: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  // spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3),
                ),
              ],
              color: AppColors.white,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  '$kataJoop',
                  style: AppTextStyle.num1Style,
                ),
                const Text(
                  '32',
                  style: AppTextStyle.num2Style,
                ),
                Text(
                  '$tuuraJoop',
                  style: AppTextStyle.num3Style,
                ),
              ],
            ),
          ),
          const SizedBox(width: 40),
          const Text(
            '3',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
          const SizedBox(width: 30),
          const Icon(
            Icons.favorite,
            color: Colors.red,
          ),
          const Icon(
            Icons.favorite,
            color: Colors.red,
          ),
          const Icon(
            Icons.favorite,
            color: Colors.red,
          ),
          const Icon(Icons.more_vert)
        ],
      ),
      body: Column(
        children: [
          Slider(
            activeColor: Colors.black,
            value: indexText.toDouble(),
            onChanged: (value) {},
            min: 0,
            max: 5,
          ),
          Text(
            widget.suroo[indexText].text,
            style: AppTextStyle.capitalsStyle,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Image.asset(
              'assets/capitals/${widget.suroo[indexText].image}.jpg',
            ),
          ),
          const SizedBox(height: 10),
          Expanded(
            // flex: 2,
            child: GridView.builder(
              padding: const EdgeInsets.only(
                left: 5,
                right: 5,
              ),
              // physics: NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1.6,
              ),
              itemCount: 4,
              itemBuilder: ((context, index) {
                return Card(
                  color: Colors.grey[400],
                  child: InkWell(
                    onTap: () {
                      if (indexText < widget.suroo.length) {
                        if (widget.suroo[indexText].jooptor[index].isBool ==
                            true) {
                          ++tuuraJoop;
                        } else {
                          ++kataJoop;
                        }
                        setState(() {});
                        indexText++;
                        if (indexText == widget.suroo.length) {
                          indexText--;
                          showDialog<String>(
                            context: context,
                            builder: (BuildContext context) => AlertDialog(
                              title: const Text('Сиздин тест жыйынтыгыныз!'),
                              content:
                                  Text('Туура: $tuuraJoop\nКата:$kataJoop'),
                              actions: <Widget>[
                                TextButton(
                                  onPressed: () {
                                    indexText = 0;
                                    kataJoop = 0;
                                    tuuraJoop = 0;
                                    setState(() {
                                      Navigator.pop(context);
                                    });
                                  },
                                  child: const Text('Cancel'),
                                ),
                              ],
                            ),
                          );
                        }
                      }
                    },
                    child: Center(
                      child: Text(widget.suroo[indexText].jooptor[index].text),
                    ),
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ContainerwWidget extends StatelessWidget {
  const ContainerwWidget({
    super.key,
    required this.containerdinTexti,
    required this.containerdinTexti2,
    required this.icon,
    required this.image,
    this.colordynAty,
  });
  final String containerdinTexti, containerdinTexti2;
  final IconData icon;
  final String image;
  final String? colordynAty;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 200, top: 15),
      height: 90,
      width: double.infinity,
      color: Colors.grey,
      child: Row(
        children: [
          Column(
            children: [
              Text(containerdinTexti),
              Text(containerdinTexti2),
              Icon(icon),
            ],
          ),
          const SizedBox(
            width: 40,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                image,
                height: 50,
                width: 50,
              ),
            ],
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ContainerwWidget extends StatelessWidget {
  const ContainerwWidget({
    super.key,
    required this.containerdinTexti,
    required this.containerdinTexti2,
    required this.icon,
    required this.image,
    this.nameColor,
  });
  final String containerdinTexti, containerdinTexti2;
  final IconData icon;
  final String image;
  final Color? nameColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 200, top: 15),
      height: 90,
      width: double.infinity,
      color: nameColor,
      child: Row(
        children: [
          Column(
            children: [
              Text(
                containerdinTexti,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                containerdinTexti2,
                style:
                    const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              ),
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

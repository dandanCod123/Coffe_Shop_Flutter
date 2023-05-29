import 'package:flutter/material.dart';

class CoffeeTtile extends StatelessWidget {
  const CoffeeTtile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: Container(
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.black54,
        ),
        child: Image.asset(
            "/home/gabriel/Documentos/Estudos/Flutter-UI Pages/coffe_shop/lib/images/Latte.jpg "),
      ),
    );
  }
}

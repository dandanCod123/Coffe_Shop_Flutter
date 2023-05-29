import 'package:coffe_shop/util/coffe_title.dart';
import 'package:coffe_shop/util/coffee_type.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Coffe_Page extends StatefulWidget {
  const Coffe_Page({super.key});

  @override
  State<Coffe_Page> createState() => _Coffe_PageState();
}

// LISTA DE TIPOS, PRA ATIVAR OS BOTOES
final List coffeType = [
  [
    'Cappuccino',
    true,
  ],
  [
    'Latte',
    true,
  ],
  [
    'Black',
    true,
  ],
  [
    'Tea',
    true,
  ]
];
// GERENCIAR ESTADOSF
void coffeTypeSelected(int index) {
  setState(() {
    for (int i = 0; i < coffeType.length; i++) {
      coffeType[i][1] = false;
    }
    coffeType[index][1] = true;
  });
}

void setState(Null Function() param0) {}

class _Coffe_PageState extends State<Coffe_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.menu),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Icon(Icons.person),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications),
          label: '',
        )
      ]),
      body: Column(
        children: [
          Text(
            "Find the best coffe for you",
            style: TextStyle(fontSize: 46),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Find your coffee....',
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade600)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade600))),
            ),
          ),
          SizedBox(
            height: 25,
          ),

          /////
          Container(
              height: 50,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: coffeType.length,
                  itemBuilder: (context, index) {
                    return CoffeType(
                        coffeeType: coffeType[index][0],
                        isSelected: coffeType[index][1],
                        onTap: () {
                          coffeTypeSelected(index);
                        });
                  })),

          Expanded(
              child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              CoffeeTtile(
                coffeImagePath: "assets/images/Latte.jpg",
                coffeName: 'Latte',
                coffePrice: '4.20',
              ),
              CoffeeTtile(
                coffeImagePath: "assets/images/cap.jpeg",
                coffeName: 'Cappuccino',
                coffePrice: '8.20',
              ),
              CoffeeTtile(
                coffeImagePath: "assets/images/tea.jpg",
                coffeName: 'Tea',
                coffePrice: '6.20',
              ),
            ],
          ))
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'makanan.dart'; // Import untuk mengakses listMakanan//
import 'list_item.dart'; // Import untuk widget ListItem

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.list_alt_sharp, size: 30),
            SizedBox(width: 10),
            Text(
              'List Kuliner',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Expanded(
          child: ListView.builder(
            itemCount: listMakanan.length,
            padding: const EdgeInsets.all(10),
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.symmetric(vertical: 8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromARGB(255, 178, 178, 178),
                      offset: Offset(1.0, 2.0),
                      blurRadius: 6.0,
                    ),
                  ],
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 10,
                ),
                child: ListItem(makanan: listMakanan[index]),
              );
            },
          ),
        ),
      ],
    );
  }
}

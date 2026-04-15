import 'package:flutter/material.dart';
import 'package:onus1/nevinagition/details_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'HOME SCREEN',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontFamily: "bold",
          ),
          
        ),
        backgroundColor: Color.fromARGB(224, 42, 54, 216),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),

        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text(
                'قائمة المنتجات المتوفرة ',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 15),
              buildproductItem(context, 'ساعة apple', 'السعر: \$99'),
              buildproductItem(context, 'ايفون15', 'السعر: \$650'),
              buildproductItem(context, 'سماعة ايفون ', 'السعر: \$20'),
            ],
          ),
        ),
      ),
    );
  }

  buildproductItem(BuildContext context, String name, String praice) {
    return Card(
      elevation: 3,
      margin: const EdgeInsets.symmetric(vertical: 8),

      child: ListTile(
        leading: const Icon(Icons.shopping_bag, color: Colors.blue),
        title: Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(praice, style: const TextStyle(color: Colors.grey)),
        trailing: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const DetailsScreen()),
            );
          },
          child: Text('التفاصيل'),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: const Text(
            'Time Table',
            // style: TextStyle(color: Colors.black12),
          ),
          centerTitle: true,
        ),
        body: Center(
            child: Container(
          color: Colors.lightBlueAccent,
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomCustomer(Icons.home_work, 'homework'),
              CustomCustomer(Icons.dining, 'Dinner Time'),
              CustomCustomer(Icons.bed_rounded, 'Sleep Time')
            ],
          ),
        )));
  }

  // ignore: non_constant_identifier_names
  Container CustomCustomer(IconData icon, String t) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      margin:
          const EdgeInsets.only(bottom: 16.0), // Optional margin for spacing
      decoration: BoxDecoration(
        color: Colors.pinkAccent, // Background color
        borderRadius: BorderRadius.circular(10), // Optional: Rounded corners
      ),
      child: Row(
        children: [
          Icon(
            icon,
            color: Colors.brown,
            size: 20,
          ),
          const SizedBox(
            width: 8,
          ),
          Expanded(
            // Allows TextField to take remaining space
            child: TextField(
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                labelText: t,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

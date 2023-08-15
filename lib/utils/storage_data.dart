import 'package:flutter/material.dart';

class StorageData extends StatelessWidget {
  StorageData({
    Key? key,
    required this.controllerName,
    required this.birthday,
    required this.pets,
  }) : super(key: key);

  String controllerName;
  DateTime? birthday;
  List<String> pets = ['Horse', 'Dog', 'Cats', 'Other'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Storage Data'),
        backgroundColor: Colors.green,
        centerTitle: true,
        actions: [
          Image.network(
            'assets/Flutter.png',
            width: 20,
            height: 20,
          ),
          const Icon(Icons.more_vert),
        ],
      ),
      backgroundColor: Colors.indigoAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Name : $controllerName',
              style: const TextStyle(
                  fontSize: 20,
                  color: Colors.orange,
                  fontWeight: FontWeight.bold),
            ),
            //const SizedBox(height: 10),
            Text(
              'Birthday : ${birthday?.month}/${birthday?.day}/${birthday?.year}',
              style: const TextStyle(
                  fontSize: 20,
                  color: Colors.orange,
                  fontWeight: FontWeight.bold),
            ),
            //const SizedBox(height: 10),
            Text(
              'Pets : ${pets.isEmpty}',
              style: const TextStyle(
                  fontSize: 20,
                  color: Colors.orange,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}

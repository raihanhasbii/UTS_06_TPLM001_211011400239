import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nike Shoes',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Map<String, dynamic>> nikeShoes = [
    {
      'name': 'Nike SB Zoom Blazer Mid Premium',
      'type': '',
      'color': '',
      'price': 28795,
      'image': "assets/images/nike_pegasus.png", // URL gambar
    },
    {
      'name': 'Nike Air Zoom Pegasus',
      'type': 'Men\'s Road Running Shoes',
      'color': 'blue',
      'price': 29995,
      'image': 'assets/images/nike_pegasus.png', // URL gambar
    },
    {
      'name': 'Nike ZoomX Vaporfly',
      'type': 'Men\'s Road Racing Shoe',
      'color': '',
      'price': 219695,
      'image': 'assets/images/nike_pegasus.png', // URL gambar
    },
    {
      'name': 'Nike Air Force 1 50',
      'type': 'Older Kids\' Shoe',
      'color': 'White',
      'price': 26295,
      'image': 'assets/images/nike_pegasus.png', // URL gambar
    },
    {
      'name': 'Nike Waffle One',
      'type': 'Men\'s Shoes',
      'color': '',
      'price': 28295,
      'image': 'assets/images/nike_pegasus.png', // URL gambar
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nike Shoes'),
      ),
      backgroundColor: Colors.grey[200], // Ubah warna latar belakang
      body: ListView.builder(
        itemCount: nikeShoes.length,
        itemBuilder: (context, index) {
          final shoe = nikeShoes[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        shoe['name'],
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        '\$${shoe['price']}',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        shoe['type'] ?? '',
                        style: TextStyle(
                          fontSize: 14,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 10),
                Image.network(
                  shoe['image'],
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tugas Praktikum Pemrograman Mobile',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _nimController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Tugas Praktikum Pemrograman Mobile 1',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          ),
        backgroundColor: Colors.pink,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Nama:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              TextField(
                controller: _nameController,
                decoration: InputDecoration(
                  hintText: 'Putra Jadi Mukti',
                ),
              ),
              SizedBox(height: 16),
              Text(
                'NIM:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              TextField(
                controller: _nimController,
                decoration: InputDecoration(
                  hintText: '123210041',
                ),
              ),
              SizedBox(height: 32),
              Text(
                'Pilih Gambar:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Container(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Image.asset('assets/images/image_1.png'),
                    SizedBox(width: 8),
                    Image.asset('assets/images/image_2.png'),
                    SizedBox(width: 8),
                    Image.asset('assets/images/image_3.jpg'),
                    SizedBox(width: 8),
                    // Tambahkan lebih banyak gambar sesuai kebutuhan
                  ],
                ),
              ),
              SizedBox(height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      
                    },
                    child: Text('Button 1'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      
                    },
                    child: Text('Button 2'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
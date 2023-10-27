import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'LinkAja',
      home: const MyHomePage(),
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
        ),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(left: 8.0),
                child: Image.asset(
                  'assets/images/linkaja.png',
                  height: 40,
                ),
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: IconButton(
                      color: Colors.black,
                      icon: Icon(Icons.discount_outlined),
                      onPressed: () {
                        // Tindakan saat tombol notifikasi ditekan
                      },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: IconButton(
                      color: Colors.black,
                      icon: Icon(Icons.thumbs_up_down_outlined),
                      onPressed: () {
                        // Tindakan saat tombol notifikasi ditekan
                      },
                    ),
                  )
                ],
              ),
            ],
          ),
          Card(
            color: Colors.red, // Warna latar belakang merah
            margin: EdgeInsets.all(16),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Text(
                    '',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white, // Warna teks putih
                    ),
                  ),
                  Text(
                    'Rp 1.000.000', // Ganti dengan saldo pengguna Anda
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white, // Warna teks putih
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LinkAja',
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
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
                margin: EdgeInsets.only(left: 16, top: 20),
                child: Image.asset(
                  'assets/images/LinkAja.png',
                  height: 40,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 8.0),
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(2.0),
                      ),
                      child: IconButton(
                        color: Colors.black,
                        iconSize: 30,
                        icon: const Icon(Icons.discount),
                        onPressed: () {
                          // Tindakan saat tombol notifikasi ditekan
                        },
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 16.0),
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(2.0),
                      ),
                      child: IconButton(
                        color: Colors.black,
                        iconSize: 30,
                        icon: const Icon(Icons.heart_broken),
                        onPressed: () {
                          // Tindakan saat tombol notifikasi ditekan
                        },
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          Container(
            width: 380,
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 193, 27, 15),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hi, Nama Pengguna',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                Row(
                  children: [
                    CardBalance(
                      title: 'Your Balance',
                      balance: '150.000',
                    ),
                    CardBalance(
                      title: 'Bonus Balance',
                      balance: '2088',
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 5, horizontal: 16),
            padding: EdgeInsets.all(6),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.grey,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MenuWidget(
                  icon: 'assets/images/money.png',
                  title: 'Top Up',
                ),
                MenuWidget(
                  icon: 'assets/images/money.png',
                  title: 'Top Up',
                ),
                MenuWidget(
                  icon: 'assets/images/money.png',
                  title: 'Top Up',
                ),
                MenuWidget(
                  icon: 'assets/images/money.png',
                  title: 'Top Up',
                ),
              ],
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MenuWidget(
                icon: 'assets/images/money.png',
                title: 'Top Up',
              ),
              MenuWidget(
                icon: 'assets/images/money.png',
                title: 'Top Up',
              ),
              MenuWidget(
                icon: 'assets/images/money.png',
                title: 'Top Up',
              ),
              MenuWidget(
                icon: 'assets/images/money.png',
                title: 'Top Up',
              ),
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MenuWidget(
                icon: 'assets/images/money.png',
                title: 'Top Up',
              ),
              MenuWidget(
                icon: 'assets/images/money.png',
                title: 'Top Up',
              ),
              MenuWidget(
                icon: 'assets/images/money.png',
                title: 'Top Up',
              ),
              MenuWidget(
                icon: 'assets/images/money.png',
                title: 'Top Up',
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class MenuWidget extends StatelessWidget {
  final String icon;
  final String title;
  const MenuWidget({
    super.key,
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return ButtonBar(
      children: [
        Column(
          children: [
            Image.asset(icon, height: 40),
            Container(
              margin: EdgeInsets.only(top: 5.0),
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 14,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class CardBalance extends StatelessWidget {
  final String title;
  final String balance;
  const CardBalance({
    super.key,
    required this.title,
    required this.balance,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10.0),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
            margin: EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Row(
                    children: [
                      Text(
                        balance,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: const Icon(
                          Icons.arrow_right_alt,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

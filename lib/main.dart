import 'package:flutter/material.dart';

import 'package:carousel_slider/carousel_slider.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
      backgroundColor: Color.fromARGB(255, 235, 235, 235),
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 16, top: 20),
                child: Image.asset(
                  'assets/images/LinkAja.png',
                  height: 40,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 8.0),
                      padding: const EdgeInsets.all(3),
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
                      margin: const EdgeInsets.only(right: 16.0),
                      padding: const EdgeInsets.all(3),
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
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 193, 27, 15),
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
            margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 16),
            padding: const EdgeInsets.all(6),
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
                  icon: FontAwesomeIcons.solidCreditCard,
                  title: 'Top Up',
                ),
                MenuWidget(
                  icon: FontAwesomeIcons.moneyBillTransfer,
                  title: 'Send Money',
                ),
                MenuWidget(
                  icon: FontAwesomeIcons.moneyBill1Wave,
                  title: 'Ticket Code',
                ),
                MenuWidget(
                  icon: FontAwesomeIcons.solidCommentDots,
                  title: 'See All',
                ),
              ],
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MenuWidget(
                icon: FontAwesomeIcons.icons,
                title: 'Pulsa/Data',
              ),
              MenuWidget(
                icon: FontAwesomeIcons.icons,
                title: 'Electricity',
              ),
              MenuWidget(
                icon: FontAwesomeIcons.icons,
                title: 'BPJS',
              ),
              MenuWidget(
                icon: FontAwesomeIcons.icons,
                title: 'mgames',
              ),
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MenuWidget(
                icon: FontAwesomeIcons.icons,
                title: 'Internet',
              ),
              MenuWidget(
                icon: FontAwesomeIcons.icons,
                title: 'PDAM',
              ),
              MenuWidget(
                icon: FontAwesomeIcons.icons,
                title: 'E-Money',
              ),
              MenuWidget(
                icon: FontAwesomeIcons.icons,
                title: 'More',
              ),
            ],
          ),
          CarouselSlider(
            options: CarouselOptions(height: 180.0),
            items: [1, 2, 3, 4, 5].map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.symmetric(
                        horizontal: 5.0, vertical: 10.0),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 185, 175, 175),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Text(
                      'gambar $i',
                      style: const TextStyle(fontSize: 16.0),
                    ),
                  );
                },
              );
            }).toList(),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Tindakan saat tombol ditekan
        },
        backgroundColor: const Color.fromARGB(255, 193, 27, 15),
        foregroundColor: Colors.white,
        child: const FaIcon(
          FontAwesomeIcons.paypal,
        ),
      ),
      bottomNavigationBar: const BottomAppBar(
        color: Color.fromARGB(255, 193, 27, 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                Text(
                  'Home',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.history,
                  color: Colors.white,
                ),
                Text(
                  'History',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Text(
                    'Pay',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.inbox,
                  color: Colors.white,
                ),
                Text(
                  'Inbox',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.account_circle,
                  color: Colors.white,
                ),
                Text(
                  'Account',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class MenuWidget extends StatelessWidget {
  final IconData icon;
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
            FaIcon(icon, size: 30),
            Container(
              margin: const EdgeInsets.only(top: 5.0),
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 12,
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
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
            margin: const EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title),
                Container(
                  margin: const EdgeInsets.only(top: 10),
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
                        margin: const EdgeInsets.only(left: 10),
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

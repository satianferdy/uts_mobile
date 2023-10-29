import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePages extends StatelessWidget {
  const HomePages({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.only(bottom: 16),
        constraints: BoxConstraints(
          minHeight: MediaQuery.of(context).size.height,
        ),
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: const SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TopBar(),
              CardParent(),
              TopFeature(),
              SecondFeature(),
              BannerCarousel(),
            ],
          ),
        ),
      ),
    );
  }
}

class SecondFeature extends StatelessWidget {
  const SecondFeature({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
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
              icon: FontAwesomeIcons.gamepad,
              title: 'mgames',
            ),
          ],
        ),
        Row(
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
      ],
    );
  }
}

class TopBar extends StatelessWidget {
  const TopBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}

class TopFeature extends StatelessWidget {
  const TopFeature({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: const Color.fromARGB(255, 204, 203, 203),
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
    return Container(
      margin: const EdgeInsets.only(top: 10.0),
      alignment: Alignment.center,
      width: 75,
      height: 75,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FaIcon(
            icon,
            size: 30,
            color: const Color.fromARGB(255, 193, 27, 15),
          ),
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
    );
  }
}

class CardParent extends StatelessWidget {
  const CardParent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
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
                CardChild(
                  title: 'Your Balance',
                  balance: '150.000',
                ),
                CardChild(
                  title: 'Bonus Balance',
                  balance: '2088',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CardChild extends StatelessWidget {
  final String title;
  final String balance;
  const CardChild({
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

class BannerCarousel extends StatelessWidget {
  const BannerCarousel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 180,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 3),
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        pauseAutoPlayOnTouch: true,
      ),
      items: [1, 2, 3, 4, 5].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin:
                  const EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
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
    );
  }
}

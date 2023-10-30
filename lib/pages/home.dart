import 'package:flutter/material.dart';
import 'package:flutter_uts/config/icon.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

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
          color: Color.fromARGB(255, 247, 247, 255),
        ),
        child: const SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TopBar(),
              CardParent(),
              TopFeature(),
              SizedBox(height: 10),
              SecondFeature(),
              SizedBox(height: 10),
              BannerCarousel(),
              SizedBox(height: 20),
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
              icon: IconAsset.icon_pulsa,
              title: 'Pulsa/Data',
            ),
            MenuWidget(
              icon: IconAsset.icon_electricity,
              title: 'Electricity',
            ),
            MenuWidget(
              icon: IconAsset.icon_bpjs,
              title: 'BPJS',
            ),
            MenuWidget(
              icon: IconAsset.icon_games,
              title: 'mgames',
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MenuWidget(
              icon: IconAsset.icon_internet,
              title: 'Internet',
            ),
            MenuWidget(
              icon: IconAsset.icon_pdam,
              title: 'PDAM',
            ),
            MenuWidget(
              icon: IconAsset.icon_money,
              title: 'E-Money',
            ),
            MenuWidget(
              icon: IconAsset.icon_more,
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
    return Container(
      margin: const EdgeInsets.only(top: 16, right: 16, left: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            'assets/images/LinkAja.png',
            height: 40,
          ),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(right: 8.0),
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
        ],
      ),
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
      margin: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: const Color.fromARGB(255, 204, 203, 203),
          width: 1,
        ),
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 2,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          MenuWidget(
            icon: IconAsset.icon_topup,
            title: 'Top Up',
          ),
          MenuWidget(
            icon: IconAsset.icon_transfer,
            title: 'Send Money',
          ),
          MenuWidget(
            icon: IconAsset.icon_ticket,
            title: 'Ticket Code',
          ),
          MenuWidget(
            icon: IconAsset.icon_seeall,
            title: 'See All',
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
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      alignment: Alignment.center,
      width: 75,
      height: 75,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            (icon),
            height: 48,
          ),
          Text(
            title,
            style: const TextStyle(
              fontSize: 12,
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
            'Hi, Satian Ferdiansyah',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
          SizedBox(height: 12),
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
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(right: 16),
      height: 70,
      width: 140,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 12),
          ),
          const SizedBox(height: 4),
          Row(
            children: [
              Text(
                'Rp $balance',
                style:
                    const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              ),
              const SizedBox(width: 4),
              Container(
                margin: const EdgeInsets.only(left: 4),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: const Icon(
                  Icons.arrow_right,
                  color: Colors.white,
                  size: 16,
                ),
              ),
              // Image.asset('assets/images/icon_red_arrow.png', height: 14)
            ],
          )
        ],
      ),
    );
  }
}

class BannerCarousel extends StatefulWidget {
  const BannerCarousel({
    super.key,
  });

  @override
  State<BannerCarousel> createState() => _BannerCarouselState();
}

class _BannerCarouselState extends State<BannerCarousel> {
  final List<String> myImages = [
    'assets/images/carosel1.png',
    'assets/images/carosel2.png',
    'assets/images/carosel1.png',
    'assets/images/carosel2.png',
  ];

  int _current = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CarouselSlider.builder(
            itemCount: myImages.length,
            itemBuilder: (context, index, realIndex) => Container(
              margin: const EdgeInsets.symmetric(horizontal: 8),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(
                  myImages[index],
                  fit: BoxFit.cover,
                ),
              ),
            ),
            options: CarouselOptions(
              height: 130,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 3),
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              pauseAutoPlayOnTouch: true,
              onPageChanged: (index, reason) =>
                  setState(() => _current = index),
            ),
          ),
          const SizedBox(height: 8),
          AnimatedSmoothIndicator(
            activeIndex: _current,
            count: myImages.length,
            effect: const SlideEffect(
              activeDotColor: Color.fromARGB(255, 193, 27, 15),
              dotColor: Colors.grey,
              dotWidth: 8,
              dotHeight: 8,
            ),
          ),
        ],
      ),
    );
  }
}

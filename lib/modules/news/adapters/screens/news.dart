import 'package:flutter/material.dart';
import 'package:flutter_learning/kernel/theme/colors_app.dart';
import 'package:flutter_learning/kernel/widgets/custom_carousel.dart';

class News extends StatelessWidget {
  const News({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Noticias'),
        backgroundColor: ColorsApp.primary,
      ),
      body: Container(
        alignment: Alignment.topCenter,
        padding: const EdgeInsets.only(top: 16),
        child: const CustomCarousel(carouselHeight: 300, children: [
          FirstSection(),
          SecondSection(),
          ThirdSection(),
        ],),
      ),
    );
  }
}

class FirstSection extends StatelessWidget {
  const FirstSection({super.key});

  @override
  Widget build(BuildContext context) {
    double widthImage = MediaQuery.of(context).size.width;
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Column(children: [
        Image.asset(
          'assets/images/logo-utez.png',
          width: widthImage,
          height: 150,
          fit: BoxFit.cover,
        ),
        Container(
            padding:
                const EdgeInsets.only(top: 16, left: 16, right: 16, bottom: 4),
            child: const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Fuck spiro',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            )),
        Container(
            padding:
                const EdgeInsets.only(top: 4, left: 16, right: 16, bottom: 16),
            child: const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Because of its well known poor effects as an AA',
              ),
            ))
      ]),
    );
  }
}

class SecondSection extends StatelessWidget {
  const SecondSection({super.key});

  @override
  Widget build(BuildContext context) {
    double widthImage = MediaQuery.of(context).size.width;
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Column(children: [
        Image.asset(
          'assets/images/utez-pool.png',
          width: widthImage,
          height: 150,
          fit: BoxFit.cover,
        ),
        Container(
            padding:
                const EdgeInsets.only(top: 16, left: 16, right: 16, bottom: 4),
            child: const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Variants of E',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            )),
        Container(
            padding:
                const EdgeInsets.only(top: 4, left: 16, right: 16, bottom: 16),
            child: const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Ev, EEn, EEtn, CE',
              ),
            ))
      ]),
    );
  }
}

class ThirdSection extends StatelessWidget {
  const ThirdSection({super.key});

  @override
  Widget build(BuildContext context) {
    double widthImage = MediaQuery.of(context).size.width;
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Column(children: [
        Image.asset(
          'assets/images/utez-entrance.png',
          width: widthImage,
          height: 150,
          fit: BoxFit.cover,
        ),
        Container(
            padding:
                const EdgeInsets.only(top: 16, left: 16, right: 16, bottom: 4),
            child: const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Options for AA',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            )),
        Container(
            padding:
                const EdgeInsets.only(top: 4, left: 16, right: 16, bottom: 16),
            child: const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Spironolactone, Cyproterone, Bicalutamide, GnRH antagonists',
              ),
            ))
      ]),
    );
  }
}

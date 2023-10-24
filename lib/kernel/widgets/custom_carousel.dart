import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_learning/kernel/theme/colors_app.dart';

class CustomCarousel extends StatefulWidget {
  final List<Widget> children;
  final double carouselHeight;
  final double indicatorWidth;
  final double indicatorHeight;

  const CustomCarousel({
    Key? key,
    required this.children,
    this.carouselHeight = 150,
    this.indicatorWidth = 8,
    this.indicatorHeight = 8,
  });

  @override
  State<CustomCarousel> createState() => _CustomCarouselState();
}

class _CustomCarouselState extends State<CustomCarousel> {
  int currIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          items: widget.children,
          options: CarouselOptions(
            height: widget.carouselHeight,
            autoPlay: true,
            onPageChanged: (index, reason) {
              setState(() {
                currIndex = index;
              });
            }
          )
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: widget.children.map((e) {
            int index = widget.children.indexOf(e);
            return Container(
              width: widget.indicatorWidth,
              height: widget.indicatorHeight,
              margin: const EdgeInsets.symmetric(horizontal: 3, vertical: 10),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: index == currIndex ? ColorsApp.primary : ColorsApp.success,),
            );
          }).toList(),
        )
      ],
    );
  }
}
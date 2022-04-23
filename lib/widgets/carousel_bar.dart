import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

final List<String> carouselImages = [
  "assets/justAirtel.jpeg",
  "assets/paywithbank.jpeg",
  "assets/registerNIN.jpeg",
  "assets/staySafe.jpeg",
];

class Carousel extends StatelessWidget {
  const Carousel({Key? key}) : super(key: key);

  Widget buildCarousel(String value) {
    return Container(
        width: double.infinity,
        color: Colors.green,
        child: Image.asset(
          value,
          fit: BoxFit.cover,
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: CarouselSlider.builder(
            itemCount: carouselImages.length,
            itemBuilder: (BuildContext context, int count, int realCount) {
              return buildCarousel(carouselImages[count]);
            },
            options: CarouselOptions(
                viewportFraction: 1,
                height: 130,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 5))));
  }
}

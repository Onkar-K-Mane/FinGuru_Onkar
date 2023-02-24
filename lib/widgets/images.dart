import 'package:flutter/material.dart';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_swiper_plus/flutter_swiper_plus.dart';

// ignore: must_be_immutable
class ImageTopUI extends StatelessWidget {
  ImageTopUI({
    this.imagePath,
    super.key,
  });
  String? imagePath;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(imagePath!),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 1.4,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(
              bottom:
                  Radius.elliptical(MediaQuery.of(context).size.width, 150)),
          boxShadow: [
            BoxShadow(
                offset: Offset(4, 4),
                blurRadius: 100,
                spreadRadius: 50,
                color: Colors.deepPurple.shade900)
          ]),
    );
  }
}

class HomePageBanner extends StatefulWidget {
  List? imageAddress;

  HomePageBanner({super.key, this.imageAddress});

  @override
  State<HomePageBanner> createState() => _HomePageBannerState();
}

class _HomePageBannerState extends State<HomePageBanner> {
  @override
  Widget build(BuildContext context) {
    return Swiper(
        scrollDirection: Axis.horizontal,
        layout: SwiperLayout.DEFAULT,
        autoplay: true,
        autoplayDelay: 5000,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(20.0),
            child: Card(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  widget.imageAddress![index],
                  fit: BoxFit.fill,
                ),
              ),
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              elevation: 5,
            ),
          );
        },
        itemCount: widget.imageAddress?.length ?? 0);
  }
}

class HomePageBannerBottom extends StatefulWidget {
  List? imageAddress;

  HomePageBannerBottom({super.key, this.imageAddress});

  @override
  State<HomePageBannerBottom> createState() => _HomePageBannerBottomState();
}

class _HomePageBannerBottomState extends State<HomePageBannerBottom> {
  @override
  Widget build(BuildContext context) {
    return Swiper(
        scrollDirection: Axis.horizontal,
        layout: SwiperLayout.DEFAULT,
        // pagination: SwiperPagination.dots,
        autoplay: true,
        autoplayDelay: 5000,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(5.0),
            child: Card(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  widget.imageAddress![index],
                  fit: BoxFit.fill,
                ),
              ),
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              elevation: 5,
            ),
          );
        },
        itemCount: widget.imageAddress?.length ?? 0);
  }
}

class ImageSlider extends StatefulWidget {
  List? imageAddress;
  ImageSlider({super.key, this.imageAddress});

  @override
  State<ImageSlider> createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
        itemCount: widget.imageAddress!.length,
        options: CarouselOptions(
          enlargeCenterPage: true,
          autoPlayCurve: Curves.bounceInOut,
          autoPlay: false,
        ),
        itemBuilder: (context, index, i) {
          return Padding(
            padding: const EdgeInsets.all(5.0),
            child: Card(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  widget.imageAddress![index],
                  fit: BoxFit.fill,
                ),
              ),
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              elevation: 5,
            ),
          );
        });
  }
}

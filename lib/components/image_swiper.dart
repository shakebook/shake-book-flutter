import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class ImageSwiper extends StatefulWidget {
  final List<String> _images;
  ImageSwiper(this._images);
  @override
  _ImageSwiper createState() => _ImageSwiper();
}

class _ImageSwiper extends State<ImageSwiper> {
  @override
  Widget build(BuildContext context) {
    return Swiper(
        itemCount: widget._images.length,
        autoplay: true,
        itemBuilder: (BuildContext context, int index) {
          return Image.network(
            widget._images[index],
            fit: BoxFit.fill,
          );
        });
  }
}

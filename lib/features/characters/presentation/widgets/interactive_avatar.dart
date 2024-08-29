import 'package:flutter/material.dart';

import 'package:rick_and_morty/core/styles/app_colors.dart';

class InteractiveAvatar extends StatelessWidget {
  const InteractiveAvatar(
      {super.key, required this.radius, required this.imageurl});

  final double radius;
  final String imageurl;
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ImageDetails(imageUrl: imageurl),
          ),
        );
      },
      child: Hero(
        tag: imageurl,
        child: CircleAvatar(
          radius: radius,
          backgroundImage: NetworkImage(imageurl),
          backgroundColor: AppColors.buttonDisabled,
        ),
      ),
    );
  }
}

class ImageDetails extends StatelessWidget {
  const ImageDetails({super.key, required this.imageUrl});
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: imageUrl,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(),
        body: InteractiveViewer(
          maxScale: 4,
          child: Center(
            child: Image.network(
              imageUrl,
            ),
          ),
        ),
      ),
    );
  }
}

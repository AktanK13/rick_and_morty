import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rick_and_morty/core/styles/app_colors.dart';

class DetailCircleAvatar extends StatelessWidget {
  const DetailCircleAvatar(
      {super.key, required this.radius, required this.imageurl});

  final double radius;
  final String imageurl;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius.r,
      backgroundImage: NetworkImage(imageurl),
      backgroundColor: AppColors.buttonDisabled,
    );
  }
}
import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';
import 'package:rick_and_morty/core/styles/app_colors.dart';
import 'package:rick_and_morty/features/characters/domain/entities/entities.dart';
import 'package:rick_and_morty/features/characters/presentation/widgets/detail_circle_avatar.dart';

class DetailAppBar extends StatelessWidget {
  const DetailAppBar({super.key, required this.character});

  final CharactersEntity character;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 230,
      leading: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          IconButton(
            onPressed: () {
              context.pop();
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: AppColors.textWhite,
            ),
          ),
        ],
      ),
      flexibleSpace: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            alignment: const Alignment(0.0, 2.5),
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  height: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      colorFilter: ColorFilter.mode(
                        const Color(0xff0B1E2D).withOpacity(0.6),
                        BlendMode.darken,
                      ),
                      fit: BoxFit.cover,
                      image: NetworkImage(character.image),
                    ),
                  ),
                  child: ClipRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 11, 30, 45),
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color.fromARGB(150, 0, 0, 0),
                              Color.fromARGB(40, 11, 30, 45),
                              Color.fromARGB(10, 11, 30, 45),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: (MediaQuery.of(context).size.width / 2) - 83,
                top: 117,
                child: CircleAvatar(
                  radius: 83,
                  backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                  child: DetailCircleAvatar(
                    radius: 63,
                    imageurl: character.image,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

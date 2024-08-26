import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rick_and_morty/features/characters/domain/entities/entities.dart';
import 'package:rick_and_morty/features/characters/presentation/widgets/interactive_avatar.dart';

class CustomSliverDelegate extends SliverPersistentHeaderDelegate {
  final double expandedHeight;
  final bool hideTitleWhenExpanded;
  final CharactersEntity character;

  CustomSliverDelegate({
    required this.character,
    required this.expandedHeight,
    this.hideTitleWhenExpanded = true,
  });

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    final appBarSize = expandedHeight - shrinkOffset;
    final avatarTopPosition = expandedHeight / 1.7 - shrinkOffset;
    final proportion = 2 - (expandedHeight / appBarSize);
    final percent = proportion < 0 || proportion > 1 ? 0.0 : proportion;

    return SizedBox(
      height: expandedHeight + expandedHeight / 2.3,
      child: Stack(
        children: [
          SizedBox(
            height: appBarSize < kToolbarHeight ? kToolbarHeight : appBarSize,
            child: AppBar(
              flexibleSpace: Container(
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
              leading: IconButton(
                icon: const Icon(Icons.arrow_back_ios),
                onPressed: () {
                  context.pop();
                },
              ),
              elevation: 0.0,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            top: avatarTopPosition > 0 ? avatarTopPosition : 0,
            child: Opacity(
              opacity: percent,
              child: CircleAvatar(
                radius: 83,
                backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                child: InteractiveAvatar(
                  radius: 73,
                  imageurl: character.image,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  double get maxExtent => expandedHeight + expandedHeight / 2;

  @override
  double get minExtent => kToolbarHeight;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}

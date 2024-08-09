import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:rick_and_morty/core/styles/app_colors.dart';
import 'package:rick_and_morty/core/styles/app_text_style.dart';
import 'package:rick_and_morty/core/utils/sized_box_helper.dart';
import 'package:rick_and_morty/features/characters/domain/entities/entities.dart';

class CharactersDetailPage extends StatelessWidget {
  const CharactersDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final CharactersEntity character =
        GoRouterState.of(context).extra as CharactersEntity;
    return Scaffold(
      body: Column(
        children: <Widget>[
          AppBar(
              toolbarHeight: 230.h,
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
                          height: 200.h,
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
                        left: (MediaQuery.of(context).size.width / 2) - 83.r,
                        top: 117.h,
                        child: CircleAvatar(
                          radius: 83.r,
                          backgroundColor:
                              Theme.of(context).scaffoldBackgroundColor,
                          child: CircleAvatar(
                            radius: 73.r,
                            backgroundImage: NetworkImage(character.image),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              )),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Center(
                    child: Text(
                      character.name,
                      style: Theme.of(context)
                          .textTheme
                          .headlineLarge
                          ?.copyWith(fontWeight: FontWeight.w500),
                    ),
                  ),
                  addVerticalSpace(5),
                  Center(
                    child: Text(
                      character.status,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: character.status == 'Alive'
                            ? AppColors.statusAlive
                            : AppColors.statusDead,
                      ),
                    ),
                  ),
                  addVerticalSpace(30),
                  Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 2 - 16,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Пол",
                              style: AppTextStyle.mediumBlack
                                  .copyWith(color: AppColors.textGray),
                            ),
                            Text(
                              character.gender,
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 2 - 16,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Расса",
                              style: AppTextStyle.mediumBlack
                                  .copyWith(color: AppColors.textGray),
                            ),
                            Text(
                              character.species,
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  addVerticalSpace(20),
                  ListTile(
                    contentPadding: const EdgeInsets.all(0),
                    title: Text(
                      "Место рождения",
                      style: AppTextStyle.mediumBlack
                          .copyWith(color: AppColors.textGray),
                    ),
                    subtitle: Text(
                      character.origin.name,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    trailing: const Icon(
                      Icons.arrow_forward_ios,
                    ),
                  ),
                  addVerticalSpace(5),
                  ListTile(
                    contentPadding: const EdgeInsets.all(0),
                    title: Text(
                      "Местоположение",
                      style: AppTextStyle.mediumBlack
                          .copyWith(color: AppColors.textGray),
                    ),
                    subtitle: Text(
                      character.location.name,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    trailing: const Icon(
                      Icons.arrow_forward_ios,
                    ),
                  ),
                  addVerticalSpace(36),
                  Divider(
                    height: 2.h,
                    color: AppColors.dividerColor,
                  ),
                  addVerticalSpace(36),
                  Row(
                    children: [
                      Text(
                        "Эпизоды",
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge
                            ?.copyWith(fontWeight: FontWeight.w500),
                      ),
                      const Spacer(),
                      Text(
                        "Все эпизоды",
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium
                            ?.copyWith(color: AppColors.textGray),
                      )
                    ],
                  ),
                  addVerticalSpace(24),
                  ListView.separated(
                    itemBuilder: (context, index) {
                      return ListTile(
                        contentPadding: const EdgeInsets.all(0),
                        title: Text(
                          character.episode[index],
                          style: AppTextStyle.mediumBlack
                              .copyWith(color: AppColors.textGray),
                        ),
                        subtitle: Text(
                          character.origin.name,
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        trailing: const Icon(
                          Icons.arrow_forward_ios,
                        ),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return addVerticalSpace(24);
                    },
                    itemCount: character.episode.length,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

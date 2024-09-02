import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rick_and_morty/core/router/app_router.dart';
import 'package:rick_and_morty/core/styles/app_colors.dart';

import '../../generated/locale_keys.g.dart';

class SearchAppbar extends StatelessWidget implements PreferredSizeWidget {
  const SearchAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    InputDecorationTheme textfieldTheme =
        Theme.of(context).inputDecorationTheme;
    return AppBar(
      title: Hero(
        tag: 'searchField',
        child: TextField(
          onTap: () => context.push(AppRouter.charactersSearch),
          readOnly: true,
          style: Theme.of(context).textTheme.bodyMedium,
          decoration: InputDecoration(
            fillColor: textfieldTheme.fillColor,
            border: textfieldTheme.border,
            hintText: LocaleKeys.search_character.tr(),
            hintStyle: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(color: AppColors.textGray),
            prefixIcon: const Icon(Icons.search),
            suffixIcon: IconButton(
              icon: const Icon(Icons.filter_list),
              onPressed: () async {
                context.push(AppRouter.charactersFilter);
              },
            ),
            iconColor: textfieldTheme.iconColor,
            suffixIconColor: textfieldTheme.suffixIconColor,
            prefixIconColor: textfieldTheme.prefixIconColor,
            contentPadding: textfieldTheme.contentPadding,
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

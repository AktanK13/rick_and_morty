import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rick_and_morty/core/router/app_router.dart';

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
        child: Material(
          color: Colors.transparent,
          child: TextField(
            onTap: () {
              context.go(AppRouter.charactersSearch);
            },
            readOnly: true,
            style: Theme.of(context).textTheme.bodyMedium,
            decoration: InputDecoration(
              fillColor: textfieldTheme.fillColor,
              border: textfieldTheme.border,
              hintText: 'Найти персонажа',
              hintStyle: textfieldTheme.hintStyle,
              prefixIcon: const Icon(Icons.search),
              suffixIcon: IconButton(
                icon: const Icon(Icons.filter_list),
                onPressed: () {
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
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

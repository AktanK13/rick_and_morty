import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:rick_and_morty/core/router/app_router.dart';
import 'package:rick_and_morty/core/styles/app_colors.dart';
import 'package:rick_and_morty/features/characters/presentation/bloc/characters_bloc.dart';

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
          onTap: () {
            context.push(AppRouter.charactersSearch);
          },
          readOnly: true,
          style: Theme.of(context).textTheme.bodyMedium,
          decoration: InputDecoration(
            fillColor: textfieldTheme.fillColor,
            border: textfieldTheme.border,
            hintText: 'Найти персонажа',
            hintStyle: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(color: AppColors.textGray),
            prefixIcon: const Icon(Icons.search),
            suffixIcon: IconButton(
              icon: const Icon(Icons.filter_list),
              onPressed: () async {
                final result =
                    await context.push(AppRouter.charactersFilter, extra: {
                  'status': context.read<CharactersBloc>().selectedStatus,
                  'gender': context.read<CharactersBloc>().selectedGender,
                });
                if (!context.mounted) return;
                if (result != null && result is Map<String, String>) {
                  context.read<CharactersBloc>().add(
                        FetchCharacters(
                          status: result['status'] ?? '',
                          gender: result['gender'] ?? '',
                        ),
                      );
                }
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

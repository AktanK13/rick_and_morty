import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/features/characters/presentation/bloc/characters_bloc.dart';

import '../../../../../core/styles/app_colors.dart';
import '../../../../../generated/locale_keys.g.dart';

class CharactersHeader extends StatelessWidget {
  const CharactersHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: BlocBuilder<CharactersBloc, CharactersState>(
            builder: (context, state) {
              return state.maybeWhen(
                loading: () => Text(
                  LocaleKeys.total_characters.tr(),
                  style: theme.bodySmall?.copyWith(color: AppColors.textGray),
                ),
                error: (_) => Text(
                  LocaleKeys.total_characters.tr(),
                  style: theme.bodySmall?.copyWith(color: AppColors.textGray),
                ),
                loaded: (characters, hasReachMax, count, isGridView) => Text(
                  '${LocaleKeys.total_characters.tr()}$count',
                  style: theme.bodySmall?.copyWith(color: AppColors.textGray),
                ),
                orElse: () => const SizedBox.shrink(),
              );
            },
          ),
        ),
        BlocBuilder<CharactersBloc, CharactersState>(
          builder: (context, state) {
            final isGridView = state.maybeWhen(
              loaded: (_, __, ___, isGridView) => isGridView,
              orElse: () => false,
            );
            return IconButton(
              onPressed: () {
                context.read<CharactersBloc>().add(const ToggleGridView());
              },
              icon: isGridView
                  ? const Icon(Icons.list_rounded,
                      size: 24, color: AppColors.textGray)
                  : const Icon(Icons.grid_view_rounded,
                      size: 24, color: AppColors.textGray),
            );
          },
        ),
      ],
    );
  }
}
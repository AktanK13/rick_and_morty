import 'dart:developer';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:rick_and_morty/core/router/app_router.dart';
import 'package:rick_and_morty/core/styles/app_colors.dart';
import 'package:rick_and_morty/core/utils/injections.dart';
import 'package:rick_and_morty/features/locations/presentation/bloc/locations_bloc.dart';
import 'package:rick_and_morty/shared/pages/not_found.dart';

import '../../../../generated/locale_keys.g.dart';

class LocationsPage extends StatelessWidget {
  const LocationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<LocationsBloc>()..add(const FetchLocations()),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            LocaleKeys.locations.tr(),
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              Expanded(
                child: BlocBuilder<LocationsBloc, LocationsState>(
                  builder: (context, state) {
                    final bloc = context.read<LocationsBloc>();
                    return state.when(
                      initial: () => const SizedBox.shrink(),
                      loading: () =>
                          const Center(child: CircularProgressIndicator()),
                      error: (error) => const NotFound(),
                      loaded: (locations, hasReachedMax) {
                        log('data-unique: locations:----------------- $locations ');
                        return RefreshIndicator(
                          onRefresh: () => bloc.refreshPage(),
                          child: ListView.separated(
                            controller: bloc.scrollController,
                            itemCount:
                                locations.length + (hasReachedMax ? 0 : 1),
                            separatorBuilder: (context, index) {
                              return const SizedBox(height: 16);
                            },
                            itemBuilder: (context, index) {
                              if (index >= locations.length) {
                                return const Center(
                                  child: CircularProgressIndicator()
                                );
                              }

                              final location = locations[index];
                              return ListTile(
                                contentPadding: const EdgeInsets.all(0),
                                onTap: () {
                                  context.go(AppRouter.locationsDetails,
                                      extra: location);
                                },
                                title: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      location.type,
                                      style:
                                          Theme.of(context).textTheme.bodySmall,
                                    ),
                                    Text(
                                      location.name,
                                      style:
                                          Theme.of(context).textTheme.bodyLarge,
                                    ),
                                  ],
                                ),
                                subtitle: Text(
                                  location.dimension,
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelSmall
                                      ?.copyWith(color: AppColors.textGray),
                                ),
                              );
                            },
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

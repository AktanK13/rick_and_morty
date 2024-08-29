import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/core/utils/injections.dart';
import 'package:rick_and_morty/features/locations/presentation/bloc/locations_bloc.dart';
import 'package:rick_and_morty/features/locations/presentation/pages/sub_pages/locations_list_view.dart';
import 'package:rick_and_morty/shared/pages/no_data.dart';

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
                    return state.maybeWhen(
                      loading: () => const Center(
                        child: CircularProgressIndicator(),
                      ),
                      loaded: (locations, hasReachedMax) {
                        return LocationsListView(
                          locations: locations,
                          hasReachedMax: hasReachedMax,
                        );
                      },
                      orElse: () => const NoData(),
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

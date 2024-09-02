import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:rick_and_morty/core/router/app_router.dart';
import 'package:rick_and_morty/core/styles/app_colors.dart';
import 'package:rick_and_morty/features/locations/domain/entities/location_entity.dart';
import 'package:rick_and_morty/features/locations/presentation/bloc/locations_bloc.dart';

class LocationsListView extends StatelessWidget {
  const LocationsListView({
    super.key,
    required this.locations,
    required this.hasReachedMax,
  });

  final List<LocationEntity> locations;
  final bool hasReachedMax;

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<LocationsBloc>();

    return RefreshIndicator(
      onRefresh: () => bloc.refreshPage(),
      child: ListView.separated(
        controller: bloc.usecase.pagination.scrollController,
        itemCount: locations.length + (hasReachedMax ? 0 : 1),
        separatorBuilder: (context, index) {
          return const SizedBox(height: 16);
        },
        itemBuilder: (context, index) {
          if (index >= locations.length) {
            return const Center(child: CircularProgressIndicator());
          }

          final location = locations[index];
          return ListTile(
            contentPadding: const EdgeInsets.all(0),
            onTap: () =>
                context.go(AppRouter.locationsDetails, extra: location),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  location.type,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                Text(
                  location.name,
                  style: Theme.of(context).textTheme.bodyLarge,
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
  }
}

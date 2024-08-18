import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:rick_and_morty/core/router/app_router.dart';
import 'package:rick_and_morty/core/styles/app_colors.dart';
import 'package:rick_and_morty/core/utils/sized_box_helper.dart';
import 'package:rick_and_morty/features/locations/presentation/bloc/locations_bloc.dart';
import 'package:rick_and_morty/shared/pages/not_found.dart';

class LocationsPage extends StatefulWidget {
  const LocationsPage({super.key});

  @override
  State<LocationsPage> createState() => _LocationsPageState();
}

class _LocationsPageState extends State<LocationsPage> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    context.read<LocationsBloc>().add(const FetchLocations(
          page: 1,
        ));
    _scrollController.addListener(_scrollListener);
  }

  void _scrollListener() {
    if (_scrollController.position.pixels ==
            _scrollController.position.maxScrollExtent &&
        !context.read<LocationsBloc>().hasReachedMax) {
      context.read<LocationsBloc>().add(FetchLocations(
            page: context.read<LocationsBloc>().currentPage,
          ));
    }
  }

  Future<void> _refreshPage() async {
    context.read<LocationsBloc>().add(const FetchLocations(
          page: 1,
        ));
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Локациии",
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
                  if (state is LocationsLoading) {
                    return const Center(child: CircularProgressIndicator());
                  }
                  if (state is LocationsLoadedSuccess) {
                    return RefreshIndicator(
                      onRefresh: _refreshPage,
                      child: ListView.separated(
                        controller: _scrollController,
                        itemCount: state.locations.length +
                            (state.hasReachedMax ? 0 : 1),
                        separatorBuilder: (context, index) {
                          return addVerticalSpace(16);
                        },
                        itemBuilder: (context, index) {
                          if (index >= state.locations.length) {
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          }

                          final location = state.locations[index];
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
                  return const NotFound();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:rick_and_morty/core/constants/constants.dart';
import 'package:rick_and_morty/core/router/app_router.dart';
import 'package:rick_and_morty/features/locations/domain/entities/location_entity.dart';
import 'package:rick_and_morty/features/locations/presentation/bloc/locations_bloc.dart';

class LocationsPage extends StatefulWidget {
  const LocationsPage({super.key});

  @override
  State<LocationsPage> createState() => _LocationsPageState();
}

class _LocationsPageState extends State<LocationsPage> {
  final PagingController<int, LocationsEntity> _pagingController =
      PagingController(firstPageKey: 1);

  @override
  void initState() {
    super.initState();
    _pagingController.addPageRequestListener((pageKey) {
      context.read<LocationsBloc>().add(FetchLocations(
            page: pageKey,
          ));
    });
  }

  Future<void> _refreshPage() async {
    _pagingController.refresh();
  }

  @override
  void dispose() {
    _pagingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Локациии",
          style: Theme.of(context).textTheme.labelMedium,
        ),
      ),
      body: SafeArea(
        top: false,
        child: Column(
          children: [
            Expanded(
              child: BlocListener<LocationsBloc, LocationsState>(
                listener: (context, state) {
                  if (state is LocationsLoadedSuccess) {
                    final isLastPage =
                        state.locations.length < AppConsts.pageSize;
                    if (isLastPage) {
                      _pagingController.appendLastPage(state.locations);
                    } else {
                      final nextPageKey =
                          (_pagingController.nextPageKey ?? 1) + 1;
                      _pagingController.appendPage(
                          state.locations, nextPageKey);
                    }
                  } else if (state is LocationsError) {
                    _pagingController.error = state.message;
                  }
                },
                child: RefreshIndicator(
                  onRefresh: _refreshPage,
                  child: PagedListView<int, LocationsEntity>(
                    pagingController: _pagingController,
                    builderDelegate: PagedChildBuilderDelegate<LocationsEntity>(
                        itemBuilder: (context, location, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 5),
                        child: ListTile(
                          onTap: () {
                            context.go(AppRouter.locationsDetails,
                                extra: location);
                          },
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(location.type,
                                  style:
                                      Theme.of(context).textTheme.titleSmall),
                              Text(
                                location.name,
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                            ],
                          ),
                          subtitle: Text(
                            location.dimension,
                            style: TextStyle(
                                color: Theme.of(context).unselectedWidgetColor),
                          ),
                        ),
                      );
                    }),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

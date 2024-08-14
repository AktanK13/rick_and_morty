import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:rick_and_morty/core/constants/constants.dart';
import 'package:rick_and_morty/core/router/app_router.dart';
import 'package:rick_and_morty/core/utils/sized_box_helper.dart';
import 'package:rick_and_morty/features/locations/domain/entities/location_entity.dart';
import 'package:rick_and_morty/features/locations/presentation/bloc/locations_bloc.dart';
import 'package:rick_and_morty/shared/pages/not_found.dart';

class LocationsPage extends StatefulWidget {
  const LocationsPage({super.key});

  @override
  State<LocationsPage> createState() => _LocationsPageState();
}

class _LocationsPageState extends State<LocationsPage> {
  final ScrollController _scrollController = ScrollController();

  List<LocationsEntity> _locations = [];

  int _currentPage = 1;
  bool _isLoading = false;
  bool _isLastPage = false;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_scrollListener);
    _fetchLocations(_currentPage);
  }

  void _fetchLocations(int page) {
    if (_isLoading || _isLastPage) return;
    setState(() {
      _isLoading = true;
    });
    context.read<LocationsBloc>().add(FetchLocations(
          page: page,
        ));
  }

  void _scrollListener() {
    if (_scrollController.position.extentAfter < 500 && !_isLoading) {
      _fetchLocations(
        _currentPage + 1,
      );
    }
  }

  Future<void> _refreshPage() async {
    setState(() {
      _locations.clear();
      _currentPage = 1;
      _isLastPage = false;
    });
    _fetchLocations(
      _currentPage,
    );
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
                    setState(() {
                      final fetchedEpisodes = state.locations;
                      _locations.addAll(fetchedEpisodes);
                      _isLastPage = fetchedEpisodes.length < AppConsts.pageSize;
                      _isLoading = false;
                      _currentPage++;
                    });
                  } else if (state is LocationsLoading && _isLoading) {
                    const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: CircularProgressIndicator(),
                    );
                  } else if (state is LocationsError) {
                    setState(() {
                      _isLoading = false;
                    });
                    const NotFound();
                  }
                },
                child: RefreshIndicator(
                  onRefresh: _refreshPage,
                  child: ListView.separated(
                    controller: _scrollController,
                    itemCount: _locations.length + (_isLoading ? 1 : 0),
                    separatorBuilder: (context, index) {
                      return addVerticalSpace(16);
                    },
                    itemBuilder: (context, index) {
                      if (index >= _locations.length) {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      }

                      final episodes = _locations[index];
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 5),
                        child: ListTile(
                          onTap: () {
                            context.go(AppRouter.episodesDetails,
                                extra: episodes);
                          },
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                episodes.type,
                                style: Theme.of(context).textTheme.titleSmall,
                              ),
                              Text(
                                episodes.name,
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                            ],
                          ),
                          subtitle: Text(
                            episodes.dimension,
                            style: TextStyle(
                                color: Theme.of(context).unselectedWidgetColor),
                          ),
                        ),
                      );
                    },
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

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:rick_and_morty/core/constants/constants.dart';
import 'package:rick_and_morty/core/router/app_router.dart';
import 'package:rick_and_morty/core/utils/sized_box_helper.dart';
import 'package:rick_and_morty/features/episodes/domain/entities/episodes_entity.dart';
import 'package:rick_and_morty/features/episodes/presentation/bloc/episodes_bloc.dart';
import 'package:rick_and_morty/shared/pages/not_found.dart';

class EpisodesPage extends StatefulWidget {
  const EpisodesPage({super.key});

  @override
  State<EpisodesPage> createState() => _EpisodesPageState();
}

class _EpisodesPageState extends State<EpisodesPage> {
  final ScrollController _scrollController = ScrollController();

  List<EpisodesEntity> _episodes = [];

  int _currentPage = 1;
  bool _isLoading = false;
  bool _isLastPage = false;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_scrollListener);
    _fetchEpisodes(_currentPage);
  }

  void _fetchEpisodes(int page) {
    if (_isLoading || _isLastPage) return;
    setState(() {
      _isLoading = true;
    });
    context.read<EpisodesBloc>().add(FetchEpisodes(
          page: page,
        ));
  }

  void _scrollListener() {
    if (_scrollController.position.extentAfter < 500 && !_isLoading) {
      _fetchEpisodes(
        _currentPage + 1,
      );
    }
  }

  Future<void> _refreshPage() async {
    setState(() {
      _episodes.clear();
      _currentPage = 1;
      _isLastPage = false;
    });
    _fetchEpisodes(
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
          "Эпизоды",
          style: Theme.of(context).textTheme.labelMedium,
        ),
      ),
      body: SafeArea(
        top: false,
        child: Column(
          children: [
            Expanded(
              child: BlocListener<EpisodesBloc, EpisodesState>(
                listener: (context, state) {
                  if (state is EpisodesLoadSuccess) {
                    setState(() {
                      final fetchedEpisodes = state.episodes;
                      _episodes.addAll(fetchedEpisodes);
                      _isLastPage = fetchedEpisodes.length < AppConsts.pageSize;
                      _isLoading = false;
                      _currentPage++;
                    });
                  } else if (state is EpisodesLoading && _isLoading) {
                    const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: CircularProgressIndicator(),
                    );
                  } else if (state is EpisodesError) {
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
                    itemCount: _episodes.length + (_isLoading ? 1 : 0),
                    separatorBuilder: (context, index) {
                      return addVerticalSpace(16);
                    },
                    itemBuilder: (context, index) {
                      if (index >= _episodes.length) {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      }

                      final episodes = _episodes[index];
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
                                episodes.episode,
                                style: Theme.of(context).textTheme.titleSmall,
                              ),
                              Text(
                                episodes.name,
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                            ],
                          ),
                          subtitle: Text(
                            episodes.airDate,
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

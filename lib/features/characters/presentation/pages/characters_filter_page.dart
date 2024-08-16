import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:rick_and_morty/features/characters/presentation/bloc/characters_bloc.dart';

class CharactersFilterPage extends StatefulWidget {
  const CharactersFilterPage({
    super.key,
  });

  @override
  State<CharactersFilterPage> createState() => _CharactersFilterPageState();
}

class _CharactersFilterPageState extends State<CharactersFilterPage> {
  String selectedStatus = '';
  String selectedGnder = '';

  void _resetFilters() {
    // setState(() {
    //   widget.select['status'] = '';
    //   widget.select['gender'] = '';
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Фильтры персонажей',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        centerTitle: false,
        automaticallyImplyLeading: false,
        actions: [
          TextButton(
            onPressed: _resetFilters,
            child: const Text('Сбросить'),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Статус',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            RadioListTile<String>(
              title: Text(
                'Живой',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              value: 'alive',
              groupValue: selectedStatus,
              onChanged: (value) {
                setState(() {
                  selectedStatus = value!;
                  selectedStatus = value;
                });
              },
            ),
            RadioListTile<String>(
              title: Text(
                'Мёртвый',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              value: 'dead',
              groupValue: selectedStatus,
              onChanged: (value) {
                setState(() {
                  selectedStatus = value!;
                  selectedStatus = value;
                });
              },
            ),
            RadioListTile<String>(
              title: Text(
                'Неизвестно',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              value: '',
              groupValue: selectedStatus,
              onChanged: (value) {
                setState(() {
                  selectedStatus = value!;
                  selectedStatus = value;
                });
              },
            ),
            const SizedBox(height: 20),
            const Text(
              'Пол',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            RadioListTile<String>(
              title: Text(
                'Мужской',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              value: 'male',
              groupValue: selectedGnder,
              onChanged: (value) {
                setState(() {
                  selectedGnder = value!;
                  selectedGnder = value;
                });
              },
            ),
            RadioListTile<String>(
              title: Text(
                'Женский',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              value: 'female',
              groupValue: selectedGnder,
              onChanged: (value) {
                setState(() {
                  selectedGnder = value!;
                  selectedGnder = value;
                });
              },
            ),
            RadioListTile<String>(
              title: Text(
                'Неизвестно',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              value: '',
              groupValue: selectedGnder,
              onChanged: (value) {
                setState(() {
                  selectedGnder = value!;
                  selectedGnder = value;
                });
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // context.read<CharactersBloc>().add(FetchCharacters(
          //       page: 1,
          //       status: selectedStatus,
          //       gender: selectedGnder,
          //       isLoadMore: null,
          //     ));
          Navigator.pop(context);
        },
        child: const Icon(Icons.check),
      ),
    );
  }
}

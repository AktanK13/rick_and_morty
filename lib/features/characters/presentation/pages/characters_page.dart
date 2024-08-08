import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/features/characters/presentation/bloc/characters_bloc.dart';

class CharactersPage extends StatefulWidget {
  const CharactersPage({super.key});

  @override
  State<CharactersPage> createState() => _CharactersPageState();
}

class _CharactersPageState extends State<CharactersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("characters page"),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.remove),
        onPressed: () => context.read<CharactersBloc>().add(
              const FetchCharacters(page: 1),
            ),
      ),
      body: Text('Всего персонажей: 200'),
    );
  }
}

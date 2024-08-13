import 'package:flutter/material.dart';

class CharactersFilterPage extends StatelessWidget {
  const CharactersFilterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Filter')),
      body: const Center(child: Text('Filter Page')),
    );
  }
}
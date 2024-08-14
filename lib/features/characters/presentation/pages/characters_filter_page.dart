import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CharactersFilterPage extends StatefulWidget {
  const CharactersFilterPage({super.key, required this.select});

  final Map<String, String?> select;
  @override
  State<CharactersFilterPage> createState() => _CharactersFilterPageState();
}

class _CharactersFilterPageState extends State<CharactersFilterPage> {
  String? selectedStatus = '';
  String? selectedGnder = '';

  void _resetFilters() {
    setState(() {
      widget.select['status'] = '';
      widget.select['gender'] = '';
    });
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
              groupValue: widget.select['status'],
              onChanged: (value) {
                setState(() {
                  selectedStatus = value;
                  widget.select['status'] = value;
                });
              },
            ),
            RadioListTile<String>(
              title: Text(
                'Мёртвый',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              value: 'dead',
              groupValue: widget.select['status'],
              onChanged: (value) {
                setState(() {
                  selectedStatus = value;
                  widget.select['status'] = value;
                });
              },
            ),
            RadioListTile<String>(
              title: Text(
                'Неизвестно',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              value: '',
              groupValue: widget.select['status'],
              onChanged: (value) {
                setState(() {
                  selectedStatus = value;
                  widget.select['status'] = value;
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
              groupValue: widget.select['gender'],
              onChanged: (value) {
                setState(() {
                  selectedGnder = value;
                  widget.select['gender'] = value;
                });
              },
            ),
            RadioListTile<String>(
              title: Text(
                'Женский',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              value: 'female',
              groupValue: widget.select['gender'],
              onChanged: (value) {
                setState(() {
                  selectedGnder = value;
                  widget.select['gender'] = value;
                });
              },
            ),
            RadioListTile<String>(
              title: Text(
                'Неизвестно',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              value: '',
              groupValue: widget.select['gender'],
              onChanged: (value) {
                setState(() {
                  selectedGnder = value;
                  widget.select['gender'] = value;
                });
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.pop({
            'status': widget.select['status'],
            'gender': widget.select['gender'],
          });
        },
        child: const Icon(Icons.check),
      ),
    );
  }
}

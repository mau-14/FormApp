import 'package:flutter/material.dart';

class BlocCounterScreen extends StatelessWidget {
  const BlocCounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BLoC Counter'),
        actions: [
          IconButton(
            onPressed: () => {},
            icon: const Icon(Icons.refresh_outlined),
          ),
        ],
      ),
      body: Center(child: const Text('Counter value: xxx')),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: 1,
            onPressed: () => {},
            child: const Text('+3'),
          ),
          SizedBox(height: 15),
          FloatingActionButton(
            heroTag: 2,
            onPressed: () => {},
            child: const Text('+2'),
          ),
          SizedBox(height: 15),
          FloatingActionButton(
            heroTag: 3,
            onPressed: () => {},
            child: const Text('+1'),
          ),
        ],
      ),
    );
  }
}

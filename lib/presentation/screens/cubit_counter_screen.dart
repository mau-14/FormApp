import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:forms_app/presentation/blocs/counter_cubit/counter_cubit.dart';

class CubitCounterScreen extends StatelessWidget {
  const CubitCounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CounterCubit(),
      child: _CubitCounterView(),
    );
  }
}

class _CubitCounterView extends StatelessWidget {
  const _CubitCounterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cubit Counter'),
        actions: [
          IconButton(
            onPressed: () => {},
            icon: const Icon(Icons.refresh_outlined),
          ),
        ],
      ),
      body: const Center(child: Text('Counter value: xxx')),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: 1,
            onPressed: () => {},
            child: const Text('+3'),
          ),
          const SizedBox(height: 15),
          FloatingActionButton(
            heroTag: 2,
            onPressed: () => {},
            child: const Text('+2'),
          ),
          const SizedBox(height: 15),
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

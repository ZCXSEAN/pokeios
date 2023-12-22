import 'package:flutter/material.dart';
import 'package:pokeapi/model/pokemon/pokemon.dart';
import 'package:pokeapi/pokeapi.dart';
import 'package:pokeios/main.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: AppView(),
    );
  }
}

class AppView extends StatelessWidget {
  const AppView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Pokedex'),
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () async {
                await pokemonRepository.saveAllPokemonsToHive();
              },
              child: Text('Save All Pokemons')),
          ElevatedButton(
              onPressed: () {
                int c = pokemonRepository.count();
                print('$c');
              },
              child: Text('Count')),
        ],
      ),
    );
  }
}

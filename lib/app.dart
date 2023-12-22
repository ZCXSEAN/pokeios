import 'package:flutter/material.dart';
import 'package:pokeapi/model/pokemon/pokemon.dart';
import 'package:pokeapi/pokeapi.dart';

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
        title: Text('Pokedex-iOS'),
      ),
      body: Center(
        child: GestureDetector(
          child: const Text('print pokemon',
                    style: TextStyle(color: Color.fromARGB(255, 23, 84, 226))),
                onTap: () async {
                  var pokemon = await PokeAPI.getObject<Pokemon>(1019);
                  print(pokemon);
                },
        ),
      ),
    );
  }
}

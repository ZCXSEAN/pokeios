import 'package:flutter/material.dart';
import 'package:pokeios/app.dart';
import 'package:pokeios/pokemon_repository.dart';


final PokemonRepository pokemonRepository = PokemonRepository();

void main() async {
  await pokemonRepository.init();
  runApp(const MyApp());
}
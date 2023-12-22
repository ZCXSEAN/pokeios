import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:pokeios/app.dart';
import 'package:pokeios/model/pokemon/pokemon.dart';

void main() async {
  await Hive.initFlutter();

  var box = await Hive.openBox<Pokemon>('testBox');

  runApp(const MyApp());
}
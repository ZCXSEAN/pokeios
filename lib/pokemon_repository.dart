import 'package:hive_flutter/hive_flutter.dart';
import 'package:pokeapi/model/pokemon/pokemon.dart';
import 'package:pokeapi/pokeapi.dart';
import 'package:pokeios/model/pokemon/pokemon.dart' as app_model;

class PokemonRepository {
  late Box<app_model.Pokemon> _pokemonBox;

  PokemonRepository();

  init() async {
    await Hive.initFlutter();
    Hive.registerAdapter(app_model.PokemonAdapter());
    Hive.registerAdapter(app_model.AbilitiesAdapter());
    Hive.registerAdapter(app_model.GameIndicesAdapter());
    Hive.registerAdapter(app_model.HeldItemsAdapter());
    Hive.registerAdapter(app_model.VersionDetailsAdapter());
    Hive.registerAdapter(app_model.EncounterDetailsAdapter());
    Hive.registerAdapter(app_model.ConditionValuesAdapter());
    Hive.registerAdapter(app_model.MethodAdapter());
    Hive.registerAdapter(app_model.MovesAdapter());
    Hive.registerAdapter(app_model.VersionGroupDetailsAdapter());
    Hive.registerAdapter(app_model.SpritesAdapter());
    Hive.registerAdapter(app_model.StatsAdapter());
    Hive.registerAdapter(app_model.TypesAdapter());
    _pokemonBox = await Hive.openBox<app_model.Pokemon>('pokemon');
  }

  List<app_model.Pokemon> getAllPokemons() {
    return _pokemonBox.values.toList();
  }

  Future<void> _addPokemon(int id) async {
    print('saving pokemons $id');
    var pokemon = await PokeAPI.getObject<Pokemon>(id);
    print(pokemon);

    _pokemonBox.put(pokemon!.id, pokemon as app_model.Pokemon);
    print('saving pokemons $id done');
  }

  saveAllPokemonsToHive() async {
    // for (var id = 1; id <= 1025; id++) {
    //   _addPokemon(id);
    // }
    // for (var id = 10001; id <= 10277; id++) {
    //   _addPokemon(id);
    // }
    await _addPokemon(1);
  }

  int count() {
    return _pokemonBox.length;
  }
}

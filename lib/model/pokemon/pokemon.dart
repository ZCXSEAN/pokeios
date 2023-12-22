import 'package:hive_flutter/hive_flutter.dart';
import 'package:pokeapi/model/utils/common.dart';

part 'pokemon.g.dart';

@HiveType(typeId: 1)
class Pokemon {
  @HiveField(0)
  int? id;
  @HiveField(1)
  String? name;
  @HiveField(2)
  int? baseExperience;
  @HiveField(3)
  int? height;
  @HiveField(4)
  bool? isDefault;
  @HiveField(5)
  int? order;
  @HiveField(6)
  int? weight;
  @HiveField(7)
  List<Abilities>? abilities;
  @HiveField(8)
  List<NamedAPIResource>? forms;
  @HiveField(9)
  List<GameIndices>? gameIndices;
  @HiveField(10)
  List<HeldItems>? heldItems;
  @HiveField(11)
  List<Moves>? moves;
  @HiveField(12)
  NamedAPIResource? species;
  @HiveField(13)
  Sprites? sprites;
  @HiveField(14)
  List<Stats>? stats;
  @HiveField(15)
  List<Types>? types;

  Pokemon(
      {this.id,
      this.name,
      this.baseExperience,
      this.height,
      this.isDefault,
      this.order,
      this.weight,
      this.abilities,
      this.forms,
      this.gameIndices,
      this.heldItems,
      this.moves,
      this.species,
      this.sprites,
      this.stats,
      this.types});

  Pokemon.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    baseExperience = json['base_experience'];
    height = json['height'];
    isDefault = json['is_default'];
    order = json['order'];
    weight = json['weight'];
    if (json['abilities'] != null) {
      abilities =  <Abilities>[];
      json['abilities'].forEach((v) {
        abilities!.add( Abilities.fromJson(v));
      });
    }
    if (json['forms'] != null) {
      forms =  <NamedAPIResource>[];
      json['forms'].forEach((v) {
        forms!.add( NamedAPIResource.fromJson(v));
      });
    }
    if (json['game_indices'] != null) {
      gameIndices =  <GameIndices>[];
      json['game_indices'].forEach((v) {
        gameIndices!.add( GameIndices.fromJson(v));
      });
    }
    if (json['held_items'] != null) {
      heldItems =  <HeldItems>[];
      json['held_items'].forEach((v) {
        heldItems!.add( HeldItems.fromJson(v));
      });
    }
    if (json['moves'] != null) {
      moves =  <Moves>[];
      json['moves'].forEach((v) {
        moves!.add( Moves.fromJson(v));
      });
    }
    species = json['species'] != null
        ?  NamedAPIResource.fromJson(json['species'])
        : null;
    sprites =
        json['sprites'] != null ?  Sprites.fromJson(json['sprites']) : null;
    if (json['stats'] != null) {
      stats =  <Stats>[];
      json['stats'].forEach((v) {
        stats!.add( Stats.fromJson(v));
      });
    }
    if (json['types'] != null) {
      types =  <Types>[];
      json['types'].forEach((v) {
        types!.add( Types.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['base_experience'] = this.baseExperience;
    data['height'] = this.height;
    data['is_default'] = this.isDefault;
    data['order'] = this.order;
    data['weight'] = this.weight;
    if (this.abilities != null) {
      data['abilities'] = this.abilities!.map((v) => v.toJson()).toList();
    }
    if (this.forms != null) {
      data['forms'] = this.forms!.map((v) => v.toJson()).toList();
    }
    if (this.gameIndices != null) {
      data['game_indices'] = this.gameIndices!.map((v) => v.toJson()).toList();
    }
    if (this.heldItems != null) {
      data['held_items'] = this.heldItems!.map((v) => v.toJson()).toList();
    }
    if (this.moves != null) {
      data['moves'] = this.moves!.map((v) => v.toJson()).toList();
    }
    if (this.species != null) {
      data['species'] = this.species!.toJson();
    }
    if (this.sprites != null) {
      data['sprites'] = this.sprites!.toJson();
    }
    if (this.stats != null) {
      data['stats'] = this.stats!.map((v) => v.toJson()).toList();
    }
    if (this.types != null) {
      data['types'] = this.types!.map((v) => v.toJson()).toList();
    }
    return data;
  }

  @override
  String toString() {
    return 'Pokemon{id: $id, name: $name, baseExperience: $baseExperience, height: $height, isDefault: $isDefault, order: $order, weight: $weight, abilities: $abilities, forms: $forms, gameIndices: $gameIndices, heldItems: $heldItems, moves: $moves, species: $species, sprites: $sprites, stats: $stats, types: $types}';
  }
}

@HiveType(typeId: 2)
class Abilities {
  @HiveField(0)
  bool? isHidden;
  @HiveField(1)
  int? slot;
  @HiveField(2)
  NamedAPIResource? ability;

  Abilities({this.isHidden, this.slot, this.ability});

  Abilities.fromJson(Map<String, dynamic> json) {
    isHidden = json['is_hidden'];
    slot = json['slot'];
    ability = json['ability'] != null
        ?  NamedAPIResource.fromJson(json['ability'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  Map<String, dynamic>();
    data['is_hidden'] = this.isHidden;
    data['slot'] = this.slot;
    if (this.ability != null) {
      data['ability'] = this.ability!.toJson();
    }
    return data;
  }

  @override
  String toString() {
    return 'Abilities{isHidden: $isHidden, slot: $slot, ability: $ability}';
  }
}

@HiveType(typeId: 3)
class GameIndices {
  @HiveField(0)
  int? gameIndex;
  @HiveField(1)
  NamedAPIResource? version;

  GameIndices({this.gameIndex, this.version});

  GameIndices.fromJson(Map<String, dynamic> json) {
    gameIndex = json['game_index'];
    version = json['version'] != null
        ?  NamedAPIResource.fromJson(json['version'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  Map<String, dynamic>();
    data['game_index'] = this.gameIndex;
    if (this.version != null) {
      data['version'] = this.version!.toJson();
    }
    return data;
  }

  @override
  String toString() {
    return 'GameIndices{gameIndex: $gameIndex, version: $version}';
  }
}

@HiveType(typeId: 4)
class HeldItems {
  @HiveField(0)
  NamedAPIResource? item;
  @HiveField(1)
  List<VersionDetails>? versionDetails;

  HeldItems({this.item, this.versionDetails});

  HeldItems.fromJson(Map<String, dynamic> json) {
    item = json['item'] != null
        ?  NamedAPIResource.fromJson(json['item'])
        : null;
    if (json['version_details'] != null) {
      versionDetails =  <VersionDetails>[];
      json['version_details'].forEach((v) {
        versionDetails!.add( VersionDetails.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  Map<String, dynamic>();
    if (this.item != null) {
      data['item'] = this.item!.toJson();
    }
    if (this.versionDetails != null) {
      data['version_details'] =
          this.versionDetails!.map((v) => v.toJson()).toList();
    }
    return data;
  }

  @override
  String toString() {
    return 'HeldItems{item: $item, versionDetails: $versionDetails}';
  }
}

@HiveType(typeId: 5)
class VersionDetails {
  @HiveField(0)
  int? rarity;
  @HiveField(1)
  NamedAPIResource? version;

  VersionDetails({this.rarity, this.version});

  VersionDetails.fromJson(Map<String, dynamic> json) {
    rarity = json['rarity'];
    version = json['version'] != null
        ?  NamedAPIResource.fromJson(json['version'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  Map<String, dynamic>();
    data['rarity'] = this.rarity;
    if (this.version != null) {
      data['version'] = this.version!.toJson();
    }
    return data;
  }

  @override
  String toString() {
    return 'VersionDetails{rarity: $rarity, version: $version}';
  }
}

@HiveType(typeId: 6)
class EncounterDetails {
  @HiveField(0)
  int? minLevel;
  @HiveField(1)
  int? maxLevel;
  @HiveField(2)
  List<ConditionValues>? conditionValues;
  @HiveField(3)
  int? chance;
  @HiveField(4)
  Method? method;

  EncounterDetails(
      {this.minLevel,
      this.maxLevel,
      this.conditionValues,
      this.chance,
      this.method});

  EncounterDetails.fromJson(Map<String, dynamic> json) {
    minLevel = json['min_level'];
    maxLevel = json['max_level'];
    if (json['condition_values'] != null) {
      conditionValues =  <ConditionValues>[];
      json['condition_values'].forEach((v) {
        conditionValues!.add( ConditionValues.fromJson(v));
      });
    }
    chance = json['chance'];
    method =
        json['method'] != null ?  Method.fromJson(json['method']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  Map<String, dynamic>();
    data['min_level'] = this.minLevel;
    data['max_level'] = this.maxLevel;
    if (this.conditionValues != null) {
      data['condition_values'] =
          this.conditionValues!.map((v) => v.toJson()).toList();
    }
    data['chance'] = this.chance;
    if (this.method != null) {
      data['method'] = this.method!.toJson();
    }
    return data;
  }

  @override
  String toString() {
    return 'EncounterDetails{minLevel: $minLevel, maxLevel: $maxLevel, conditionValues: $conditionValues, chance: $chance, method: $method}';
  }
}

@HiveType(typeId: 7)
class ConditionValues {
  @HiveField(0)
  String? name;
  @HiveField(1)
  String? url;

  ConditionValues({this.name, this.url});

  ConditionValues.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  Map<String, dynamic>();
    data['name'] = this.name;
    data['url'] = this.url;
    return data;
  }

  @override
  String toString() {
    return 'ConditionValues{name: $name, url: $url}';
  }
}

@HiveType(typeId: 8)
class Method {
  @HiveField(0)
  String? name;
  @HiveField(1)
  String? url;

  Method({this.name, this.url});

  Method.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  Map<String, dynamic>();
    data['name'] = this.name;
    data['url'] = this.url;
    return data;
  }

  @override
  String toString() {
    return 'Method{name: $name, url: $url}';
  }
}

@HiveType(typeId: 9)
class Moves {
  @HiveField(0)
  NamedAPIResource? move;
  @HiveField(1)
  List<VersionGroupDetails>? versionGroupDetails;

  Moves({this.move, this.versionGroupDetails});

  Moves.fromJson(Map<String, dynamic> json) {
    move = json['move'] != null
        ?  NamedAPIResource.fromJson(json['move'])
        : null;
    if (json['version_group_details'] != null) {
      versionGroupDetails =  <VersionGroupDetails>[];
      json['version_group_details'].forEach((v) {
        versionGroupDetails!.add( VersionGroupDetails.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  Map<String, dynamic>();
    if (this.move != null) {
      data['move'] = this.move!.toJson();
    }
    if (this.versionGroupDetails != null) {
      data['version_group_details'] =
          this.versionGroupDetails!.map((v) => v.toJson()).toList();
    }
    return data;
  }

  @override
  String toString() {
    return 'Moves{move: $move, versionGroupDetails: $versionGroupDetails}';
  }
}

@HiveType(typeId: 10)
class VersionGroupDetails {
  @HiveField(0)
  int? levelLearnedAt;
  @HiveField(1)
  NamedAPIResource? versionGroup;
  @HiveField(2)
  NamedAPIResource? moveLearnMethod;

  VersionGroupDetails(
      {this.levelLearnedAt, this.versionGroup, this.moveLearnMethod});

  VersionGroupDetails.fromJson(Map<String, dynamic> json) {
    levelLearnedAt = json['level_learned_at'];
    versionGroup = json['version_group'] != null
        ?  NamedAPIResource.fromJson(json['version_group'])
        : null;
    moveLearnMethod = json['move_learn_method'] != null
        ?  NamedAPIResource.fromJson(json['move_learn_method'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  Map<String, dynamic>();
    data['level_learned_at'] = this.levelLearnedAt;
    if (this.versionGroup != null) {
      data['version_group'] = this.versionGroup!.toJson();
    }
    if (this.moveLearnMethod != null) {
      data['move_learn_method'] = this.moveLearnMethod!.toJson();
    }
    return data;
  }

  @override
  String toString() {
    return 'VersionGroupDetails{levelLearnedAt: $levelLearnedAt, versionGroup: $versionGroup, moveLearnMethod: $moveLearnMethod}';
  }
}

@HiveType(typeId: 11)
class Sprites {
  @HiveField(0)
  String? backFemale;
  @HiveField(1)
  String? backShinyFemale;
  @HiveField(2)
  String? backDefault;
  @HiveField(3)
  String? frontFemale;
  @HiveField(4)
  String? frontShinyFemale;
  @HiveField(5)
  String? backShiny;
  @HiveField(6)
  String? frontDefault;
  @HiveField(7)
  String? frontShiny;

  Sprites(
      {this.backFemale,
      this.backShinyFemale,
      this.backDefault,
      this.frontFemale,
      this.frontShinyFemale,
      this.backShiny,
      this.frontDefault,
      this.frontShiny});

  Sprites.fromJson(Map<String, dynamic> json) {
    backFemale = json['back_female'];
    backShinyFemale = json['back_shiny_female'];
    backDefault = json['back_default'];
    frontFemale = json['front_female'];
    frontShinyFemale = json['front_shiny_female'];
    backShiny = json['back_shiny'];
    frontDefault = json['front_default'];
    frontShiny = json['front_shiny'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  Map<String, dynamic>();
    data['back_female'] = this.backFemale;
    data['back_shiny_female'] = this.backShinyFemale;
    data['back_default'] = this.backDefault;
    data['front_female'] = this.frontFemale;
    data['front_shiny_female'] = this.frontShinyFemale;
    data['back_shiny'] = this.backShiny;
    data['front_default'] = this.frontDefault;
    data['front_shiny'] = this.frontShiny;
    return data;
  }

  @override
  String toString() {
    return 'Sprites{backFemale: $backFemale, backShinyFemale: $backShinyFemale, backDefault: $backDefault, frontFemale: $frontFemale, frontShinyFemale: $frontShinyFemale, backShiny: $backShiny, frontDefault: $frontDefault, frontShiny: $frontShiny}';
  }
}

@HiveType(typeId: 12)
class Stats {
  @HiveField(0)
  int? baseStat;
  @HiveField(1)
  int? effort;
  @HiveField(2)
  NamedAPIResource? stat;

  Stats({this.baseStat, this.effort, this.stat});

  Stats.fromJson(Map<String, dynamic> json) {
    baseStat = json['base_stat'];
    effort = json['effort'];
    stat = json['stat'] != null
        ?  NamedAPIResource.fromJson(json['stat'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  Map<String, dynamic>();
    data['base_stat'] = this.baseStat;
    data['effort'] = this.effort;
    if (this.stat != null) {
      data['stat'] = this.stat!.toJson();
    }
    return data;
  }

  @override
  String toString() {
    return 'Stats{baseStat: $baseStat, effort: $effort, stat: $stat}';
  }
}

@HiveType(typeId: 13)
class Types {
  @HiveField(0)
  int? slot;
  @HiveField(1)
  NamedAPIResource? type;

  Types({this.slot, this.type});

  Types.fromJson(Map<String, dynamic> json) {
    slot = json['slot'];
    type = json['type'] != null
        ?  NamedAPIResource.fromJson(json['type'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  Map<String, dynamic>();
    data['slot'] = this.slot;
    if (this.type != null) {
      data['type'] = this.type!.toJson();
    }
    return data;
  }

  @override
  String toString() {
    return 'Types{slot: $slot, type: $type}';
  }
}

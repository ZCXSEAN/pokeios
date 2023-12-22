// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PokemonAdapter extends TypeAdapter<Pokemon> {
  @override
  final int typeId = 1;

  @override
  Pokemon read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Pokemon(
      id: fields[0] as int?,
      name: fields[1] as String?,
      baseExperience: fields[2] as int?,
      height: fields[3] as int?,
      isDefault: fields[4] as bool?,
      order: fields[5] as int?,
      weight: fields[6] as int?,
      abilities: (fields[7] as List?)?.cast<Abilities>(),
      forms: (fields[8] as List?)?.cast<NamedAPIResource>(),
      gameIndices: (fields[9] as List?)?.cast<GameIndices>(),
      heldItems: (fields[10] as List?)?.cast<HeldItems>(),
      moves: (fields[11] as List?)?.cast<Moves>(),
      species: fields[12] as NamedAPIResource?,
      sprites: fields[13] as Sprites?,
      stats: (fields[14] as List?)?.cast<Stats>(),
      types: (fields[15] as List?)?.cast<Types>(),
    );
  }

  @override
  void write(BinaryWriter writer, Pokemon obj) {
    writer
      ..writeByte(16)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.baseExperience)
      ..writeByte(3)
      ..write(obj.height)
      ..writeByte(4)
      ..write(obj.isDefault)
      ..writeByte(5)
      ..write(obj.order)
      ..writeByte(6)
      ..write(obj.weight)
      ..writeByte(7)
      ..write(obj.abilities)
      ..writeByte(8)
      ..write(obj.forms)
      ..writeByte(9)
      ..write(obj.gameIndices)
      ..writeByte(10)
      ..write(obj.heldItems)
      ..writeByte(11)
      ..write(obj.moves)
      ..writeByte(12)
      ..write(obj.species)
      ..writeByte(13)
      ..write(obj.sprites)
      ..writeByte(14)
      ..write(obj.stats)
      ..writeByte(15)
      ..write(obj.types);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PokemonAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class AbilitiesAdapter extends TypeAdapter<Abilities> {
  @override
  final int typeId = 2;

  @override
  Abilities read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Abilities(
      isHidden: fields[0] as bool?,
      slot: fields[1] as int?,
      ability: fields[2] as NamedAPIResource?,
    );
  }

  @override
  void write(BinaryWriter writer, Abilities obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.isHidden)
      ..writeByte(1)
      ..write(obj.slot)
      ..writeByte(2)
      ..write(obj.ability);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AbilitiesAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class GameIndicesAdapter extends TypeAdapter<GameIndices> {
  @override
  final int typeId = 3;

  @override
  GameIndices read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return GameIndices(
      gameIndex: fields[0] as int?,
      version: fields[1] as NamedAPIResource?,
    );
  }

  @override
  void write(BinaryWriter writer, GameIndices obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.gameIndex)
      ..writeByte(1)
      ..write(obj.version);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GameIndicesAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class HeldItemsAdapter extends TypeAdapter<HeldItems> {
  @override
  final int typeId = 4;

  @override
  HeldItems read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HeldItems(
      item: fields[0] as NamedAPIResource?,
      versionDetails: (fields[1] as List?)?.cast<VersionDetails>(),
    );
  }

  @override
  void write(BinaryWriter writer, HeldItems obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.item)
      ..writeByte(1)
      ..write(obj.versionDetails);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HeldItemsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class VersionDetailsAdapter extends TypeAdapter<VersionDetails> {
  @override
  final int typeId = 5;

  @override
  VersionDetails read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return VersionDetails(
      rarity: fields[0] as int?,
      version: fields[1] as NamedAPIResource?,
    );
  }

  @override
  void write(BinaryWriter writer, VersionDetails obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.rarity)
      ..writeByte(1)
      ..write(obj.version);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is VersionDetailsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class EncounterDetailsAdapter extends TypeAdapter<EncounterDetails> {
  @override
  final int typeId = 6;

  @override
  EncounterDetails read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return EncounterDetails(
      minLevel: fields[0] as int?,
      maxLevel: fields[1] as int?,
      conditionValues: (fields[2] as List?)?.cast<ConditionValues>(),
      chance: fields[3] as int?,
      method: fields[4] as Method?,
    );
  }

  @override
  void write(BinaryWriter writer, EncounterDetails obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.minLevel)
      ..writeByte(1)
      ..write(obj.maxLevel)
      ..writeByte(2)
      ..write(obj.conditionValues)
      ..writeByte(3)
      ..write(obj.chance)
      ..writeByte(4)
      ..write(obj.method);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EncounterDetailsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class ConditionValuesAdapter extends TypeAdapter<ConditionValues> {
  @override
  final int typeId = 7;

  @override
  ConditionValues read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ConditionValues(
      name: fields[0] as String?,
      url: fields[1] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, ConditionValues obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.url);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ConditionValuesAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class MethodAdapter extends TypeAdapter<Method> {
  @override
  final int typeId = 8;

  @override
  Method read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Method(
      name: fields[0] as String?,
      url: fields[1] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Method obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.url);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MethodAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class MovesAdapter extends TypeAdapter<Moves> {
  @override
  final int typeId = 9;

  @override
  Moves read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Moves(
      move: fields[0] as NamedAPIResource?,
      versionGroupDetails: (fields[1] as List?)?.cast<VersionGroupDetails>(),
    );
  }

  @override
  void write(BinaryWriter writer, Moves obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.move)
      ..writeByte(1)
      ..write(obj.versionGroupDetails);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MovesAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class VersionGroupDetailsAdapter extends TypeAdapter<VersionGroupDetails> {
  @override
  final int typeId = 10;

  @override
  VersionGroupDetails read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return VersionGroupDetails(
      levelLearnedAt: fields[0] as int?,
      versionGroup: fields[1] as NamedAPIResource?,
      moveLearnMethod: fields[2] as NamedAPIResource?,
    );
  }

  @override
  void write(BinaryWriter writer, VersionGroupDetails obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.levelLearnedAt)
      ..writeByte(1)
      ..write(obj.versionGroup)
      ..writeByte(2)
      ..write(obj.moveLearnMethod);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is VersionGroupDetailsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class SpritesAdapter extends TypeAdapter<Sprites> {
  @override
  final int typeId = 11;

  @override
  Sprites read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Sprites(
      backFemale: fields[0] as String?,
      backShinyFemale: fields[1] as String?,
      backDefault: fields[2] as String?,
      frontFemale: fields[3] as String?,
      frontShinyFemale: fields[4] as String?,
      backShiny: fields[5] as String?,
      frontDefault: fields[6] as String?,
      frontShiny: fields[7] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Sprites obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.backFemale)
      ..writeByte(1)
      ..write(obj.backShinyFemale)
      ..writeByte(2)
      ..write(obj.backDefault)
      ..writeByte(3)
      ..write(obj.frontFemale)
      ..writeByte(4)
      ..write(obj.frontShinyFemale)
      ..writeByte(5)
      ..write(obj.backShiny)
      ..writeByte(6)
      ..write(obj.frontDefault)
      ..writeByte(7)
      ..write(obj.frontShiny);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SpritesAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class StatsAdapter extends TypeAdapter<Stats> {
  @override
  final int typeId = 12;

  @override
  Stats read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Stats(
      baseStat: fields[0] as int?,
      effort: fields[1] as int?,
      stat: fields[2] as NamedAPIResource?,
    );
  }

  @override
  void write(BinaryWriter writer, Stats obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.baseStat)
      ..writeByte(1)
      ..write(obj.effort)
      ..writeByte(2)
      ..write(obj.stat);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StatsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class TypesAdapter extends TypeAdapter<Types> {
  @override
  final int typeId = 13;

  @override
  Types read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Types(
      slot: fields[0] as int?,
      type: fields[1] as NamedAPIResource?,
    );
  }

  @override
  void write(BinaryWriter writer, Types obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.slot)
      ..writeByte(1)
      ..write(obj.type);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TypesAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

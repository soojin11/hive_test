// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hive_data.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HivePickupDataAdapter extends TypeAdapter<HivePickupData> {
  @override
  final int typeId = 1;

  @override
  HivePickupData read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HivePickupData(
      ccId: fields[0] as String,
      providerId: fields[1] as String,
      restaurantId: fields[2] as String,
      restaurantName: fields[3] as String,
      pickDate: fields[4] as DateTime,
      writeDate: fields[5] as DateTime,
      pickVolume: fields[6] as double,
      cutoff: fields[7] as bool,
      count: fields[8] as int,
      memo: fields[9] as String,
      id: fields[10] as int,
    );
  }

  @override
  void write(BinaryWriter writer, HivePickupData obj) {
    writer
      ..writeByte(11)
      ..writeByte(0)
      ..write(obj.ccId)
      ..writeByte(1)
      ..write(obj.providerId)
      ..writeByte(2)
      ..write(obj.restaurantId)
      ..writeByte(3)
      ..write(obj.restaurantName)
      ..writeByte(4)
      ..write(obj.pickDate)
      ..writeByte(5)
      ..write(obj.writeDate)
      ..writeByte(6)
      ..write(obj.pickVolume)
      ..writeByte(7)
      ..write(obj.cutoff)
      ..writeByte(8)
      ..write(obj.count)
      ..writeByte(9)
      ..write(obj.memo)
      ..writeByte(10)
      ..write(obj.id);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HivePickupDataAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

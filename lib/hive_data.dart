import 'package:hive/hive.dart';
part 'hive_data.g.dart';

@HiveType(typeId: 1)
class HivePickupData {
  @HiveField(0)
  String ccId;
  @HiveField(1)
  String providerId;
  @HiveField(2)
  String restaurantId;
  @HiveField(3)
  String restaurantName;
  @HiveField(4)
  DateTime pickDate;
  @HiveField(5)
  DateTime writeDate;
  @HiveField(6)
  double pickVolume;
  @HiveField(7)
  bool cutoff;
  @HiveField(8)
  int count;
  @HiveField(9)
  String memo;
  @HiveField(10)
  int id;

  HivePickupData({
    required this.ccId,
    this.providerId = '-',
    required this.restaurantId,
    required this.restaurantName,
    required this.pickDate,
    required this.writeDate,
    required this.pickVolume,
    required this.cutoff,
    this.count = 0,
    this.memo = '',
    required this.id,
  });
}

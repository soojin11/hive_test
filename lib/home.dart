import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_test/hive_data.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Box box = Hive.box<HivePickupData>('testBox');

    return Column(
      children: [
        const Text("hive test"),
        ElevatedButton(
            onPressed: () {
              int idx = 0;

              if (box.isNotEmpty) {
                final int preItem = box.getAt(box.length - 1).id;
                if (preItem != null) {
                  idx = preItem + 1;
                }
              }
              print(box.get(box.length - 1).ccId);
              box.put(
                  idx,
                  HivePickupData(
                      ccId: "32ㅑ겨9ㅈ댜겨랴ㅐ",
                      restaurantId: "restaurantId",
                      restaurantName: "restaurantName",
                      pickDate: DateTime.now(),
                      writeDate: DateTime.now(),
                      pickVolume: 10,
                      cutoff: false,
                      id: idx));
            },
            child: const Text("hive get")),
        Text("hive data ?? ${box.get(box.length - 1).ccId}")
      ],
    );
  }
}

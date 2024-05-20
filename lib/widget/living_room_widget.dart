import 'package:flutter/material.dart';
import 'package:smart_home/common/style.dart';
import 'package:smart_home/widget/custom_glass.dart';

// Model data untuk perangkat
class Device {
  final String name;
  bool isSwitchedOn;

  Device({
    required this.name,
    this.isSwitchedOn = false,
  });
}

class LivingRoomGrid extends StatefulWidget {
  const LivingRoomGrid({super.key});

  @override
  State<LivingRoomGrid> createState() => _LivingRoomGridState();
}

class _LivingRoomGridState extends State<LivingRoomGrid> {
  // Data dummy untuk perangkat
  final List<Device> devices = [
    Device(name: 'Panasonic Air Conditioner'),
    Device(name: 'Samsung TV'),
    Device(name: 'Philips Hue Light'),
    Device(name: 'Sony Sound System'),
    Device(name: 'LG Refrigerator'),
    Device(name: 'Xiaomi Robot Vacuum'),
    Device(name: 'Nest Thermostat'),
    Device(name: 'Ring Doorbell'),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
      ),
      padding: const EdgeInsets.only(bottom: 50, top: 15),
      itemCount: devices.length,
      itemBuilder: (BuildContext context, int index) {
        return CustomGlass(
          thisWidth: 80,
          thisHeight: 80,
          thisRadius: 12,
          thisChild: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.airplay_rounded,
                      color: whiteColor,
                    ),
                    Icon(
                      Icons.linear_scale,
                      color: whiteColor,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Flexible(
                      child: Text(
                        devices[index].name,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 14,
                          color: whiteColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      height: 30,
                      child: Switch.adaptive(
                        activeColor: whiteColor,
                        activeTrackColor: blueColor,
                        value: devices[index].isSwitchedOn,
                        onChanged: (value) {
                          setState(() {
                            devices[index].isSwitchedOn = value;
                          });
                        },
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

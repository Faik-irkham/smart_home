import 'package:flutter/material.dart';
import 'package:smart_home/common/style.dart';
import 'package:smart_home/widget/custom_glass.dart';

class RoomGridView extends StatefulWidget {
  const RoomGridView({Key? key}) : super(key: key);

  @override
  State<RoomGridView> createState() => _RoomGridViewState();
}

class _RoomGridViewState extends State<RoomGridView> {
  bool isSwitchOn = false;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
      ),
      padding: const EdgeInsets.only(bottom: 50, top: 15),
      itemCount: 8, // Adjust the itemCount based on your data
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
                Text(
                  'Panasonic Air Conditioner',
                  style: TextStyle(
                    fontSize: 14,
                    color: whiteColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      height: 30,
                      child: Switch.adaptive(
                        activeColor: whiteColor,
                        activeTrackColor: blueColor,
                        value: isSwitchOn,
                        onChanged: (value) {
                          setState(() {
                            isSwitchOn = value;
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

import 'package:flutter/material.dart';
import 'package:smart_home/common/style.dart';
import 'package:smart_home/widget/custom_glass.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg-home.jpg'),
            fit: BoxFit.cover,
            
          ),
        ),
        child: ListView(
          padding: const EdgeInsets.only(top: 28),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomGlass(
                  thisWidth: 48,
                  thisHeight: 48,
                  thisRadius: 30,
                  thisChild: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.menu),
                    color: whiteColor,
                    iconSize: 30,
                  ),
                ),
                CustomGlass(
                  thisWidth: 170,
                  thisHeight: 30,
                  thisRadius: 8,
                  thisChild: Text(
                    ' 15 Devices Running',
                    style: TextStyle(
                      color: whiteColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage('assets/images/profile.jpg'),
                ),
              ],
            ),
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomGlass(
                  thisWidth: 80,
                  thisHeight: 100,
                  thisRadius: 12,
                  thisChild: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.temple_hindu_sharp),
                      Text(
                        'Humidity',
                        style: TextStyle(
                          color: whiteColor,
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        '75%',
                        style: TextStyle(
                          color: whiteColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                CustomGlass(
                  thisWidth: 80,
                  thisHeight: 100,
                  thisRadius: 12,
                  thisChild: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.temple_hindu_sharp),
                      Text(
                        'Temperature',
                        style: TextStyle(
                          color: blueColor,
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text('20 C'),
                    ],
                  ),
                ),
                CustomGlass(
                  thisWidth: 80,
                  thisHeight: 100,
                  thisRadius: 12,
                  thisChild: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.temple_hindu_sharp),
                      Text(
                        'Temperature',
                        style: TextStyle(
                          color: blueColor,
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text('20 C'),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

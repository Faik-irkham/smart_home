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
                      Image.asset(
                        'assets/icons/humidity.png',
                        height: 28,
                        color: whiteColor,
                      ),
                      Text(
                        'Humidity',
                        style: TextStyle(
                          color: whiteColor,
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        '97%',
                        style: TextStyle(
                          color: whiteColor,
                          fontSize: 16,
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
                      Image.asset(
                        'assets/icons/temperature.png',
                        height: 28,
                        color: whiteColor,
                      ),
                      Text(
                        'Temperature',
                        style: TextStyle(
                          color: whiteColor,
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        '20ºC',
                        style: TextStyle(
                          color: whiteColor,
                          fontSize: 16,
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
                      Image.asset(
                        'assets/icons/wind.png',
                        height: 28,
                        color: whiteColor,
                      ),
                      Text(
                        'Wind',
                        style: TextStyle(
                          color: whiteColor,
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        '23 m/s',
                        style: TextStyle(
                          color: whiteColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 25),
            SizedBox(
              height: 30,
              child: DefaultTabController(
                length: 4,
                child: TabBar(
                  indicator: const BoxDecoration(),
                  dividerColor: Colors.transparent,
                  isScrollable: true,
                  tabAlignment: TabAlignment.start,
                  labelColor: whiteColor,
                  unselectedLabelColor: Colors.grey,
                  labelStyle: const TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                  ),
                  labelPadding: const EdgeInsets.symmetric(horizontal: 10),
                  tabs: const [
                    CustomGlass(
                      thisWidth: 70,
                      thisHeight: 30,
                      thisRadius: 8,
                      thisChild: Text(
                        'Living Room',
                      ),
                    ),
                    CustomGlass(
                      thisWidth: 80,
                      thisHeight: 30,
                      thisRadius: 8,
                      thisChild: Text(
                        'Bedroom',
                      ),
                    ),
                    CustomGlass(
                      thisWidth: 80,
                      thisHeight: 30,
                      thisRadius: 8,
                      thisChild: Text(
                        'Bathroom',
                      ),
                    ),
                    CustomGlass(
                      thisWidth: 80,
                      thisHeight: 30,
                      thisRadius: 8,
                      thisChild: Text(
                        'Kitchen',
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Expanded(
              child: TabBarView(
                children: [
                  // Tab 1 Content - Living Room
                  Center(
                    child: Text('Living Room'),
                  ),
                  // Tab 2 Content - Bedroom
                  Center(
                    child: Text('Bedroom'),
                  ),
                  // Tab 3 Content - Bathroom
                  Center(
                    child: Text('Bathroom'),
                  ),
                  // Tab 4 Content - Kitchen
                  Center(
                    child: Text('Kitchen'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

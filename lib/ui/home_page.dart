import 'package:flutter/material.dart';
import 'package:smart_home/common/style.dart';
import 'package:smart_home/widget/custom_glass.dart';
import 'package:smart_home/widget/custom_gridview.dart';
import 'package:smart_home/widget/living_room_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    // Initialize TabController with the length of tabs
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    // Dispose of the TabController when the widget is disposed
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg-home-3.jpg'),
            fit: BoxFit.cover,
            invertColors: true,
            opacity: 0.5,
          ),
        ),
        child: Column(
          children: [
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                children: [
                  const SizedBox(height: 28),
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
                        radius: 30,
                        backgroundImage:
                            AssetImage('assets/images/profile.jpg'),
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
                ],
              ),
            ),
            SizedBox(
              height: 30,
              child: TabBar(
                controller: _tabController,
                indicator: BoxDecoration(
                  color: blueColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                dividerColor: Colors.transparent,
                isScrollable: true,
                tabAlignment: TabAlignment.start,
                labelColor: whiteColor,
                unselectedLabelColor: Colors.grey,
                labelStyle: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
                labelPadding: const EdgeInsets.symmetric(horizontal: 10),
                tabs: const [
                  CustomGlass(
                    thisWidth: 100,
                    thisHeight: 30,
                    thisRadius: 8,
                    thisChild: Text(
                      'Living Room',
                    ),
                  ),
                  CustomGlass(
                    thisWidth: 100,
                    thisHeight: 30,
                    thisRadius: 8,
                    thisChild: Text(
                      'Bedroom',
                    ),
                  ),
                  CustomGlass(
                    thisWidth: 100,
                    thisHeight: 30,
                    thisRadius: 8,
                    thisChild: Text(
                      'Bathroom',
                    ),
                  ),
                  CustomGlass(
                    thisWidth: 100,
                    thisHeight: 30,
                    thisRadius: 8,
                    thisChild: Text(
                      'Kitchen',
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: TabBarView(
                  controller: _tabController,
                  children: const [
                    // Tab 1 Content - Living Room
                    LivingRoomGrid(),
                    // Tab 2 Content - Bedroom
                    RoomGridView(),
                    // Tab 3 Content - Bathroom
                    RoomGridView(),
                    // Tab 4 Content - Kitchen
                    RoomGridView(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

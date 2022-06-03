//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../app_texts/large_text.dart';
import '../../widgets/tap_bar_indicator.dart';

class HomeNavPage extends StatefulWidget {
  const HomeNavPage({Key? key}) : super(key: key);

  @override
  State<HomeNavPage> createState() => _HomeNavPageState();
}

class _HomeNavPageState extends State<HomeNavPage>
    with TickerProviderStateMixin {
  bool _isElevated = true;
  List<String> tapBarViewImages = [
    'mountain.jpeg',
    'welcome-three.png',
    'welcome-one.png'
  ];
  List<String> smallIcons = [
    'hiking.png',
    'snorkling.png',
    'kayaking.png',
    'balloning.png'
  ];

  @override
  Widget build(BuildContext context) {
    TabController? _tabController = TabController(length: 3, vsync: this);
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(left: 15, top: 40, right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(Icons.menu),
                AnimatedContainer(
                  width: 35,
                  height: 35,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _isElevated = !_isElevated;
                        Navigator.pushNamed(context, '/');
                      });
                    },
                  ),
                  decoration: BoxDecoration(
                    // image: const DecorationImage(
                    //   image: AssetImage('assets/Hamza.jpg')
                    // ),
                    color: Colors.grey[200],
                    boxShadow: _isElevated
                        ? [
                            const BoxShadow(
                                color: Colors.grey,
                                offset: Offset(2, 2),
                                blurRadius: 4,
                                spreadRadius: 1.5),
                            const BoxShadow(
                                color: Colors.white,
                                offset: Offset(-2, -2),
                                blurRadius: 4,
                                spreadRadius: 1.5)
                          ]
                        : null,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  duration: const Duration(milliseconds: 200),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            margin: const EdgeInsets.only(left: 15),
            child: const LargeText(
                text: 'Discover', color: Colors.black, size: 25),
          ),
          const SizedBox(
            height: 15,
          ),
          Align(
            alignment: Alignment.centerLeft,
            //this is just to make the tap bar in any place you want, change it to Alignment.centerRight to see how it changes.
            child: TabBar(
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              controller: _tabController,
              indicatorSize: TabBarIndicatorSize.label,
              isScrollable: true,
              labelPadding: const EdgeInsets.only(left: 15, right: 20),
              indicator: const TapBarIndicatorAsDecoration(
                  color: Colors.black, radius: 3),
              tabs: const [
                Tab(
                  text: 'Places',
                ),
                Tab(
                  text: 'Inspiration',
                ),
                Tab(
                  text: 'Emotions',
                ),
              ],
            ),
          ),
          SizedBox(
            height: 315,
            width: double.maxFinite,
            child: Container(
              margin: const EdgeInsets.only(left: 15, top: 15),
              child: TabBarView(
                controller: _tabController,
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 15),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 3,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          margin: const EdgeInsets.only(right: 15),
                          height: 300,
                          width: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: AssetImage(
                                  'assets/' + tapBarViewImages[index]),
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  const Text('da'),
                  const Text('da'),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            margin: const EdgeInsets.only(left: 15, right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                LargeText(text: 'Explore more', color: Colors.black, size: 20),
                LargeText(
                  text: 'See all',
                  color: Colors.grey,
                  size: 14,
                  isBold: false,
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 15, top: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: SizedBox(
                    height: 200,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 6,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          margin: const EdgeInsets.only(right: 15),
                          child: Column(
                            children: [
                              Container(
                                height: 60,
                                width: 60,
                                margin: const EdgeInsets.only(bottom: 10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/' + smallIcons[(index % 4)])),
                                ),
                              ),
                              const Text('Hello'),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

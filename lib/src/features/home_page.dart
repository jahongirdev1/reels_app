import 'package:flutter/material.dart';
import 'page_view_item.dart';
import '../../main.dart';
import 'search_page_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late final TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: FutureBuilder(
          future: controller.fetchData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return Scaffold(
                body: SafeArea(
                  child: Stack(
                    children: [
                      Column(
                        children: [
                          TabBar(
                            onTap: (value) {},
                            indicatorColor: Colors.orange,
                            labelColor: Colors.orange,
                            controller: tabController,
                            tabs: const [
                              Tab(text: 'Cars'),
                              Tab(text: 'Animal'),
                              Tab(text: 'Fish'),
                              Tab(text: 'Search'),
                            ],
                          ),
                          Expanded(
                            child: TabBarView(
                              controller: tabController,
                              children: [
                                PageViewItem(
                                  images: controller.imageAnimals,
                                  downloadLinks:
                                      controller.downloadImagesAnimals,
                                ),
                                PageViewItem(
                                  images: controller.imageCar,
                                  downloadLinks: controller.downloadImageCar,
                                ),
                                PageViewItem(
                                  images: controller.imageJellyfish,
                                  downloadLinks:
                                      controller.downloadImageJellyfish,
                                ),
                                SearchPageViewItem(
                                  images: controller.imageSearch,
                                  downloadLinks: controller.downloadImageSearch,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      );
}

import 'package:flutter/material.dart';
import '../../main.dart';
import 'page_view_item.dart';

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
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: FutureBuilder(
          future: controller.fetchData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return SafeArea(
                child: Stack(
                  children: [
                    Column(
                      children: [
                        TabBar(
                          indicatorColor: Colors.orange,
                          labelColor: Colors.orange,
                          controller: tabController,
                          tabs: const [
                            Tab(text: 'Animals'),
                            Tab(text: 'Feature'),
                            Tab(text: 'Jellyfish'),
                          ],
                        ),
                        Expanded(
                          child: TabBarView(
                            controller: tabController,
                            children: [
                              PageViewItem(
                                images: controller.imageAnimals,
                                downloadLinks: controller.downloadImagesAnimals,
                              ),
                              PageViewItem(
                                images: controller.imageFeatures,
                                downloadLinks: controller.downloadImageFeature,
                              ),
                              PageViewItem(
                                images: controller.imageJellyfish,
                                downloadLinks:
                                    controller.downloadImageJellyfish,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
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

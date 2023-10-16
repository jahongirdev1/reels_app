import '../common/utils/network_image_downloader.dart';
import '../common/utils/load_into_chache_memory.dart';
import '../common/utils/snack_bar.dart';
import 'package:flutter/material.dart';
import 'package:reels_app/main.dart';

class SearchPageViewItem extends StatefulWidget {
  const SearchPageViewItem({
    super.key,
    required this.images,
    required this.downloadLinks,
  });

  final List<String> images;
  final List<String> downloadLinks;

  @override
  State<SearchPageViewItem> createState() => _SearchPageViewItemState();
}

class _SearchPageViewItemState extends State<SearchPageViewItem> {
  int downloadPercent = 0;
  double? _progress;

  @override
  Widget build(BuildContext context) => PageView(
        scrollDirection: Axis.vertical,
        children: List.generate(
          widget.images.length,
          (index) => SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Stack(
              children: [
                Center(
                  child: buildImageWidget(widget.images[index]),
                ),
                _progress != null
                    ? const CircularProgressIndicator()
                    : Padding(
                        padding: const EdgeInsets.only(
                          bottom: 70,
                          right: 15,
                        ),
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: IconButton.filled(
                            onPressed: () {
                              _progress = downloadImage(
                                  widget.downloadLinks[index], context);
                              showSnackBar(
                                context: context,
                                color: Colors.blue,
                                text: "Downloading...",
                              );
                            },
                            icon: const Icon(Icons.download),
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                Colors.blueAccent,
                              ),
                              minimumSize: MaterialStateProperty.all(
                                const Size(70, 70),
                              ),
                            ),
                          ),
                        ),
                      ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SearchBar(
                    onChanged: (value) {
                      setState(() {
                        controller.searchImage(value);
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}

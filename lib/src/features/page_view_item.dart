import 'package:flutter_file_downloader/flutter_file_downloader.dart';
import 'package:flutter/material.dart';
import 'dart:io';

class PageViewItem extends StatefulWidget {
  const PageViewItem({
    super.key,
    required this.images,
    required this.downloadLinks,
  });
  final List<String> images;
  final List<String> downloadLinks;

  @override
  State<PageViewItem> createState() => _PageViewItemState();
}

class _PageViewItemState extends State<PageViewItem> {
  int downloadPercent = 0;
  double? _progress;

  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.vertical,
      children: List.generate(
        widget.images.length,
        (index) => SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            children: [
              Image(
                fit: BoxFit.fill,
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress != null &&
                      loadingProgress.expectedTotalBytes != null) {
                    downloadPercent = loadingProgress.cumulativeBytesLoaded ~/
                        loadingProgress.expectedTotalBytes!;
                  }
                  if (downloadPercent == 1) {
                    return child;
                  } else {
                    return const SizedBox(
                      width: 50,
                      height: 50,
                      child: CircularProgressIndicator(
                        strokeCap: StrokeCap.round,
                      ),
                    );
                  }
                },
                image: NetworkImage(
                  widget.images[index],
                ),
              ),
              _progress != null
                  ? const CircularProgressIndicator()
                  : IconButton.filled(
                      onPressed: () => _downloadImage(
                        widget.downloadLinks[index],
                      ),
                      icon: const Icon(Icons.download),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          Colors.blueAccent,
                        ),
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }

  void _downloadImage(String url) {
    FileDownloader.downloadFile(
        url: url.trim(),
        onProgress: (name, progress) => setState(() => _progress = progress),
        onDownloadCompleted: (value) {
          File downloadedFile = File(value);
          String newFileName = "${downloadedFile.path}.jpg";
          downloadedFile.copy(newFileName).then((_) {
            debugPrint("New name: $newFileName");
            newFileName = "";
          });
          setState(() => _progress = null);
        });
  }
}

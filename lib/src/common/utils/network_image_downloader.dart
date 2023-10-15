import 'package:flutter_file_downloader/flutter_file_downloader.dart';
import 'package:flutter/material.dart';
import 'snack_bar.dart';
import 'dart:io';

double? downloadImage(String url, BuildContext context) {
  FileDownloader.downloadFile(
    url: url.trim(),
    onProgress: (name, progress) => progress,
    onDownloadCompleted: (value) {
      File downloadedFile = File(value);
      String newFileName = "${downloadedFile.path}.jpg";
      downloadedFile.copy(newFileName).then((_) {
        showSnackBar(
          context: context,
          color: const Color.fromARGB(255, 83, 229, 88),
          text: "Successfully Loaded",
        );
      });
      return null;
    },
  );
  return null;
}

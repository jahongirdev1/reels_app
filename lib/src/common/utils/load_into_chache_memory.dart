import 'package:flutter/material.dart';

Widget buildImageWidget(String imageUrl) {
  int? downloadPercent;

  return Image(
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
            strokeWidth: 4.0,
            valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
          ),
        );
      }
    },
    image: NetworkImage(imageUrl),
  );
}

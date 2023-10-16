import 'package:flutter/material.dart';

int? downloadPercent;


Widget buildImageWidget(String imageUrl) {
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

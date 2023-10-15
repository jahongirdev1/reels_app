import '../common/data/unsplash_repository.dart';
import '../common/utils/custom_exceeption.dart';
import '../common/model/un_splash_model.dart';
import '../common/model/result_model.dart';
import 'package:flutter/material.dart';

class HomeController {
  List<String> imageFeatures = [];
  List<String> imageAnimals = [];
  List<String> imageJellyfish = [];

  List<String> downloadImageFeature = [];
  List<String> downloadImagesAnimals = [];
  List<String> downloadImageJellyfish = [];

  Future<void> fetchData() async {
    try {
      UnSplashRepository fetures = UnSplashRepository();
      UnSplashRepository animal = UnSplashRepository();
      UnSplashRepository fish = UnSplashRepository();
      UnSplashModel first = await fetures.getUnSplashData("features");
      UnSplashModel second = await animal.getUnSplashData("animals");
      UnSplashModel third = await fish.getUnSplashData("fish");
      debugPrint('$fetures');
      debugPrint('$animal');
      debugPrint('$fish');
      for (Result i in first.results!) {
        imageFeatures.add(i.urls!.smallS3!);
        downloadImageFeature.add(i.links!.download!);
      }
      for (Result i in second.results!) {
        imageAnimals.add(i.urls!.smallS3!);
        downloadImagesAnimals.add(i.links!.download!);
      }
      for (Result i in third.results!) {
        imageJellyfish.add(i.urls!.smallS3!);
        downloadImageJellyfish.add(i.links!.download!);
      }
    } on UnknownException catch (error, stackTrace) {
      debugPrint("$error");
      debugPrint("$stackTrace");
    } on ClientException catch (error, stackTrace) {
      debugPrint("$error");
      debugPrint("$stackTrace");
    } on ServerException catch (error, stackTrace) {
      debugPrint("$stackTrace");
      debugPrint("$error");
    } on Object catch (error, stackTrace) {
      debugPrint("$error");
      debugPrint("$stackTrace");
    }
  }
}

import '../common/data/unsplash_repository.dart';
import '../common/utils/custom_exceeption.dart';
import '../common/model/un_splash_model.dart';
import '../common/model/result_model.dart';
import 'package:flutter/material.dart';

class HomeController {
  List<String> imageCar = [];
  List<String> imageAnimals = [];
  List<String> imageJellyfish = [];
  List<String> imageSearch = [
    "https://images.unsplash.com/photo-1604357209793-fca5dca89f97?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1MTUwNTZ8MHwxfHNlYXJjaHwxfHxtYXB8ZW58MHx8fHwxNjk3MTk4MjE0fDA&ixlib=rb-4.0.3&q=80&w=200"
  ];

  List<String> downloadImageCar = [];
  List<String> downloadImagesAnimals = [];
  List<String> downloadImageJellyfish = [];
  List<String> downloadImageSearch = [
    "https://images.unsplash.com/photo-1604357209793-fca5dca89f97?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1MTUwNTZ8MHwxfHNlYXJjaHwxfHxtYXB8ZW58MHx8fHwxNjk3MTk4MjE0fDA&ixlib=rb-4.0.3&q=80&w=200"
  ];

  Future<void> fetchData() async {
    try {
      UnSplashRepository model = UnSplashRepository();
      UnSplashModel animals = await model.getUnSplashData("animals");
      UnSplashModel car = await model.getUnSplashData("car");
      UnSplashModel fish = await model.getUnSplashData("fish");
      debugPrint('$model');
      for (Result i in animals.results!) {
        imageCar.add(i.urls!.smallS3!);
        downloadImageCar.add(i.links!.download!);
      }
      for (Result i in car.results!) {
        imageAnimals.add(i.urls!.smallS3!);
        downloadImagesAnimals.add(i.links!.download!);
      }
      for (Result i in fish.results!) {
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

  Future<void> searchImage(String title) async {
    try {
      UnSplashRepository model = UnSplashRepository();
      UnSplashModel searchModel = await model.getUnSplashData(title);
      debugPrint('$searchModel');
      for (Result i in searchModel.results!) {
        imageSearch.add(i.urls!.smallS3!);
        downloadImageSearch.add(i.links!.download!);
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

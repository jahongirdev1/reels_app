import 'result_model.dart';

class UnSplashModel {
  const UnSplashModel({
    required this.total,
    required this.totalPages,
    required this.results,
  });

  final int? total;
  final int? totalPages;
  final List<Result>? results;

  factory UnSplashModel.fromJson(Map<String, Object?> json) => UnSplashModel(
        total: json['total'] as int?,
        totalPages: json['total_pages'] as int?,
        results: json['results'] != null
            ? (json["results"] as List).map((e) => Result.fromJson(e)).toList()
            : [],
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UnSplashModel &&
          runtimeType == other.runtimeType &&
          total == other.total &&
          totalPages == other.totalPages &&
          results == other.results;

  @override
  int get hashCode => total.hashCode ^ totalPages.hashCode ^ results.hashCode;

  @override
  String toString() => 'UnSplashModel(total: $total,'
      ' totalPages: $totalPages,'
      ' results: $results,'
      ')';

  UnSplashModel copyWith({
    int? total,
    int? totalPages,
    List<Result>? results,
  }) =>
      UnSplashModel(
        total: total ?? this.total,
        totalPages: totalPages ?? this.totalPages,
        results: results ?? this.results,
      );
}

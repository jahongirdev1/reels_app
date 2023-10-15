import 'digital_screen.dart';
import 'nature_model.dart';
import 'technology_model.dart';

class TopicSubmissions {
  const TopicSubmissions({
    required this.nature,
    required this.technology,
    required this.digitalScreens,
  });

  final Nature? nature;
  final Technology? technology;
  final DigitalScreens? digitalScreens;

  factory TopicSubmissions.fromJson(Map<String, Object?> json) =>
      TopicSubmissions(
        nature: json['nature'] != null
            ? Nature.fromJson(
                json["nature"] as Map<String, Object?>,
              )
            : null,
        technology: json['technology'] != null
            ? Technology.fromJson(
                json["technology"] as Map<String, Object?>,
              )
            : null,
        digitalScreens: json['digital_screens'] != null
            ? DigitalScreens.fromJson(
                json["digital_screens"] as Map<String, Object?>,
              )
            : null,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TopicSubmissions &&
          runtimeType == other.runtimeType &&
          nature == other.nature &&
          technology == other.technology &&
          digitalScreens == other.digitalScreens;

  @override
  int get hashCode =>
      nature.hashCode ^ technology.hashCode ^ digitalScreens.hashCode;

  @override
  String toString() => 'TopicSubmissions(nature: $nature,'
      ' technology: $technology,'
      ' digitalScreens: $digitalScreens,'
      ')';

  TopicSubmissions copyWith({
    Nature? nature,
    Technology? technology,
    DigitalScreens? digitalScreens,
  }) =>
      TopicSubmissions(
        nature: nature ?? this.nature,
        technology: technology ?? this.technology,
        digitalScreens: digitalScreens ?? this.digitalScreens,
      );
}

class Urls {
  const Urls({
    required this.raw,
    required this.full,
    required this.regular,
    required this.small,
    required this.thumb,
    required this.smallS3,
  });

  final String? raw;
  final String? full;
  final String? regular;
  final String? small;
  final String? thumb;
  final String? smallS3;

  factory Urls.fromJson(Map<String, Object?> json) => Urls(
        raw: json['raw'] as String?,
        full: json['full'] as String?,
        regular: json['regular'] as String?,
        small: json['small'] as String?,
        thumb: json['thumb'] as String?,
        smallS3: json['small_s3'] as String?,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Urls &&
          runtimeType == other.runtimeType &&
          raw == other.raw &&
          full == other.full &&
          regular == other.regular &&
          small == other.small &&
          thumb == other.thumb &&
          smallS3 == other.smallS3;

  @override
  int get hashCode =>
      raw.hashCode ^
      full.hashCode ^
      regular.hashCode ^
      small.hashCode ^
      thumb.hashCode ^
      smallS3.hashCode;

  @override
  String toString() => 'Urls(raw: $raw,'
      ' full: $full,'
      ' regular: $regular,'
      ' small: $small,'
      ' thumb: $thumb,'
      ' smallS3: $smallS3,'
      ')';

  Urls copyWith({
    String? raw,
    String? full,
    String? regular,
    String? small,
    String? thumb,
    String? smallS3,
  }) =>
      Urls(
        raw: raw ?? this.raw,
        full: full ?? this.full,
        regular: regular ?? this.regular,
        small: small ?? this.small,
        thumb: thumb ?? this.thumb,
        smallS3: smallS3 ?? this.smallS3,
      );
}

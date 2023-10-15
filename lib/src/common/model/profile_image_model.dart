class ProfileImage {
  const ProfileImage({
    required this.small,
    required this.medium,
    required this.large,
  });

  final String? small;
  final String? medium;
  final String? large;

  factory ProfileImage.fromJson(Map<String, Object?> json) => ProfileImage(
        small: json["small"] as String?,
        medium: json["medium"] as String?,
        large: json["large"] as String?,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProfileImage &&
          runtimeType == other.runtimeType &&
          small == other.small &&
          medium == other.medium &&
          large == other.large;

  @override
  int get hashCode => small.hashCode ^ medium.hashCode ^ large.hashCode;

  @override
  String toString() => 'ProfileImage(small: $small,'
      ' medium: $medium,'
      ' large: $large,'
      ')';

  ProfileImage copyWith({
    String? small,
    String? medium,
    String? large,
  }) =>
      ProfileImage(
        small: small ?? this.small,
        medium: medium ?? this.medium,
        large: large ?? this.large,
      );
}

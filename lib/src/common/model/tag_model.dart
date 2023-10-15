class Tag {
  const Tag({
    required this.type,
    required this.title,
  });

  final String? type;
  final String? title;

  factory Tag.fromJson(Map<String, Object?> json) => Tag(
        type: json['type'] as String?,
        title: json['title'] as String?,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Tag &&
          runtimeType == other.runtimeType &&
          type == other.type &&
          title == other.title;

  @override
  int get hashCode => type.hashCode ^ title.hashCode;

  @override
  String toString() => 'Tag(type: $type,'
      ' title: $title,'
      ')';

  Tag copyWith({
    String? type,
    String? title,
  }) =>
      Tag(
        type: type ?? this.type,
        title: title ?? this.title,
      );
}

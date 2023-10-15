class Technology {
  const Technology({
    required this.status,
    required this.approvedOn,
  });

  final String? status;
  final String? approvedOn;

  factory Technology.fromJson(Map<String, Object?> json) => Technology(
        status: json['status'] as String?,
        approvedOn: json['approved_on'] as String?,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Technology &&
          runtimeType == other.runtimeType &&
          status == other.status &&
          approvedOn == other.approvedOn;

  @override
  int get hashCode => status.hashCode ^ approvedOn.hashCode;

  @override
  String toString() => 'Technology(status: $status,'
      ' approvedOn: $approvedOn,'
      ')';

  Technology copyWith({
    String? status,
    String? approvedOn,
  }) =>
      Technology(
        status: status ?? this.status,
        approvedOn: approvedOn ?? this.approvedOn,
      );
}

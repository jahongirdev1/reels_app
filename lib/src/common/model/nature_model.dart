class Nature {
  const Nature({
    required this.status,
    required this.approvedOn,
  });

  final String? status;
  final String? approvedOn;

  factory Nature.fromJson(Map<String, Object?> json) => Nature(
        status: json['status'] as String?,
        approvedOn: json['approved_on'] as String?,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Nature &&
          runtimeType == other.runtimeType &&
          status == other.status &&
          approvedOn == other.approvedOn;

  @override
  int get hashCode => status.hashCode ^ approvedOn.hashCode;

  @override
  String toString() => 'Nature(status: $status,'
      ' approvedOn: $approvedOn,'
      ')';

  Nature copyWith({
    String? status,
    String? approvedOn,
  }) =>
      Nature(
        status: status ?? this.status,
        approvedOn: approvedOn ?? this.approvedOn,
      );
}

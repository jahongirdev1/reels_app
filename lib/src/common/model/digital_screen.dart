class DigitalScreens {
  const DigitalScreens({
    required this.status,
    required this.approvedOn,
  });

  final String? status;
  final String? approvedOn;

  factory DigitalScreens.fromJson(Map<String, Object?> json) => DigitalScreens(
        status: json['status'] as String?,
        approvedOn: json['approved_on'] as String?,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DigitalScreens &&
          runtimeType == other.runtimeType &&
          status == other.status &&
          approvedOn == other.approvedOn;

  @override
  int get hashCode => status.hashCode ^ approvedOn.hashCode;

  @override
  String toString() => 'DigitalScreens(status: $status,'
      ' approvedOn: $approvedOn,'
      ')';

  DigitalScreens copyWith({
    String? status,
    String? approvedOn,
  }) =>
      DigitalScreens(
        status: status ?? this.status,
        approvedOn: approvedOn ?? this.approvedOn,
      );
}

class Links {
  const Links({
    required this.self,
    required this.html,
    required this.download,
    required this.downloadLocation,
  });

  final String? self;
  final String? html;
  final String? download;
  final String? downloadLocation;

  factory Links.fromJson(Map<String, Object?> json) => Links(
        self: json["self"] as String?,
        html: json["html"] as String?,
        download: json["download"] as String?,
        downloadLocation: json["download_location"] as String?,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Links &&
          runtimeType == other.runtimeType &&
          self == other.self &&
          html == other.html &&
          download == other.download &&
          downloadLocation == other.downloadLocation;

  @override
  int get hashCode =>
      self.hashCode ^
      html.hashCode ^
      download.hashCode ^
      downloadLocation.hashCode;

  @override
  String toString() => 'Links(self: $self,'
      ' html: $html,'
      ' download: $download,'
      ' downloadLocation: $downloadLocation,'
      ')';

  Links copyWith({
    String? self,
    String? html,
    String? download,
    String? downloadLocation,
  }) =>
      Links(
        self: self ?? this.self,
        html: html ?? this.html,
        download: download ?? this.download,
        downloadLocation: downloadLocation ?? this.downloadLocation,
      );
}

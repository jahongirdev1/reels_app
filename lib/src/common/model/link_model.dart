class Link {
  const Link({
    required this.self,
    required this.html,
    required this.photos,
    required this.likes,
    required this.portfolio,
    required this.following,
    required this.followers,
  });

  final String? self;
  final String? html;
  final String? photos;
  final String? likes;
  final String? portfolio;
  final String? following;
  final String? followers;

  factory Link.fromJson(Map<String, Object?> json) => Link(
        self: json["self"] as String?,
        html: json["html"] as String?,
        photos: json["photos"] as String?,
        likes: json["likes"] as String?,
        portfolio: json["portfolio"] as String?,
        following: json["following"] as String?,
        followers: json["followers"] as String?,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Link &&
          runtimeType == other.runtimeType &&
          self == other.self &&
          html == other.html &&
          photos == other.photos &&
          likes == other.likes &&
          portfolio == other.portfolio &&
          following == other.following &&
          followers == other.followers;

  @override
  int get hashCode =>
      self.hashCode ^
      html.hashCode ^
      photos.hashCode ^
      likes.hashCode ^
      portfolio.hashCode ^
      following.hashCode ^
      followers.hashCode;

  @override
  String toString() => 'Link(self: $self,'
      ' html: $html,'
      ' photos: $photos,'
      ' likes: $likes,'
      ' portfolio: $portfolio,'
      ' following: $following,'
      ' followers: $followers,'
      ')';

  Link copyWith({
    String? self,
    String? html,
    String? photos,
    String? likes,
    String? portfolio,
    String? following,
    String? followers,
  }) =>
      Link(
        self: self ?? this.self,
        html: html ?? this.html,
        photos: photos ?? this.photos,
        likes: likes ?? this.likes,
        portfolio: portfolio ?? this.portfolio,
        following: following ?? this.following,
        followers: followers ?? this.followers,
      );
}

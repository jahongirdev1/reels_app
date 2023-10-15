class Social {
  const Social({
    required this.instagramUsername,
    required this.portfolioUrl,
    required this.twitterUsername,
    required this.paypalEmail,
  });

  final String? instagramUsername;
  final String? portfolioUrl;
  final String? twitterUsername;
  final String? paypalEmail;

  factory Social.fromJson(Map<String, Object?> json) => Social(
        instagramUsername: json['instagram_username'] as String?,
        portfolioUrl: json['portfolio_url'] as String?,
        twitterUsername: json['twitter_username'] as String?,
        paypalEmail: json['paypal_email'] as String?,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Social &&
          runtimeType == other.runtimeType &&
          instagramUsername == other.instagramUsername &&
          portfolioUrl == other.portfolioUrl &&
          twitterUsername == other.twitterUsername &&
          paypalEmail == other.paypalEmail;

  @override
  int get hashCode =>
      instagramUsername.hashCode ^
      portfolioUrl.hashCode ^
      twitterUsername.hashCode ^
      paypalEmail.hashCode;

  @override
  String toString() => 'Social(instagramUsername: $instagramUsername,'
      ' portfolioUrl: $portfolioUrl,'
      ' twitterUsername: $twitterUsername,'
      ' paypalEmail: $paypalEmail,'
      ')';

  Social copyWith({
    String? instagramUsername,
    String? portfolioUrl,
    String? twitterUsername,
    String? paypalEmail,
  }) =>
      Social(
        instagramUsername: instagramUsername ?? this.instagramUsername,
        portfolioUrl: portfolioUrl ?? this.portfolioUrl,
        twitterUsername: twitterUsername ?? this.twitterUsername,
        paypalEmail: paypalEmail ?? this.paypalEmail,
      );
}

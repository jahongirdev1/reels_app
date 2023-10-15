import 'link_model.dart';
import 'profile_image_model.dart';
import 'social_model.dart';

class User {
  const User({
    required this.id,
    required this.updatedAt,
    required this.username,
    required this.name,
    required this.firstName,
    required this.lastName,
    required this.twitterUsername,
    required this.portfolioUrl,
    required this.bio,
    required this.location,
    required this.links,
    required this.profileImage,
    required this.instagramUsername,
    required this.totalCollections,
    required this.totalLikes,
    required this.totalPhotos,
    required this.acceptedTos,
    required this.forHire,
    required this.social,
  });

  final String? id;
  final String? updatedAt;
  final String? username;
  final String? name;
  final String? firstName;
  final String? lastName;
  final String? twitterUsername;
  final String? portfolioUrl;
  final String? bio;
  final String? location;
  final Link? links;
  final ProfileImage? profileImage;
  final String? instagramUsername;
  final int? totalCollections;
  final int? totalLikes;
  final int? totalPhotos;
  final bool? acceptedTos;
  final bool? forHire;
  final Social? social;

  factory User.fromJson(Map<String, Object?> json) => User(
        id: json['id'] as String?,
        updatedAt: json['updated_at'] as String?,
        username: json['username'] as String?,
        name: json['name'] as String?,
        firstName: json['first_name'] as String?,
        lastName: json['last_name'] as String?,
        twitterUsername: json['twitter_username'] as String?,
        portfolioUrl: json['portfolio_url'] as String?,
        bio: json['bio'] as String?,
        location: json['location'] as String?,
        links: json['links'] != null
            ? Link.fromJson(
                json["links"] as Map<String, Object?>,
              )
            : null,
        profileImage: json['profile_image'] != null
            ? ProfileImage.fromJson(
                json["profile_image"] as Map<String, Object?>,
              )
            : null,
        instagramUsername: json['instagram_username'] as String?,
        totalCollections: json['total_collections'] as int?,
        totalLikes: json['total_likes'] as int?,
        totalPhotos: json['total_photos'] as int?,
        acceptedTos: json['accepted_tos'] as bool?,
        forHire: json['for_hire'] as bool?,
        social: json['social'] != null
            ? Social.fromJson(
                json["social"] as Map<String, Object?>,
              )
            : null,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is User &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          updatedAt == other.updatedAt &&
          username == other.username &&
          name == other.name &&
          firstName == other.firstName &&
          lastName == other.lastName &&
          twitterUsername == other.twitterUsername &&
          portfolioUrl == other.portfolioUrl &&
          bio == other.bio &&
          location == other.location &&
          links == other.links &&
          profileImage == other.profileImage &&
          instagramUsername == other.instagramUsername &&
          totalCollections == other.totalCollections &&
          totalLikes == other.totalLikes &&
          totalPhotos == other.totalPhotos &&
          acceptedTos == other.acceptedTos &&
          forHire == other.forHire &&
          social == other.social;

  @override
  int get hashCode =>
      id.hashCode ^
      updatedAt.hashCode ^
      username.hashCode ^
      name.hashCode ^
      firstName.hashCode ^
      lastName.hashCode ^
      twitterUsername.hashCode ^
      portfolioUrl.hashCode ^
      bio.hashCode ^
      location.hashCode ^
      links.hashCode ^
      profileImage.hashCode ^
      instagramUsername.hashCode ^
      totalCollections.hashCode ^
      totalLikes.hashCode ^
      totalPhotos.hashCode ^
      acceptedTos.hashCode ^
      forHire.hashCode ^
      social.hashCode;

  @override
  String toString() => 'User(id: $id,'
      ' updatedAt: $updatedAt,'
      ' username: $username,'
      ' name: $name,'
      ' firstName: $firstName,'
      ' lastName: $lastName,'
      ' twitterUsername: $twitterUsername,'
      ' portfolioUrl: $portfolioUrl,'
      ' bio: $bio,'
      ' location: $location,'
      ' links: $links,'
      ' profileImage: $profileImage,'
      ' instagramUsername: $instagramUsername,'
      ' totalCollections: $totalCollections,'
      ' totalLikes: $totalLikes,'
      ' totalPhotos: $totalPhotos,'
      ' acceptedTos: $acceptedTos,'
      ' forHire: $forHire,'
      ' social: $social,'
      ')';

  User copyWith({
    String? id,
    String? updatedAt,
    String? username,
    String? name,
    String? firstName,
    String? lastName,
    String? twitterUsername,
    String? portfolioUrl,
    String? bio,
    String? location,
    Link? links,
    ProfileImage? profileImage,
    String? instagramUsername,
    int? totalCollections,
    int? totalLikes,
    int? totalPhotos,
    bool? acceptedTos,
    bool? forHire,
    Social? social,
  }) =>
      User(
        id: id ?? this.id,
        updatedAt: updatedAt ?? this.updatedAt,
        username: username ?? this.username,
        name: name ?? this.name,
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        twitterUsername: twitterUsername ?? this.twitterUsername,
        portfolioUrl: portfolioUrl ?? this.portfolioUrl,
        bio: bio ?? this.bio,
        location: location ?? this.location,
        links: links ?? this.links,
        profileImage: profileImage ?? this.profileImage,
        instagramUsername: instagramUsername ?? this.instagramUsername,
        totalCollections: totalCollections ?? this.totalCollections,
        totalLikes: totalLikes ?? this.totalLikes,
        totalPhotos: totalPhotos ?? this.totalPhotos,
        acceptedTos: acceptedTos ?? this.acceptedTos,
        forHire: forHire ?? this.forHire,
        social: social ?? this.social,
      );
}

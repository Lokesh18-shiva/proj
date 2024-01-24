class FeedApI {
  String? name;
  String? description;
  String? iconUrl;
  int? sortSequence;
  bool? isClickable;
  String? feedId;
  bool? isViewed;
  int? storyIndex;

  FeedApI(
      {required this.name,
      required this.description,
      required this.iconUrl,
      required this.sortSequence,
      required this.isClickable,
      required this.feedId,
      required this.isViewed,
      required this.storyIndex});

  factory FeedApI.fromJson(Map<String, dynamic> json) {
    return FeedApI(
        name: json['name'],
        description: json['description'],
        iconUrl: json['icon_url'],
        sortSequence: json['sort_sequence'],
        isClickable: json['is_clickable'],
        feedId: json['feed_id'],
        isViewed: json['is_viewed'],
        storyIndex: json['story_index']);
  }
}

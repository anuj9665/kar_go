// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Research {
  String title;
  String subtitle;
  String url;
  Research({
    required this.title,
    required this.subtitle,
    required this.url,
  });

  Research copyWith({
    String? title,
    String? subtitle,
    String? url,
  }) {
    return Research(
      title: title ?? this.title,
      subtitle: subtitle ?? this.subtitle,
      url: url ?? this.url,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'subtitle': subtitle,
      'url': url,
    };
  }

  factory Research.fromMap(Map<String, dynamic> map) {
    return Research(
      title: map['title'] as String,
      subtitle: map['subtitle'] as String,
      url: map['url'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Research.fromJson(String source) =>
      Research.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'Research(title: $title, subtitle: $subtitle, url: $url)';

  @override
  bool operator ==(covariant Research other) {
    if (identical(this, other)) return true;

    return other.title == title &&
        other.subtitle == subtitle &&
        other.url == url;
  }

  @override
  int get hashCode => title.hashCode ^ subtitle.hashCode ^ url.hashCode;
}

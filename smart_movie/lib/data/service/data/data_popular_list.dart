import 'package:json_annotation/json_annotation.dart';

part 'data_popular_list.g.dart';

@JsonSerializable()
class PopularList {
  int? page;
  List<Result>? results;
  int? total_pages;
  int? total_results;

  PopularList({
    this.page,
    this.results,
    this.total_pages,
    this.total_results,
  });

  factory PopularList.fromJson(Map<String, dynamic> json) =>
      _$PopularListFromJson(json);

  Map<String, dynamic> toJson() => _$PopularListToJson(this);
}

@JsonSerializable()
class Result {
  bool? adult;
  String? backdrop_path;
  List<int>? genre_ids;
  int? id;
  String? original_language;
  String? original_title;
  String? overview;
  double? popularity;
  String? poster_path;
  String? release_date;
  String? title;
  bool? video;
  double? vote_average;
  int? vote_count;

  Result({
    this.adult,
    this.backdrop_path,
    this.genre_ids,
    this.id,
    this.original_language,
    this.original_title,
    this.overview,
    this.popularity,
    this.poster_path,
    this.release_date,
    this.title,
    this.video,
    this.vote_average,
    this.vote_count,
  });

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);

  Map<String, dynamic> toJson() => _$ResultToJson(this);
}

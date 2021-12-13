

part of 'data_top_rated_list.dart';



TopRatedList _$TopRatedListFromJson(Map<String, dynamic> json) => TopRatedList(
  page: json['page'] as int?,
  results: (json['results'] as List<dynamic>?)
      ?.map((e) => Result.fromJson(e as Map<String, dynamic>))
      .toList(),
  total_pages: json['total_pages'] as int?,
  total_results: json['total_results'] as int?,
);

Map<String, dynamic> _$TopRatedListToJson(TopRatedList instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.results,
      'total_pages': instance.total_pages,
      'total_results': instance.total_results,
    };

Result _$ResultFromJson(Map<String, dynamic> json) => Result(
  adult: json['adult'] as bool?,
  backdrop_path: json['backdrop_path'] as String?,
  genre_ids:
  (json['genre_ids'] as List<dynamic>?)?.map((e) => e as int).toList(),
  id: json['id'] as int?,
  original_language: json['original_language'] as String?,
  original_title: json['original_title'] as String?,
  overview: json['overview'] as String?,
  popularity: (json['popularity'] as num?)?.toDouble(),
  poster_path: json['poster_path'] as String?,
  release_date: json['release_date'] as String?,
  title: json['title'] as String?,
  video: json['video'] as bool?,
  vote_average: (json['vote_average'] as num?)?.toDouble(),
  vote_count: json['vote_count'] as int?,
);

Map<String, dynamic> _$ResultToJson(Result instance) => <String, dynamic>{
  'adult': instance.adult,
  'backdrop_path': instance.backdrop_path,
  'genre_ids': instance.genre_ids,
  'id': instance.id,
  'original_language': instance.original_language,
  'original_title': instance.original_title,
  'overview': instance.overview,
  'popularity': instance.popularity,
  'poster_path': instance.poster_path,
  'release_date': instance.release_date,
  'title': instance.title,
  'video': instance.video,
  'vote_average': instance.vote_average,
  'vote_count': instance.vote_count,
};

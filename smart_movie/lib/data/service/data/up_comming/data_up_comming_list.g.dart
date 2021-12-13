part of 'data_up_comming_list.dart';

UpCommingList _$UpCommingListFromJson(Map<String, dynamic> json) =>
    UpCommingList(
      dates: json['dates'] == null
          ? null
          : Dates.fromJson(json['dates'] as Map<String, dynamic>),
      page: json['page'] as int?,
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => Result.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalPages: json['totalPages'] as int?,
      totalResults: json['totalResults'] as int?,
    );

Map<String, dynamic> _$UpCommingListToJson(UpCommingList instance) =>
    <String, dynamic>{
      'dates': instance.dates,
      'page': instance.page,
      'results': instance.results,
      'totalPages': instance.totalPages,
      'totalResults': instance.totalResults,
    };

Dates _$DatesFromJson(Map<String, dynamic> json) => Dates(
      maximum: json['maximum'] as String?,
      minimum: json['minimum'] as String?,
    );

Map<String, dynamic> _$DatesToJson(Dates instance) => <String, dynamic>{
      'maximum': instance.maximum,
      'minimum': instance.minimum,
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

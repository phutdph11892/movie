import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:smart_movie/data/service/data/top_rated/data_top_rated_list.dart';
import 'package:smart_movie/data/service/data/up_comming/data_up_comming_list.dart';
import 'package:smart_movie/ui/tab/toprated/top_rated_screen.dart';

import 'data/cast/data_cast.dart';
import 'data/movie_detail/data_movie_detail.dart';
import 'data/now_playing/data_nowplaying_list.dart';
import 'data/popular/data_popular_list.dart';

part 'services.g.dart';

const String clientId = "d5b97a6fad46348136d87b78895a0c06";
const String lang = "en-US";

@RestApi(
  baseUrl: "https://api.themoviedb.org/3/movie/",
  parser: Parser.FlutterCompute,
)
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET("/popular")
  Future<PopularList> getPopular(
      {@Query("language") String language = lang,
      @Query("page") int page = 1,
      @Query("api_key") String clientId = clientId});

  // api.themoviedb.org/3/movie/now_playing?api_key=d5b97a6fad46348136d87b78895a0c06&page={pageNumber}
  @GET("/now_playing")
  Future<NowPlaying> getNowPlaying(
      {@Query("language") String language = lang,
      @Query("page") int page = 1,
      @Query("api_key") String clientId = clientId});

  @GET("/top_rated")
  Future<TopRatedList> getTopRated(
      {@Query("language") String language = lang,
      @Query("page") int page = 1,
      @Query("api_key") String clientId = clientId});

  // api.themoviedb.org/3/movie/now_playing?api_key=d5b97a6fad46348136d87b78895a0c06&page={pageNumber}
  @GET("/upcoming")
  Future<UpCommingList> getUpComming(
      {@Query("language") String language = lang,
      @Query("page") int page = 1,
      @Query("api_key") String clientId = clientId});

  // api.themoviedb.org/3/movie/{movieId}?api_key=d5b97a6fad46348136d87b78895a0c06
  @GET("{movieId}")
  Future<MovieDetail> getMovie(
      {@Path("movieId") String? movieId,
      @Query("api_key") String clientId = clientId});

  // api.themoviedb.org/3/movie/{movieId}/credits?api_key=d5b97a6fad46348136d87b78895a0c06
  @GET("{movieId}/credits")
  Future<CreditResult> getCredits(
      {@Path("movieId") String? movieId,
      @Query("api_key") String clientId = clientId});


}

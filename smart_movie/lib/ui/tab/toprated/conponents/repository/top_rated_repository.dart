
import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:smart_movie/data/service/data/cast/data_cast.dart';
import 'package:smart_movie/data/service/data/movie_detail/data_movie_detail.dart';
import 'package:smart_movie/data/service/data/top_rated/data_top_rated_list.dart';


import 'package:smart_movie/data/service/services.dart';

final _dio = Dio(); // Provide a dio instance
final _client = RestClient(_dio);

Future<TopRatedList> getTopRated(int page) async {
  return compute(getTopRatedTemp, page);
}

Future<TopRatedList> getTopRatedTemp(int page) async {
  var data = await _client.getTopRated(page: page);
  Future.delayed(const Duration(seconds: 2));
  return data;
}

Future<MovieDetail> getMovie(int id) async {
  return compute(getMovieTemp, id);
}

Future<MovieDetail> getMovieTemp(int idMovie) async {
  var data = await _client.getMovie(movieId: "$idMovie");
  Future.delayed(const Duration(seconds: 2));
  return data;
}

Future<CreditResult> getCredit(int movieID) async {
  return compute(getCreditTemp, movieID);
}

Future<CreditResult> getCreditTemp(int idMovie) async {
  var data = await _client.getCredits(movieId: "$idMovie");
  Future.delayed(const Duration(seconds: 2));
  return data;
}

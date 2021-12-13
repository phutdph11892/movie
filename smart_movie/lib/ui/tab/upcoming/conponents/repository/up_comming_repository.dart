
import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:smart_movie/data/service/data/cast/data_cast.dart';
import 'package:smart_movie/data/service/data/movie_detail/data_movie_detail.dart';
import 'package:smart_movie/data/service/data/up_comming/data_up_comming_list.dart';



import 'package:smart_movie/data/service/services.dart';

final _dio = Dio(); // Provide a dio instance
final _client = RestClient(_dio);

Future<UpCommingList> getUpComming(int page) async {
  return compute(getUpCommingTemp, page);
}

Future<UpCommingList> getUpCommingTemp(int page) async {
  var data = await _client.getUpComming(page: page);
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

import 'package:dio/dio.dart';

import 'package:interview_qn/src/model/movies_model.dart';

class ApiRepository {
  final Dio _dio = Dio();

  Future<List<MoviesModel>> fetchMoview() async {
    try {
      const String url =
          "https://www.whats-on-netflix.com/wp-content/plugins/whats-on-netflix/json/alldocs.json?_=1700718031139";
      final response = await _dio.get(url);

      if (response.statusCode == 200) {
        List<dynamic> decodedJson = response.data;

        List<MoviesModel> moviesData = decodedJson
            .map(
              (movie) => MoviesModel.fromJson(movie),
            )
            .toList();

        return moviesData;
      } else {
        throw Exception("Failed to fetch API");
      }
    } catch (e, stack) {
      throw Exception("Error: $e, $stack");
    }
  }
}

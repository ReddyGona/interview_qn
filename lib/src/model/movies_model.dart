class MoviesModel {
  final String title;
  final String type;
  final String titlereleased;
  final String imageLandscape;
  final String imagePortrait;
  final String rating;
  final String quality;
  final String actors;
  final String director;
  final String category;
  final String imdb;
  final String runtime;
  final String netflixid;
  final String dateReleased;
  final String description;
  final String language;

  const MoviesModel({
    this.title = '',
    this.type = '',
    this.titlereleased = '',
    this.imageLandscape = '',
    this.imagePortrait = '',
    this.rating = '',
    this.quality = '',
    this.actors = '',
    this.director = '',
    this.category = '',
    this.imdb = '',
    this.runtime = '',
    this.netflixid = '',
    this.dateReleased = '',
    this.description = '',
    this.language = '',
  });

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'title': title,
      'type': type,
      'titlereleased': titlereleased,
      'imageLandscape': imageLandscape,
      'imagePortrait': imagePortrait,
      'rating': rating,
      'quality': quality,
      'actors': actors,
      'director': director,
      'category': category,
      'imdb': imdb,
      'runtime': runtime,
      'netflixid': netflixid,
      'dateReleased': dateReleased,
      'description': description,
      'language': language,
    };
  }

  factory MoviesModel.fromJson(Map<String, dynamic> map) {
    return MoviesModel(
      title: map['title'] ?? '',
      type: map['type'] ?? '',
      titlereleased: map['titlereleased'] ?? '',
      imageLandscape: map['imageLandscape'] ?? '',
      imagePortrait: map['imagePortrait'] ?? '',
      rating: map['rating'] ?? '',
      quality: map['quality'] ?? '',
      actors: map['actors'] ?? '',
      director: map['director'] ?? '',
      category: map['category'] ?? '',
      imdb: map['imdb'] ?? '',
      runtime: map['runtime'] ?? '',
      netflixid: map['netflixid'] ?? '',
      dateReleased: map['dateReleased'] ?? '',
      description: map['description'] ?? '',
      language: map['language'] ?? '',
    );
  }
}

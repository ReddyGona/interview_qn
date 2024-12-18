part of 'movies_bloc.dart';

sealed class MoviesState extends Equatable {
  const MoviesState();

  @override
  List<Object> get props => [];
}

final class MoviesInitial extends MoviesState {}

final class MoviesDataLoading extends MoviesState {}

final class MoviesDataFetched extends MoviesState {
  final List<MoviesModel> moviesList;

  const MoviesDataFetched({required this.moviesList});
}

final class MoviesAPIError extends MoviesState {
  final String errorMessage;

  const MoviesAPIError({required this.errorMessage});
}

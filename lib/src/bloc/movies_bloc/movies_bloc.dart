import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import 'package:interview_qn/src/model/movies_model.dart';
import 'package:interview_qn/src/repository/api_repository.dart';

part 'movies_event.dart';
part 'movies_state.dart';

class MoviesBloc extends Bloc<MoviesEvent, MoviesState> {
  MoviesBloc() : super(MoviesInitial()) {
    on<MoviesEvent>((MoviesEvent event, Emitter<MoviesState> emit) {
      emit(MoviesDataLoading());
    });

    on<FetchAllMovies>(
        (FetchAllMovies event, Emitter<MoviesState> emmit) async {
      try {
        ApiRepository repository = ApiRepository();

        List<MoviesModel> movies = await repository.fetchMoview();

        emmit(MoviesDataFetched(moviesList: movies));
      } catch (e) {
        emmit(MoviesAPIError(errorMessage: e.toString()));
      }
    });
  }
}

import 'package:flutter/material.dart';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:interview_qn/src/bloc/movies_bloc/movies_bloc.dart';
import 'package:interview_qn/src/model/movies_model.dart';
import 'package:interview_qn/src/screens/movie_detail_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    context.read<MoviesBloc>().add(FetchAllMovies());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocConsumer<MoviesBloc, MoviesState>(
          listener: (context, state) {},
          builder: (context, state) {
            if (state is MoviesDataLoading) {
              return const Center(child: CircularProgressIndicator());
            }
            if (state is MoviesDataFetched) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: GridView.builder(
                  shrinkWrap: true,
                  itemCount: state.moviesList.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 6 / 4,
                  ),
                  itemBuilder: (context, index) {
                    MoviesModel movie = state.moviesList[index];
                    return GestureDetector(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              MovieDetailScreen(moviesModel: movie),
                        ),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: CachedNetworkImage(
                          imageUrl:
                              "https://wallpapers.com/images/featured/spiderman-background-oycfyb1ksermw921.jpg",
                          placeholder: (context, url) =>
                              const CircularProgressIndicator(),
                          errorWidget: (context, url, error) =>
                              const Icon(Icons.error),
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                ),
              );
            }

            return Container();
          },
        ),
      ),
    );
  }
}

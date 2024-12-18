import 'package:flutter/material.dart';

import 'package:interview_qn/src/model/movies_model.dart';
import 'package:interview_qn/widgets/offer_card_widget.dart';

class MovieDetailScreen extends StatelessWidget {
  final MoviesModel moviesModel;
  const MovieDetailScreen({super.key, required this.moviesModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(moviesModel.title),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Image.network(
              "https://wallpapers.com/images/featured/spiderman-background-oycfyb1ksermw921.jpg",
            ),
            const SizedBox(height: 10),
            Text(
              moviesModel.description,
              style: const TextStyle(fontSize: 18),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 15),
            Container(
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                border: Border.all(),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Rating :  ${moviesModel.rating}",
                    style: const TextStyle(fontSize: 18),
                  ),
                  Text(
                    "RunTime :  ${moviesModel.runtime}",
                    style: const TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            const OfferCard(),
          ],
        ),
      ),
    );
  }
}

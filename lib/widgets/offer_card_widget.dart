import 'package:flutter/material.dart';

class OfferCard extends StatelessWidget {
  const OfferCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 180,
      height: 340,
      child: Card(
        color: Colors.white,
        elevation: 4,
        shadowColor: Colors.grey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Center(
                    child: Image.network(
                      "https://veeba.in/cdn/shop/files/chef_sspecialtomatoketchup_900g_-01_b7669750-2c65-42aa-a3ca-283f1b794dcb_1024x1024.jpg?v=1728560268",
                      width: 100,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(4.0),
                    decoration: BoxDecoration(
                      color: Colors.teal.shade900,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                      ),
                    ),
                    child: const Text(
                      "51%\nOFF",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: Container(
                      padding: const EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.green),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const CircleAvatar(
                        radius: 5,
                        backgroundColor: Colors.green,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 10),
              const Text(
                "Delmanto Tomato Ketchup Pouch",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const Text(
                '500g',
                style: TextStyle(color: Colors.grey),
              ),
              const Row(
                children: [
                  Text(
                    '₹47',
                    style: TextStyle(fontSize: 26),
                  ),
                  SizedBox(width: 5),
                  Text(
                    '₹100',
                    style: TextStyle(
                      decoration: TextDecoration.lineThrough,
                      fontSize: 18,
                    ),
                  )
                ],
              ),
              const SizedBox(height: 5),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 45),
                  backgroundColor: Colors.amber,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text(
                  'Add',
                  style: TextStyle(fontSize: 20),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

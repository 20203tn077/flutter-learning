import 'package:flutter/material.dart';
import 'package:flutter_learning/kernel/theme/colors_app.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ContainerShop extends StatelessWidget {
  final String title;
  final String description;
  final double initialRating;
  final String imageUri;
  final double price;

  const ContainerShop({super.key, required this.title, required this.description, required this.initialRating, required this.imageUri, required this.price});

  @override
  Widget build(BuildContext context) {
    double widthImage = MediaQuery.of(context).size.width;
    return Card(elevation: 5, child: Column(children: [
      Image.asset(imageUri, width: widthImage,
          height: 80,
          fit: BoxFit.contain,),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(children: [
          SizedBox(width: 64, child: Text(title, style: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold))),
          const Spacer(),
          Column(
            children: [
              Text('\$$price', style: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold)),
              RatingBar.builder(
                initialRating: initialRating,
                itemSize: 10,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemPadding: const EdgeInsets.symmetric(horizontal: 3.0),
                itemBuilder: (context, _) => const Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating) {
                  print(rating);
                },
              ),
            ],
          )
        ]),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Align(alignment:Alignment.topLeft, child: Text(description, style: const TextStyle(color: Colors.black54, fontSize: 9),)),
      ),
      ElevatedButton(onPressed: () {
        Navigator.pushNamed(context, '/shop/detail-shop', arguments: {
          'title': title,
          'description': description,
          'initialRating': initialRating,
          'imageUri': imageUri,
          'price': price
        });
      }, style: OutlinedButton.styleFrom(
        foregroundColor: ColorsApp.success,
        backgroundColor: Colors.white,
        side: const BorderSide(color: ColorsApp.success),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16)
        )
      ), child: const Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.arrow_forward_ios_sharp),
          Text('Ver más'),
        ],
      ),)
    ]));
  }
}
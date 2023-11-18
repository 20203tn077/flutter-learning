import 'package:flutter/material.dart';
import 'package:flutter_learning/kernel/theme/colors_app.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class DetailShop extends StatelessWidget {
  const DetailShop({super.key});

  @override
  Widget build(BuildContext context) {
    final dynamic rawArguments = ModalRoute.of(context)!.settings.arguments;
    final Map<String, dynamic> arguments = (rawArguments as Map<String, dynamic>) ?? {};
    final String title = arguments['title'] ?? '';
    final String description = arguments['description'] ?? '';
    final double initialRating = arguments['initialRating'] ?? 0;
    final String imageUri = arguments['imageUri'] ?? 'assets/images/logo-utez.png';
    final double price = arguments['price'] ?? 0;
    double widthImage = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(title: Text(title), backgroundColor: ColorsApp.primary, foregroundColor: Colors.white,),
      body: Column(children: [
        Image.asset(imageUri,width: widthImage,
          height: 250,
          fit: BoxFit.fitWidth),
          const SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                SizedBox(
                  width: 120,
                  child: Text(title, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
                ),
                const Spacer(),
                Column(
                  children: [
                    Text('\$$price', style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                    RatingBar.builder(
                    initialRating: initialRating,
                    itemSize: 14,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemPadding: const EdgeInsets.symmetric(horizontal: 3.0),
                    itemBuilder: (context, _) => const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    updateOnDrag: true,
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
              ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 16,),
          Text(description, style: const TextStyle(fontSize: 12, color: Colors.black45),)
      ]),
      floatingActionButton: ElevatedButton(onPressed: () {
        
      }, child: Text('Agregar al carrito'), style: OutlinedButton.styleFrom(
        foregroundColor: ColorsApp.success,
        backgroundColor: Colors.white,
        side: const BorderSide(color: ColorsApp.success),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16)
        )
      ),),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
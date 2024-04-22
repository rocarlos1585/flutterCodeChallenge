import 'package:flutter/material.dart';

class ImageLoader extends StatelessWidget {


  final String imageUrl;
  final bool isForDetails;

  const ImageLoader({
    super.key, 
    required this.imageUrl,
    required this.isForDetails
  });



  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;
    
    return ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: Image.network(
          imageUrl,
          width: size.width,
          height: (isForDetails==true?size.height*0.3 : 150),
          fit: BoxFit.cover,
          loadingBuilder: (context, child, loadingProgress) {
            if(loadingProgress == null) return child;

            return Container(
              width: size.width*0.5,
              height: 150,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: const Text('Loading image...')
            );
          },
        )
      );
  }
}
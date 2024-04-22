import 'package:code_challenge_roberto_flutter/widgets/heart_button.dart';
import 'package:code_challenge_roberto_flutter/widgets/image_loader.dart';
import 'package:flutter/material.dart';

class PostDetailScreen extends StatelessWidget {
  final String author;
  final String date;
  final int amountOfLikes;
  final String authorImage;
  final String textContent;
  final String image;

  const PostDetailScreen({
    super.key,
    required this.author,
    required this.date,
    required this.amountOfLikes,
    required this.authorImage,
    required this.textContent,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Post detail'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                      radius: 40, 
                      backgroundImage: NetworkImage(authorImage)
                  ),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(author,
                          textAlign: TextAlign.left,
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                      Text(date),
                    ],
                  ),

                  const Spacer(),

                  HeartButton(number: amountOfLikes, onPressed: () {})
                ],
              ),

              const SizedBox(height: 15),
              
              Text(textContent, style: const TextStyle(fontSize: 20),),

              const SizedBox(height: 15),
              
              if(image.isNotEmpty) ImageLoader(imageUrl: image, isForDetails: true)
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:code_challenge_roberto_flutter/screens/post_detail_screen.dart';
import 'package:code_challenge_roberto_flutter/widgets/heart_button.dart';
import 'package:code_challenge_roberto_flutter/widgets/image_loader.dart';
import 'package:flutter/material.dart';

class PostItem extends StatelessWidget {

  final String author;
  final String authorImage;
  final String date;
  final String image;
  final String textContent;
  final int amountOfLikes;

  const PostItem({
    super.key, 
    required this.author,
    required this.authorImage,
    required this.date, 
    required this.image, 
    required this.textContent,
    required this.amountOfLikes, 
  });

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;


    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => PostDetailScreen(
              author: author,
              date: date,
              amountOfLikes: amountOfLikes,
              authorImage: authorImage,
              textContent: textContent,
              image: image,
            ),
          ),
        );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
      
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color:colors.onPrimary,
              borderRadius: BorderRadius.circular(5),
            ),
            child:  Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(
                children: [
                  _PostAuthorInfo(author: author, date: date, amountOfLikes: amountOfLikes, authorImage: authorImage,),
      
                  const SizedBox(height: 5),
                  
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text( textContent ),
                  ),
      
                  const SizedBox(height: 5),

                  if(image.isNotEmpty) ImageLoader(imageUrl: image, isForDetails: false)

                ]
              ),
            )
          ),
      
          const SizedBox(height: 10,),
      
        ]
      ),
    );
  }
}

class _PostAuthorInfo extends StatelessWidget {

  const _PostAuthorInfo({
    required this.authorImage,
    required this.author,
    required this.date,
    required this.amountOfLikes
  });

  final String author;
  final String date;
  final int amountOfLikes;
  final String authorImage;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar( backgroundImage: NetworkImage(authorImage) ),
        
        const SizedBox(width: 10),
        
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(author, textAlign:TextAlign.left, style:const TextStyle(color:Colors.black, fontSize:20, fontWeight: FontWeight.bold)),
            Text(date),
          ],
        ),

        const Spacer(),

        HeartButton(number: amountOfLikes, onPressed: (){})

      ],
    );
  }
}


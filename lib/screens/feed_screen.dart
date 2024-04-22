import 'package:code_challenge_roberto_flutter/widgets/post_item.dart';
import 'package:code_challenge_roberto_flutter/screens/profile_screen.dart';
import 'package:flutter/material.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Feed Screen'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const ProfileScreen()));
            }, 
            icon: const Icon(Icons.account_circle)
          ),
        ],
      ),
      body:  _FeedArea(),
    );
  }
}

class _FeedArea extends StatelessWidget {

  final Map<String, Map<String, dynamic>> posts = {
    'post1': {
      'author': 'Cristiano Ronaldo',
      'authorImage':'https://ichef.bbci.co.uk/ace/ws/640/cpsprodpb/153CA/production/_102468968_0e612019-71e6-47ac-b6c0-b22a888dd5fb.jpg',
      'date': '2013-11-11',
      'image':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_ygkwtoQhIGIkrcOdHnl4H-axowcBLocodkalrq5d2A&s',
      'textContent': 'Commodo proident minim officia dolore quis laboris eiusmod velit sit ullamco non officia. Enim et culpa voluptate consequat eiusmod cupidatat duis voluptate. In eiusmod magna deserunt consequat aute incididunt consequat eiusmod ut. Cupidatat sunt occaecat adipisicing voluptate deserunt fugiat dolore id magna sit.',
      'amountOfLikes': 10,
    },
    'post2': {
      'author': 'Jordi Muñoz',
      'authorImage':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcNODa3LcbZNCADnqvjbi__vCqdtJWH_-dKWSaKZ3ySg&s',
      'date': '2018-06-20',
      'image': 'https://media.gq.com.mx/photos/5be9f275b5be8667704b06fb/master/pass/jordi_munoz_2255.jpg',
      'textContent': 'Sunt aliquip culpa elit ea est proident id deserunt Lorem pariatur sit dolor ipsum ullamco.',
      'amountOfLikes': 20,
    },
    'post3': {
      'author': 'Selena Quintanilla',
      'authorImage':'https://dmn-dallas-news-prod.cdn.arcpublishing.com/resizer/TmUBu9T4mdi0bPcvWp6Xb9jSPzo=/930x0/smart/filters:no_upscale()/arc-anglerfish-arc2-prod-dmn.s3.amazonaws.com/public/Y37PEI4XQNLX7HTZQM3UQWA7WY.jpg',
      'date': '2019-06-09',
      'image': '',
      'textContent': 'Cillum tempor laboris voluptate minim sunt in laborum enim adipisicing pariatur magna. Velit sunt minim aute tempor sunt cupidatat sit commodo ad. Amet proident ea et ad proident officia. Labore aliquip esse dolore qui magna sint aliqua eu.',
      'amountOfLikes': 15,
    },

    'post4': {
      'author': 'Tony Kroos',
      'authorImage':'https://www.record.com.mx/sites/default/files/styles/v2-crop768x433/public/articulos/2024/03/23/alemania3.jpg?itok=mAHkXKeC',
      'date': '2024-04-18',
      'image': '',
      'textContent': 'Dolor dolore sint anim ullamco ex elit aliquip non.',
      'amountOfLikes': 30,
    },
    'post5': {
      'author': 'Neymar Jr',
      'authorImage':'https://tmssl.akamaized.net/images/foto/galerie/neymar-brazil-2022-1668947132-97009.jpg?lm=1668947148',
      'date': '2022-12-25',
      'image': 'https://library.sportingnews.com/styles/crop_style_16_9_desktop/s3/2022-03/neymar%281%29.jpg?itok=Ua4tqp_j',
      'textContent': 'Reprehenderit excepteur nulla Lorem proident esse pariatur.',
      'amountOfLikes': 25,
    },
    'post6': {
      'author': 'Roberto "Piojo" Alvarado',
      'authorImage':'https://cdn.clarosports.com/clarosports/2023/11/alvarado-101125.jpg',
      'date': '2024-04-16',
      'image': 'https://www.quadratin.com.mx/www/wp-content/uploads/2022/03/El-Piojo-Alvarado-convocado-de-ultima-hora-al-Tricolor.jpeg',
      'textContent': 'Id tempor voluptate labore do sint amet ipsum reprehenderit. Enim nostrud proident non sunt excepteur sint culpa proident et eu aute commodo cillum. Occaecat est sint proident adipisicing culpa Lorem commodo ad eiusmod reprehenderit nostrud est occaecat. Adipisicing consequat et fugiat elit. Dolor ex do in in adipisicing fugiat voluptate nisi eu nostrud ullamco incididunt eu. Qui adipisicing sint id sint amet ex fugiat nisi ea aliquip.',
      'amountOfLikes': 18,
    },
    'post7': {
      'author': 'Danna Espino',
      'authorImage':'https://preview.redd.it/qui%C3%A9n-para-morbo-o-rol-de-dannespino-v0-xec5sv36k4fc1.jpeg?auto=webp&s=75a078a9b86c4925da21081760dfb08c521f64b8',
      'date': '2020-04-01',
      'image': '',
      'textContent': 'Aliqua duis sunt est officia amet excepteur ipsum do sint do mollit do aliqua. Ullamco proident ipsum culpa laborum amet ex pariatur nisi irure. Aliquip proident sint ullamco fugiat quis quis in aliqua ad occaecat dolor sint anim reprehenderit. Ullamco esse voluptate amet officia laborum dolor duis laboris qui adipisicing ex commodo. Velit ad laborum commodo qui laborum ullamco enim quis.',
      'amountOfLikes': 22,
    },
    'post8': {
      'author': 'Christian Nodal',
      'authorImage':'https://ca-times.brightspotcdn.com/dims4/default/b1c1141/2147483647/strip/false/crop/3801x2581+0+0/resize/1486x1009!/quality/75/?url=https%3A%2F%2Fcalifornia-times-brightspot.s3.amazonaws.com%2F8f%2F22%2F15c907fb4e6392d48757750b98bc%2Fchristian.jpg',
      'date': '2021-01-11',
      'image': 'https://www.poresto.net/u/fotografias/m/2021/8/11/f608x342-113777_143500_4622.jpg',
      'textContent': 'Minim laborum eiusmod nisi aute.',
      'amountOfLikes': 40,
    },
    'post9': {
      'author': 'Ice Cube',
      'authorImage':'https://i.pinimg.com/736x/bd/54/33/bd54334b447fef0e276e60ae6137152a.jpg',
      'date': '2009-04-03',
      'image': 'https://assets.mubicdn.net/images/film/48052/image-w1280.jpg?1445901540',
      'textContent': 'Enim sint eiusmod id deserunt sint qui incididunt et commodo nostrud culpa sint veniam. Consectetur cupidatat reprehenderit aute do consequat. Ex anim laboris do amet nulla voluptate Lorem. Mollit anim eiusmod sint reprehenderit dolore enim. Aute sunt quis magna esse cillum elit consectetur. Ad pariatur adipisicing cupidatat ullamco.',
      'amountOfLikes': 12,
    },
    'post10': {
      'author': 'Erick Aleman',
      'authorImage':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqIsHrX5NHDgxQhq5gzY2EoSGyKVHHy7gPlkeqLC7s-A&s',
      'date': '2024-04-12',
      'image': 'https://images.squarespace-cdn.com/content/v1/5de1806ce4e943157b40236e/1697674147538-1LJ6NLV8S3U7SD41M4OG/alema%CC%81n-8.jpeg',
      'textContent': 'Sunt duis non enim Lorem exercitation.',
      'amountOfLikes': 35,
    },
  };

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return SafeArea(
      child: Container(
        color: colors.primary,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: posts.length,
                  itemBuilder: (context, index) {
                    
                    String key = posts.keys.elementAt(index);
                    Map<String, dynamic> post = posts[key]!;
                    
                    return PostItem(
                      author: post['author'],
                      authorImage: post['authorImage'],
                      date: post['date'], 
                      image: (post['image']), 
                      textContent: post['textContent'], 
                      amountOfLikes: post['amountOfLikes']
                    );
                  } ,
                ) 
              ),
            ],
          ),
        ),
      ),
    );
  }
}
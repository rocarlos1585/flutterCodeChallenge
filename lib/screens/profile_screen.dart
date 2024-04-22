import 'package:code_challenge_roberto_flutter/widgets/post_item.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {


  final Map<String, Map<String, dynamic>> posts = {
  'post1': {
    'author': 'Roberto Carlos Lopez Perez',
    'authorImage':'https://media.licdn.com/dms/image/C5603AQGbstFojrx5Ng/profile-displayphoto-shrink_200_200/0/1652128361077?e=1719446400&v=beta&t=dkrnlncjGMQanNShROUFZm7gTPg4vUoZRt7YgMT17Jw',
    'date': '2022-10-18',
    'image':'https://upload.wikimedia.org/wikipedia/commons/thumb/c/ca/TSJZapopan_Logo.jpg/1200px-TSJZapopan_Logo.jpg',
    'textContent': 'I have been working at the university where I studied "El Tecnologico Superior de Jalisco" for some time now, the purpose for which I came here was to evolve a little of what I received, my main activities here are to develop web components as well as a mobile application for students.',
    'amountOfLikes': 10,
  },

  'post2': {
    'author': 'Roberto Carlos Lopez Perez',
    'authorImage':'https://media.licdn.com/dms/image/C5603AQGbstFojrx5Ng/profile-displayphoto-shrink_200_200/0/1652128361077?e=1719446400&v=beta&t=dkrnlncjGMQanNShROUFZm7gTPg4vUoZRt7YgMT17Jw',
    'date': '2024-04-18',
    'image': 'https://scontent.fgdl5-3.fna.fbcdn.net/v/t39.30808-6/342472781_6151749051560322_3760549338629958215_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeH6Bk6qf3LlFzzMmVSvhREbsevcPKskDlyx69w8qyQOXDfgo1kBHfe71XiuHmZ5J49y3PK-AXI0esS-P34wZHYu&_nc_ohc=OaBBxSUtAE4Ab4Dtc65&_nc_ht=scontent.fgdl5-3.fna&oh=00_AfA8cV8jYXCCpfEhuWcFHflcEKs0OLd4z65m-gMMeZVINw&oe=662C2A7D',
    'textContent': 'I am passionate about motorcycling, in my free time I like to take my motorcycle, my cameras and go exploring around me, Mexico has very good landscapes that are worth knowing',
    'amountOfLikes': 30,
  },
  'post3': {
    'author': 'Roberto Carlos Lopez Perez',
    'authorImage':'https://media.licdn.com/dms/image/C5603AQGbstFojrx5Ng/profile-displayphoto-shrink_200_200/0/1652128361077?e=1719446400&v=beta&t=dkrnlncjGMQanNShROUFZm7gTPg4vUoZRt7YgMT17Jw',
    'date': '2018-06-20',
    'image': 'https://play-lh.googleusercontent.com/qOA_gHKg5EbtCMw7mlxOEiVVd1tsbCb8ftkD5vDhaLcVjBGqfYMoCYQUKjJIp8ZGOrg',
    'textContent': 'selfpause was my first job for a foreign company and also one of my professional achievements which I was able to cross off my list of things to do before I die hahaha, I worked with them for about 2 years as a mobile developer, without a doubt I learned a lot with them they',
    'amountOfLikes': 20,
  },
  'post4': {
    'author': 'Roberto Carlos Lopez Perez',
    'authorImage':'https://media.licdn.com/dms/image/C5603AQGbstFojrx5Ng/profile-displayphoto-shrink_200_200/0/1652128361077?e=1719446400&v=beta&t=dkrnlncjGMQanNShROUFZm7gTPg4vUoZRt7YgMT17Jw',
    'date': '2019-06-09',
    'image': 'https://pbs.twimg.com/media/GHXE3fUWcAAU0cl.jpg',
    'textContent': 'Here at frqtal it was a pretty good experience, my main job was mobile development in react native, the objective was to develop an app which was a marketplace for NFTs, I had to lead a team of 3 people for a few months, at the end of the project I decided to leave to look for new challenges',
    'amountOfLikes': 15,
  },

  'post5': {
    'author': 'Roberto Carlos Lopez Perez',
    'authorImage':'https://media.licdn.com/dms/image/C5603AQGbstFojrx5Ng/profile-displayphoto-shrink_200_200/0/1652128361077?e=1719446400&v=beta&t=dkrnlncjGMQanNShROUFZm7gTPg4vUoZRt7YgMT17Jw',
    'date': '2022-12-25',
    'image': 'https://scontent.fgdl5-4.fna.fbcdn.net/v/t39.30808-6/438721002_17954442140774197_7621963088899967295_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeHDk-P_1-nFVafjbxHslwYnyRuKA9-TCqDJG4oD35MKoBqWuKtk1KguaS4lSIR7Wj970GvxEPutIuKtUGS5iVDV&_nc_ohc=hZgyNjCigpMAb4jmUqq&_nc_ht=scontent.fgdl5-4.fna&oh=00_AfCMtxvbf27Rl-Em2dhFyLjt2Vs991EphLu80ChfMFKeTg&oe=662C049E',
    'textContent': 'One of my favorite sports is soccer. We recently just won the league championship in which I play with my friends.',
    'amountOfLikes': 25,
  },
  
};

    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Screen'),
        centerTitle: true,
      ),
      body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        _ProfileCoverWidget(size: size),
        const SizedBox(height: 10),
        const Text('Roberto Carlos Lopez Perez',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
        const Text('web / mobile developer',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400)),
        const Text('roberto.karlos.lopez@gmail.com',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400)),
         Expanded(
            child: DefaultTabController(
          length: 2,
          child: Column(
            children: [
              const TabBar(
                tabs: [
                  Tab(icon: Icon(Icons.post_add_outlined), text: 'My posts',),

                  Tab(icon: Icon(Icons.person_search_outlined), text: 'About me',),
                ],
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                  child: TabBarView(
                    children: [
                      _MyPosts(posts: posts),

                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        child:Text(
                          style: TextStyle(fontSize: 18),
                          'I am a passionate frontend and mobile developer with experience in the MERN ecosystem and Flutter. I have worked on various projects where I have demonstrated solid skills in the development of web and mobile applications, as well as in the design and editing of interfaces. My passion for electronics complements my technological approach, allowing me to approach projects in a creative and innovative way. I am a proactive professional, results-oriented and always willing to face new challenges in the world of software development.',
                        )
                      )
                    
                    ],
                  ),
                ),
              ),
            ],
          ),
        ))
      ])),
    );
  }
}

class _MyPosts extends StatelessWidget {
  const _MyPosts({
    required this.posts,
  });

  final Map<String, Map<String, dynamic>> posts;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
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
                      
      },
    );
  }
}

class _ProfileCoverWidget extends StatelessWidget {
  const _ProfileCoverWidget({
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.3,
      decoration: const BoxDecoration(color: Colors.transparent),
      child: Stack(children: [
        const _ImageLoader(
            imageUrl:
                'https://scontent.fgdl5-4.fna.fbcdn.net/v/t39.30808-6/411233539_7140045516038398_2618407187521176451_n.jpg?stp=cp6_dst-jpg&_nc_cat=108&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeHN1AJAqI3IjJcklPeQ1euRAd-wBAhWOosB37AECFY6i6of86ovxykQmqj0Cg1j_dRDhv2V2Ww4G8LKItJDYNky&_nc_ohc=OmRX8i_guDYAb6Lb1W8&_nc_ht=scontent.fgdl5-4.fna&oh=00_AfC9VTVPHgTO2wWDv97gedEqeYV4pZcRFExM4yf2ZMKQmg&oe=662C0F4B'),
        Positioned(
          bottom: 0,
          right: size.width / 3,
          child: Center(
            child: CircleAvatar(
                radius: size.width / 6,
                backgroundImage: const NetworkImage(
                    'https://media.licdn.com/dms/image/C5603AQGbstFojrx5Ng/profile-displayphoto-shrink_200_200/0/1652128361077?e=1719446400&v=beta&t=dkrnlncjGMQanNShROUFZm7gTPg4vUoZRt7YgMT17Jw')),
          ),
        )
      ]),
    );
  }
}

class _ImageLoader extends StatelessWidget {
  final String imageUrl;

  const _ImageLoader({
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return ClipRRect(
      child: Image.network(
      imageUrl,
      width: size.width,
      height: size.height * 0.25,
      fit: BoxFit.fill,
      loadingBuilder: (context, child, loadingProgress) {
        if (loadingProgress == null) return child;

        return Container(
            width: size.width * 0.5,
            height: 150,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: const Text('Loading image...'));
      },
    ));
  }
}

import 'package:flutter/material.dart';
import 'package:instagram_ui_clone/utils/bubble_stories.dart';
import 'package:instagram_ui_clone/utils/user_posts.dart';

class UserHome extends StatelessWidget {
  UserHome({Key? key}) : super(key: key);

  final List people = [
    'dimassubaktianto',
    'dechaapriliany',
    'ekasaputra',
    'm.hafiz',
    'i.fahmy',
    'fajar',
    'eki',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Instagram',
                style: TextStyle(color: Colors.black),
              ),
              Row(
                children: const [
                  Icon(Icons.add),
                  Padding(
                    padding: EdgeInsets.all(24.0),
                    child: Icon(Icons.favorite),
                  ),
                  Icon(Icons.share),
                ],
              )
            ],
          ),
        ),
        body: Column(
          // STORIES
          children: [
            SizedBox(
              height: 110,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: people.length,
                itemBuilder: ((context, index) {
                  return BubbleStories(text: people[index]);
                }),
              ),
            ),

            // POST
            Expanded(
              child: ListView.builder(
                  itemCount: people.length,
                  itemBuilder: (context, index) {
                    return UserPosts(
                      name: people[index],
                    );
                  }),
            )
          ],
        ));
  }
}

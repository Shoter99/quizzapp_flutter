import 'package:flutter/material.dart';
import 'package:quizapp/shared/bottom_nav.dart';
import 'package:quizapp/services/firestore.dart';
import 'package:quizapp/services/models.dart';
import 'package:quizapp/shared/loading.dart';
import 'package:quizapp/topics/topic_item.dart';

class TopicsPage extends StatelessWidget {
  const TopicsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Topic>>(
        future: FirestoreService().getTopics(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Loading();
          } else if (snapshot.hasError) {
            return const Center(child: Text("error"));
          } else if (snapshot.hasData) {
            var topics = snapshot.data!;

            return Scaffold(
              appBar: AppBar(
                title: const Text('Topics'),
              ),
              body: GridView.count(
                primary: false,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 10,
                crossAxisCount: 2,
                children:
                    topics.map((topic) => TopicItem(topic: topic)).toList(),
              ),
              bottomNavigationBar: const BottomNavBar(),
            );
          } else {
            return const Center(child: Text("No data to display"));
          }
        });
  }
}

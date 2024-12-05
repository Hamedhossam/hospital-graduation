import 'package:flutter/material.dart';
import 'package:hospital/constants.dart';
import 'package:hospital/models/news_model.dart';
import 'package:hospital/widgets/news_widget.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({
    super.key,
    required this.newsList,
  });
  final List<NewsModel> newsList;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text(
          "اخر الأخبار",
          style: labelStyle,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: newsList.length,
          itemBuilder: (context, index) {
            return NewsWidget(newsModel: newsList[index]);
          },
        ),
      ),
    );
  }
}

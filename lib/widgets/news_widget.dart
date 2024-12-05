import 'package:flutter/material.dart';
import 'package:hospital/constants.dart';
import 'package:hospital/models/news_model.dart';

class NewsWidget extends StatelessWidget {
  const NewsWidget({
    required this.newsModel,
    super.key,
  });
  final NewsModel newsModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        // padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 120, 119, 119),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          children: [
            Container(
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(newsModel.image),
                ),
              ),
            ),
            SizedBox(
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: Text(
                    textAlign: TextAlign.right,
                    maxLines: 1,
                    style: normalStyle,
                    overflow: TextOverflow.ellipsis,
                    newsModel.tittle),
              ),
            ),
            SizedBox(
              height: 45,
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: Text(
                    style: const TextStyle(
                      fontFamily: "NotoKufiArabic",
                      fontSize: 14,
                      color: Color.fromARGB(179, 255, 255, 255),
                    ),
                    textAlign: TextAlign.right,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    newsModel.subtittle),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return NewsView(
                    newsModel: newsModel,
                  );
                }));
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: Text(
                    textAlign: TextAlign.right,
                    maxLines: 1,
                    style: normalStyle,
                    overflow: TextOverflow.ellipsis,
                    "مشاهدة الخبر 👆",
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NewsView extends StatelessWidget {
  const NewsView({
    super.key,
    required this.newsModel,
  });
  final NewsModel newsModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                height: MediaQuery.sizeOf(context).height / 3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(newsModel.image),
                  ),
                ),
              ),
              Text(
                textAlign: TextAlign.left,
                newsModel.date,
                style: newsStyle,
              ),
              Text(
                newsModel.tittle,
                textAlign: TextAlign.center,
                style: specialStyle,
              ),
              Text(
                textAlign: TextAlign.right,
                newsModel.subtittle,
                style: newsStyle,
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:askrindo/const/image_const.dart';
import 'package:askrindo/generated/l10n.dart';
import 'package:flutter/material.dart';

class NewsModel {
  final String? image;
  final String? title;

  NewsModel({
    this.image,
    this.title,
  });
}

List<NewsModel> listNews(BuildContext context) {
  final s = S.of(context);
  return [
    NewsModel(
      image: ImageConst.news1,
      title: s.news1,
    ),
    NewsModel(
      image: ImageConst.news2,
      title: s.news2,
    ),
  ];
}

import 'package:flutter/material.dart';
import 'package:siskang/app/global/utils/constants.dart';

class NewsItemTerbaru extends StatelessWidget {
  final fotoBerita;
  final judulBerita;
  final tglBerita;
  final detailBerita;
  NewsItemTerbaru({
    Key? key,
    required this.fotoBerita,
    required this.judulBerita,
    required this.tglBerita,
    required this.detailBerita,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(right: 20),
          width: getProportionateScreenWidth(200),
          height: getProportionateScreenHeight(150),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: NetworkImage(this.fotoBerita),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
            width: getProportionateScreenWidth(200),
            child: Text(
              this.judulBerita,
              style: TextStyle(overflow: TextOverflow.ellipsis),
            )),
        Text(
          this.tglBerita,
          style: TextStyle(
            fontSize: 8,
          ),
        ),
        Container(
            width: getProportionateScreenWidth(200),
            child: Text(
              this.detailBerita,
              style: TextStyle(overflow: TextOverflow.ellipsis),
            ))
      ],
    );
  }
}

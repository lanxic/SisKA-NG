import 'package:flutter/material.dart';
import 'package:siskang/app/global/utils/constants.dart';

class notificationItem extends StatelessWidget {
  final fotoPesan;
  final judulPesan;
  final tglPesan;
  final detailPesan;
  const notificationItem({
    Key? key,
    required this.fotoPesan,
    required this.judulPesan,
    required this.tglPesan,
    required this.detailPesan,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              // margin: EdgeInsets.only(right: 20),
              width: getProportionateScreenWidth(70),
              height: getProportionateScreenHeight(70),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: NetworkImage(fotoPesan),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(width: 10),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      width: getProportionateScreenWidth(200),
                      child: Text(
                        judulPesan,
                        style: TextStyle(
                          fontSize: 14,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: kBorderColor,
                        ),
                      ),
                      child: Text(
                        " $tglPesan ",
                        style: TextStyle(
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Container(
                  width: getProportionateScreenWidth(250),
                  child: Text(
                    detailPesan,
                    style: TextStyle(
                      fontSize: 14,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            )
          ],
        ),
        SizedBox(height: 10),
        Divider(
          height: .5,
          color: Colors.grey[300],
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:siskang/app/global/utils/constants.dart';
import 'package:siskang/app/modules/home/views/home_menu_model.dart';

class MenuListView extends StatelessWidget {
  const MenuListView({
    Key? key,
    required List<HomeMenuModel> menu,
  })  : _menu = menu,
        super(key: key);

  final List<HomeMenuModel> _menu;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenHeight(260),
      child: GridView.builder(
        shrinkWrap: true,
        padding: EdgeInsets.symmetric(
          vertical: getProportionateScreenHeight(20),
        ),
        scrollDirection: Axis.horizontal,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 25,
        ),
        itemCount: _menu.length,
        itemBuilder: (context, index) {
          final HomeMenuModel menu = _menu[index];
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: getProportionateScreenHeight(60),
                child: OutlinedButton(
                  autofocus: true,
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  onPressed: menu.onPress,
                  child: Icon(
                    menu.image,
                    color: menu.color,
                  ),
                ),
              ),
              SizedBox(height: 4),
              Text(
                menu.title,
                maxLines: 2,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

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
    return Center(
      child: Container(
        margin: EdgeInsets.only(
          top: getProportionateScreenHeight(160),
        ),
        height: getProportionateScreenHeight(260),
        width: getProportionateScreenWidth(350),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(3),
          child: Container(
            color: Colors.white,
            padding: EdgeInsets.only(
              top: getProportionateScreenHeight(3),
            ),
            child: Center(
              child: GridView.builder(
                shrinkWrap: true,
                padding: EdgeInsets.symmetric(
                  vertical: getProportionateScreenHeight(20),
                ),
                scrollDirection: Axis.horizontal,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20,
                ),
                itemCount: _menu.length,
                itemBuilder: (context, index) {
                  final HomeMenuModel menu = _menu[index];
                  return Column(
                    children: [
                      Container(
                        height: getProportionateScreenHeight(70),
                        child: OutlinedButton(
                          autofocus: true,
                          style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                          onPressed: menu.onPress,
                          child: Icon(
                            menu.image,
                            color: menu.color,
                            size: 26,
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
            ),
          ),
        ),
      ),
    );
  }
}

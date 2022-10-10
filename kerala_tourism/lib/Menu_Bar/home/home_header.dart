import 'package:flutter/material.dart';

import '../../size_config.dart';
import 'icon_btn_with_counter.dart';
import 'search_field.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SearchField(),

          iconBtnWithCounter(
            svgSrc: "assets/icons/Log out.svg",
            press: (){},
            // numOfItems: 3,
          ),
          iconBtnWithCounter(
            svgSrc: "assets/icons/Bell.svg",
            press: (){},
            numOfItems: 3,
          ),
        ],
      ),
    );
  }
}


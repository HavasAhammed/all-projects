import 'package:flutter/material.dart';

import '../../size_config.dart';

class HeaderTitle extends StatelessWidget {
  const HeaderTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: getProportionateScreenHeight(20)),
      padding: EdgeInsets.symmetric(horizontal: getProportionateScreenHeight(20),
      vertical: getProportionateScreenHeight(15)),
      width: double.infinity,
      // height: 90,
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text.rich(TextSpan(
        text: "God's own country\n",
        style: TextStyle(
          color: Colors.white),
          children: [
            TextSpan(
              text: "Kerala Tourism",
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold
              ))
          ]
          )
        ),
    );
  }
}

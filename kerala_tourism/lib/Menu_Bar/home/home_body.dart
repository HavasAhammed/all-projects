import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:kerala_tourism/Menu_Bar/home/icon_btn_with_counter.dart';
import 'package:kerala_tourism/Menu_Bar/home/search_field.dart';
import 'package:kerala_tourism/constants.dart';
import '../../../../size_config.dart';
import 'home_header.dart';
import 'setion_title.dart';
import 'title.dart';

class HomeBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // var SizeConfig;
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenWidth(20)),
            HomeHeader(),
            SizedBox(height: getProportionateScreenWidth(30)),
            HeaderTitle(),
            SizedBox(height: getProportionateScreenWidth(30)),
            SectionTitle(
              text: "Special for you",
              press: (){},
            ),
            SizedBox(height: getProportionateScreenWidth(20)),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SpecialForYou(
                    image: 'assets/places/munnar.png',
                    category: 'Hill Top',
                    place: 'Munnar',
                    press: (){},
                  ),
                  SpecialForYou(
                    image: 'assets/places/Kozhikode-Beach.png',
                    category: 'Beach',
                    place: 'Beypore',
                    press: (){},
                  ),
                  SpecialForYou(
                    image: 'assets/places/athirapally.png',
                    category: 'Water Falls',
                    place: 'Athirapilly',
                    press: (){},
                  ),
                  SpecialForYou(
                    image: 'assets/places/kuttanadu.png',
                    category: 'Lake',
                    place: 'Kuttanadu',
                    press: (){},
                  ),
                  SizedBox(width: getProportionateScreenWidth(20),)
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}

class SpecialForYou extends StatelessWidget {
  const SpecialForYou({
    Key? key, 
    required this.category, 
    required this.image, 
    required this.place, 
    required this.press,
  }) : super(key: key);
  final String category, image;
  final String place;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(left: getProportionateScreenWidth(20)),
      child: SizedBox(
        width: getProportionateScreenWidth(239.5),
        height: getProportionateScreenWidth(118),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Stack(
            children: [
              Image.asset(image, 
            fit: BoxFit.cover,
            ),
            Container(
              decoration: BoxDecoration(
                // gradient: LinearGradient(
                //   begin: Alignment.topCenter,
                //   end: Alignment.bottomCenter,
                //   colors: [Color(0xFF343434).withOpacity(0.4),
                //   Color(0xFF343434).withOpacity(0.15)
                //   ]
                // )
              ),
            ),
            Padding(
              padding:  EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(15),
                vertical: getProportionateScreenWidth(10)
              ),
              child: Text.rich(TextSpan(
                style: TextStyle(
                  color: Colors.white
                ),
                children: [
                  TextSpan(
                    text: '$category\n',
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(18),
                      fontWeight: FontWeight.bold
                    )
                  ),
                  TextSpan(
                    text: place
                  ),
                ]
              )),
            )
            ]
            )
            ),
      ),
    );
  }
}


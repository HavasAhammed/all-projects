import 'package:flutter/material.dart';
import 'package:kerala_tourism/Menu_Bar/home/home_body.dart';

import '../../size_config.dart';

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: HomeBody(),
       
    );
  }
}
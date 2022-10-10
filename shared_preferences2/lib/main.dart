import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences2/pages/user_page.dart';
import 'package:shared_preferences2/utils/user_simple_preferences.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  await UserSimplePreferences.init();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = 'Shared Preferences';

  

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_init_to_null, prefer_typing_uninitialized_variables
    // var key ;
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData(
          colorScheme: ColorScheme.dark(),
          scaffoldBackgroundColor: Color(0xff8c52ff),
          accentColor: Colors.lightGreen.shade400,
          unselectedWidgetColor: Colors.deepPurple.shade200,
          switchTheme: SwitchThemeData(
            thumbColor: MaterialStateProperty.all(Colors.white),
          ),
        ),
        home: UserPage(),
      );
  }
}
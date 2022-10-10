import 'package:flutter/material.dart';
import 'package:shared_preferences2/utils/user_simple_preferences.dart';
import 'package:shared_preferences2/widgets/birthday_widget.dart';
import 'package:shared_preferences2/widgets/button_widget.dart';
import 'package:shared_preferences2/widgets/pets_buttons_widget.dart';
import 'package:shared_preferences2/widgets/title_widget.dart';



class UserPage extends StatefulWidget {
  final String? idUser;

  const UserPage({
     Key? key,
     this.idUser,
  }) : super(key: key);

  @override
  _UserPageState createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  final formKey = GlobalKey<FormState>();
  String name = '';
  late DateTime birthday;
  List<String> pets = [];

  @override
  void initState() {
    super.initState();

    name = UserSimplePreferences.getUsername() ?? '';
    birthday = UserSimplePreferences.getBirthday()!;
    pets = UserSimplePreferences.getPets() ?? [];
  }

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_init_to_null
    // var key = null;
    return Scaffold(
        body: SafeArea(
          child: ListView(
            padding: EdgeInsets.all(16),
            children: [
              TitleWidget(icon: Icons.save_alt, text: 'Shared\nPreferences'),
              const SizedBox(height: 32),
              buildName(),
              const SizedBox(height: 12),
              buildBirthday(),
              const SizedBox(height: 12),
              buildPets(),
              const SizedBox(height: 32),
              buildButton(),
            ],
          ),
        ),
      );
  }

  Widget buildName() => buildTitle(
        title: 'Name',
        child: TextFormField(
          initialValue: name,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: 'Your Name',
          ),
          onChanged: (name) => setState(() => this.name = name),
        ),
      );

  Widget buildBirthday() {
    // ignore: avoid_init_to_null
    // var key = null;
    return buildTitle(
        title: 'Birthday',
        child: BirthdayWidget(
          birthday: birthday,
          onChangedBirthday: (birthday) =>
              setState(() => this.birthday = birthday),
        ),
      );
  }

  Widget buildPets() {
    // ignore: avoid_init_to_null
    // var key = null;
    return buildTitle(
        title: 'Pets',
        child: PetsButtonsWidget(
          pets: pets,
          onSelectedPet: (pet) => setState(
              () => pets.contains(pet) ? pets.remove(pet) : pets.add(pet)),
        ),
      );
  }

  Widget buildButton() => ButtonWidget(
      text: 'Save',
      onClicked: () async {
        await UserSimplePreferences.setUsername(name);
        await UserSimplePreferences.setBirthday(birthday);
        await UserSimplePreferences.setPets(pets);
      });

  Widget buildTitle({
    required String title,
    required Widget child,
  }) =>
      Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          const SizedBox(height: 8),
          child,
        ],
      );
}
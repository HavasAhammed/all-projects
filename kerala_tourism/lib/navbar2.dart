import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:kerala_tourism/Bottom%20Tab/favourite.dart';
import 'package:kerala_tourism/Bottom%20Tab/settings.dart';
import 'package:kerala_tourism/Bottom%20Tab/settings2.dart';
import 'package:kerala_tourism/Bottom%20Tab/venue.dart';
import 'package:kerala_tourism/Menu_Bar/about.dart';
import 'package:kerala_tourism/Menu_Bar/events.dart';
import 'package:kerala_tourism/Menu_Bar/feedback.dart';
import 'package:kerala_tourism/Menu_Bar/home/home.dart';
import 'package:kerala_tourism/Menu_Bar/photos.dart';
import 'package:kerala_tourism/Menu_Bar/user_profile.dart';
import 'package:kerala_tourism/Menu_Bar/user_profile2.dart';
import 'package:kerala_tourism/Menu_Bar/videos.dart';
// import 'package:kerala_tourism/google_sign_in.dart';
// import 'package:kerala_tourism/login_screen.dart';
// import 'package:provider/provider.dart';

class NavBar2 extends StatelessWidget {

  Color primaryColor = Colors.green;

  final user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(user.displayName!), 
            accountEmail: Text(user.email!),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                // backgroundImage: NetworkImage(user.photoURL!),
                
                child: Image.network(user.photoURL!,
                // Image.asset('assets/images/IMG-20200204-WA0088.jpg',           
                width: 90,
                height: 90,
                fit: BoxFit.cover,
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: primaryColor,
              image: const DecorationImage(
                image: AssetImage('assets/images/kerala cover5.jpg'),
                fit: BoxFit.cover
                )
            ),
            ),
            ListTile(
              leading: Icon(Icons.home,
              color: primaryColor),
              title: const Text('Home'),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => Home()));
              },
            ),
            ListTile(
              leading: Icon(Icons.person,
              color: primaryColor),
              title: const Text('Profile'),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => UserProfile2()));
              },
            ),
             ListTile(
              leading: Icon(Icons.favorite,
              color: primaryColor),
              title: const Text('Favorites'),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => Favourites()));
              },
            ),
            ListTile(
              leading: Icon(Icons.location_on,
              color: primaryColor),
              title: const Text('Venues'),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => Venues()));
              },
            ),
            // ListTile(
            //   leading: Icon(Icons.travel_explore,
            //   color: primaryColor),
            //   title: const Text('Travelogues'),
            //   onTap: (){},
            // ),
            // ListTile(
            //   leading: Icon(Icons.edit_notifications_rounded,
            //   color: primaryColor),
            //   title: const Text('Keypoints'),
            //   onTap: (){},
            // ),
            // ListTile(
            //   leading: Icon(Icons.business_center,
            //   color: primaryColor),
            //   title: const Text('Business'),
            //   onTap: (){},
            // ),
            ListTile(
              leading: Icon(Icons.photo,
              color: primaryColor),
              title: const Text('Photos'),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => Photos()));
              },
            ),
            ListTile(
              leading: Icon(Icons.local_movies_rounded,
              color: primaryColor),
              title: const Text('Videos'),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => Videos()));
              },
            ),
            // ListTile(
            //   leading: Icon(Icons.miscellaneous_services,
            //   color: primaryColor),
            //   title: const Text('Services'),
            //   onTap: (){},
            // ),
            ListTile(
              leading: Icon(Icons.event,
              color: primaryColor),
              title: const Text('Events'),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => Events()));
              },
            ),
            // ListTile(
            //   leading: Icon(Icons.message,
            //   color: primaryColor),
            //   title: const Text('Complaints'),
            //   onTap: (){},
            // ),
            ListTile(
              leading: Icon(Icons.feedback,
              color: primaryColor),
              title: const Text('Feedback'),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => Feedbacks()));
              },
            ),
            // ListTile(
            //   leading: Icon(Icons.emoji_objects,
            //   color: primaryColor),
            //   title: const Text('Objects'),
            //   onTap: (){},
            // ),
             ListTile(
              leading: Icon(Icons.sticky_note_2_outlined,
              color: primaryColor),
              title: const Text('About'),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => About()));
              },
            ),
            // ListTile(
            //   leading: Icon(Icons.settings,
            //   color: primaryColor),
            //   title: const Text('Settings'),
            //   onTap: (){
            //     Navigator.of(context).push(MaterialPageRoute(builder: (context) => Settings2()));
            //   },
            // ),   
        ],
      ),
    );
  }
}
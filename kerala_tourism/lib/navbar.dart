import 'package:flutter/material.dart';
import 'package:kerala_tourism/Bottom%20Tab/favourite.dart';
import 'package:kerala_tourism/Bottom%20Tab/settings.dart';
import 'package:kerala_tourism/Bottom%20Tab/venue.dart';
import 'package:kerala_tourism/Menu_Bar/about.dart';
import 'package:kerala_tourism/Menu_Bar/events.dart';
import 'package:kerala_tourism/Menu_Bar/feedback.dart';
import 'package:kerala_tourism/Menu_Bar/home/home.dart';
import 'package:kerala_tourism/Menu_Bar/photos.dart';
import 'package:kerala_tourism/Menu_Bar/user_profile.dart';
import 'package:kerala_tourism/Menu_Bar/videos.dart';
import 'package:kerala_tourism/login_screen.dart';

class NavBar extends StatelessWidget {

  Color primaryColor = Colors.green;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Shahla Beegum',
            // style: TextStyle(color: Colors.black),
            ), 
            accountEmail: Text("shahlanishu@gmail.com",
            // style: TextStyle(color: Colors.black)
            ),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset('assets/images/IMG-20200204-WA0088.jpg',           
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
              title: Text('Home'),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => Home()));
              },
            ),
            ListTile(
              leading: Icon(Icons.person,
              color: primaryColor),
              title: Text('Profile'),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => UserProfile()));
              },
            ),
             ListTile(
              leading: Icon(Icons.favorite,
              color: primaryColor),
              title: Text('Favorites'),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => Favourites()));
              },
            ),
            ListTile(
              leading: Icon(Icons.location_on,
              color: primaryColor),
              title: Text('Venues'),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => Venues()));
              },
            ),
            // ListTile(
            //   leading: Icon(Icons.travel_explore,
            //   color: primaryColor),
            //   title: Text('Travelogues'),
            //   onTap: (){},
            // ),
            // ListTile(
            //   leading: Icon(Icons.edit_notifications_rounded,
            //   color: primaryColor),
            //   title: Text('Keypoints'),
            //   onTap: (){},
            // ),
            // ListTile(
            //   leading: Icon(Icons.business_center,
            //   color: primaryColor),
            //   title: Text('Business'),
            //   onTap: (){},
            // ),
            ListTile(
              leading: Icon(Icons.photo,
              color: primaryColor),
              title: Text('Photos'),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => Photos()));
              },
            ),
            ListTile(
              leading: Icon(Icons.local_movies_rounded,
              color: primaryColor),
              title: Text('Videos'),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => Videos()));
              },
            ),
            // ListTile(
            //   leading: Icon(Icons.miscellaneous_services,
            //   color: primaryColor),
            //   title: Text('Services'),
            //   onTap: (){},
            // ),
            ListTile(
              leading: Icon(Icons.event,
              color: primaryColor),
              title: Text('Events'),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => Events()));
              },
            ),
            // ListTile(
            //   leading: Icon(Icons.message,
            //   color: primaryColor),
            //   title: Text('Complaints'),
            //   onTap: (){},
            // ),
            ListTile(
              leading: Icon(Icons.feedback,
              color: primaryColor),
              title: Text('Feedback'),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => Feedbacks()));
              },
            ),
            // ListTile(
            //   leading: Icon(Icons.emoji_objects,
            //   color: primaryColor),
            //   title: Text('Objects'),
            //   onTap: (){},
            // ),
             ListTile(
              leading: Icon(Icons.sticky_note_2_outlined,
              color: primaryColor),
              title: Text('About'),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => About()));
              },
            ),
            // ListTile(
            //   leading: Icon(Icons.settings,
            //   color: primaryColor),
            //   title: Text('Settings'),
            //   onTap: (){
            //     Navigator.of(context).push(MaterialPageRoute(builder: (context) => Settings()));
            //   },
            // ),  
        ],
      ),
    );
  }
}
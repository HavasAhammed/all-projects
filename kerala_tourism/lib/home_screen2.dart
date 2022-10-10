import 'package:flutter/material.dart';
import 'package:kerala_tourism/Bottom%20Tab/favourite.dart';
import 'package:kerala_tourism/Bottom%20Tab/notifications.dart';
import 'package:kerala_tourism/Bottom%20Tab/settings.dart';
import 'package:kerala_tourism/Bottom%20Tab/venue.dart';
import 'package:kerala_tourism/login_screen.dart';
import 'package:kerala_tourism/navbar.dart';

class HomeScreen2 extends StatelessWidget {
  
  Color primaryColor = Colors.green;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          drawer: NavBar(),
          appBar: AppBar(
            // centerTitle: true,
            iconTheme: const IconThemeData(color: Colors.white),
            title: const Text(
              'KERALA TOURISM',
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Pacifico',
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
            ),
            backgroundColor: primaryColor,
            actions: const [
              // SizedBox(width: 10,),
                Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
              // SizedBox(width: 5,),
        //        ActionChip(
        //          backgroundColor: Colors.white,
        //         avatar: Icon(Icons.logout,
        //         color: primaryColor,),
        //         label: Text('Logout',
        //         style: TextStyle(color: primaryColor),), 
        //         onPressed: (){
        //            Navigator.of(context).pop();
        // //            (MaterialPageRoute(
        // // builder: (context) => LoginScreen()));               
        //         }),
                SizedBox(width: 20,)

            ],
          ),
          body: Stack(
            children: [
               
              ListView(
                children: [
                 
                  //Kasargodu

                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Card(
                      clipBehavior: Clip.antiAlias,
                      elevation: 10,
                      shadowColor: Colors.black,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24)),
                      child: Column(
                        children: [
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Ink.image(
                                  image:
                                      AssetImage('assets/places/bekalfort.png'),
                                  child: InkWell(
                                    onTap: () {},
                                  ),
                                  height: 240,
                                  fit: BoxFit.cover),
                              const Text(
                                'Bekal Fort',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 24),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Text(
                              'Bekal Fort was built by Shivappa Nayaka of Keladi in 1650 AD, at Bekal. It is the largest fort in Kerala, spreading over 40 acres (160,000 m2).',
                              style: TextStyle(
                                  color: Colors.black87, fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  //Kannur

                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Card(
                      clipBehavior: Clip.antiAlias,
                      elevation: 10,
                      shadowColor: Colors.black,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24)),
                      child: Column(
                        children: [
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Ink.image(
                                  image: AssetImage(
                                      'assets/places/muzhuppilangadubeach.png'),
                                  child: InkWell(
                                    onTap: () {},
                                  ),
                                  height: 240,
                                  fit: BoxFit.cover),
                              Text(
                                'Muzhappilangad Beach',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 24),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Text(
                              'Muzhappilangad Drive-in Beach (5.5 km length) is a beach on the Malabar Coast in the state of Kerala in southwestern India. It is located parallel to National Highway 66 (formerly National Highway 17) between Kannur and Thalassery.',
                              style: TextStyle(
                                  color: Colors.black87, fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  //Wayanad

                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Card(
                      clipBehavior: Clip.antiAlias,
                      elevation: 10,
                      shadowColor: Colors.black,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24)),
                      child: Column(
                        children: [
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Ink.image(
                                  image: AssetImage(
                                      'assets/places/edakkalcaves.png'),
                                  child: InkWell(
                                    onTap: () {},
                                  ),
                                  height: 240,
                                  fit: BoxFit.cover),
                              Text(
                                'Edakkal Caves ',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 24),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Text(
                              'Edakkal Caves are two natural caves at a remote location at Edakkal, 25 km (15.5 mi) from Kalpetta in the Wayanad district of Kerala in India\'s Western Ghats. They lie 1,200 m (3,900 ft) above sea level on Ambukutty Mala, near an ancient trade route connecting the high mountains of Mysore to the ports of the Malabar coast.',
                              style: TextStyle(
                                  color: Colors.black87, fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  //Kozhikode

                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Card(
                      clipBehavior: Clip.antiAlias,
                      elevation: 10,
                      shadowColor: Colors.black,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24)),
                      child: Column(
                        children: [
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Ink.image(
                                  image:
                                      AssetImage('assets/places/beypore.png'),
                                  child: InkWell(
                                    onTap: () {},
                                  ),
                                  height: 240,
                                  fit: BoxFit.cover),
                              Text(
                                'Beypore',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 24),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Text(
                              'Beypore or Beypur is an ancient port town and a locality town in Kozhikode district in the state of Kerala, India. It is located opposite to Chaliyam, the estuary where the river Chaliyar empties into Arabian Sea. Beypore is part of Kozhikode Municipal Corporation.',
                              style: TextStyle(
                                  color: Colors.black87, fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  //Malappuram

                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Card(
                      clipBehavior: Clip.antiAlias,
                      elevation: 10,
                      shadowColor: Colors.black,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24)),
                      child: Column(
                        children: [
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Ink.image(
                                  image: AssetImage(
                                      'assets/places/teakmuseum.png'),
                                  child: InkWell(
                                    onTap: () {},
                                  ),
                                  height: 240,
                                  fit: BoxFit.cover),
                              Text(
                                'Teak Museum',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 24),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Text(
                              'Teak Museum is located 4 km from Nilambur, a town in the Malappuram district of Kerala, South India. Teak occurs naturally in India with the main teak forests found in Kerala.',
                              style: TextStyle(
                                  color: Colors.black87, fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  //Palakkad

                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Card(
                      clipBehavior: Clip.antiAlias,
                      elevation: 10,
                      shadowColor: Colors.black,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24)),
                      child: Column(
                        children: [
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Ink.image(
                                  image: AssetImage(
                                      'assets/places/malampuzhadam.png'),
                                  child: InkWell(
                                    onTap: () {},
                                  ),
                                  height: 240,
                                  fit: BoxFit.cover),
                              Text(
                                'Malampuzha Dam',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 24),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Text(
                              'Malampuzha Dam is one of the largest dams and reservoirs in Kerala, located near Palakkad, in the state of Kerala in South India, built post independence by the then Madras state. Situated in the scenic hills of the Western Ghats in the background it is a combination of a masonry dam with a length of 1,849 metres and an earthen dam with a length of 220 metres making it the longest dam in the state.',
                              style: TextStyle(
                                  color: Colors.black87, fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  //Thrissur

                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Card(
                      clipBehavior: Clip.antiAlias,
                      elevation: 10,
                      shadowColor: Colors.black,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24)),
                      child: Column(
                        children: [
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Ink.image(
                                  image: AssetImage(
                                      'assets/places/athirapally.png'),
                                  child: InkWell(
                                    onTap: () {},
                                  ),
                                  height: 240,
                                  fit: BoxFit.cover),
                              Text(
                                'Athirappilly ',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 24),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Text(
                              'Athirappilly Falls, is situated in Athirappilly Panchayat in Chalakudy Taluk of Thrissur District in Kerala, India on the Chalakudy River, which originates from the upper reaches of the Western Ghats at the entrance to the Sholayar ranges. It is the largest waterfall in Kerala, which stands tall at 80 feet.',
                              style: TextStyle(
                                  color: Colors.black87, fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  //Ernakulam

                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Card(
                      clipBehavior: Clip.antiAlias,
                      elevation: 10,
                      shadowColor: Colors.black,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24)),
                      child: Column(
                        children: [
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Ink.image(
                                  image:
                                      AssetImage('assets/places/fortkochi.png'),
                                  child: InkWell(
                                    onTap: () {},
                                  ),
                                  height: 240,
                                  fit: BoxFit.cover),
                              Text(
                                'Fort Kochi',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 24),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Text(
                              'Fort Kochi, Fort Cochin in English, Cochim de Baixo ("Lower Kochi") in Cochin Portuguese creole, is a locality in the Cochin district of Kerala, India. The locality is 16 km away from Cochin city and takes its name from Fort Manuel of Cochin, the first European fort on Indian soil, annexed into the Portuguese East Indies.',
                              style: TextStyle(
                                  color: Colors.black87, fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  //Idukki

                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Card(
                      clipBehavior: Clip.antiAlias,
                      elevation: 10,
                      shadowColor: Colors.black,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24)),
                      child: Column(
                        children: [
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Ink.image(
                                  image: AssetImage('assets/places/munnar.png'),
                                  child: InkWell(
                                    onTap: () {},
                                  ),
                                  height: 240,
                                  fit: BoxFit.cover),
                              Text(
                                'Munnar',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 24),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Text(
                              'Munnar, is a town and hill station on Western Ghats mountain ranges located in the Idukki district of the southwestern Indian state of Kerala. Munnar is situated at around 1,600 metres (5,200 ft) above mean sea level, in the Western Ghats mountain range. Munnar is also called the "Kashmir of South India" and is a popular honeymoon destination..',
                              style: TextStyle(
                                  color: Colors.black87, fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  //Kottayam

                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Card(
                      clipBehavior: Clip.antiAlias,
                      elevation: 10,
                      shadowColor: Colors.black,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24)),
                      child: Column(
                        children: [
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Ink.image(
                                  image:
                                      AssetImage('assets/places/kumarakam.png'),
                                  child: InkWell(
                                    onTap: () {},
                                  ),
                                  height: 240,
                                  fit: BoxFit.cover),
                              Text(
                                'Kumarakom',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 24),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Text(
                              'Kumarakom is a popular tourism destination located near the city of Kottayam (10 kilometres (6 mi)), in Kerala, India, famous for its backwater tourism. It is set in the backdrop of the Vembanad Lake, the largest lake in the state of Kerala.',
                              style: TextStyle(
                                  color: Colors.black87, fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  //Alappuzha

                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Card(
                      clipBehavior: Clip.antiAlias,
                      elevation: 10,
                      shadowColor: Colors.black,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24)),
                      child: Column(
                        children: [
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Ink.image(
                                  image:
                                      AssetImage('assets/places/kuttanadu.png'),
                                  child: InkWell(
                                    onTap: () {},
                                  ),
                                  height: 240,
                                  fit: BoxFit.cover),
                              Text(
                                'Kuttanad',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 24),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Text(
                              'Kuttanad is a region covering the Alappuzha, Kottayam and Pathanamthitta Districts, in the state of Kerala, India, well known for its vast paddy fields and geographical peculiarities. The region has the lowest altitude in India, and is one of the few places in the world where farming is carried on around 1.2 to 3.0 metres (4 to 10 ft) below sea level.',
                              style: TextStyle(
                                  color: Colors.black87, fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  //Pathanamthitta

                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Card(
                      clipBehavior: Clip.antiAlias,
                      elevation: 10,
                      shadowColor: Colors.black,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24)),
                      child: Column(
                        children: [
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Ink.image(
                                  image: AssetImage('assets/places/gavi.png'),
                                  child: InkWell(
                                    onTap: () {},
                                  ),
                                  height: 240,
                                  fit: BoxFit.cover),
                              Text(
                                'Gavi',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 24),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Text(
                              'Gavi is a village in Pathanamthitta district, Kerala, India. It is located 28 km southwest of Vandiperiyar, a town in Idukki on N.H 220, the highway connecting Kollam and Madurai.',
                              style: TextStyle(
                                  color: Colors.black87, fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  //Kollam

                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Card(
                      clipBehavior: Clip.antiAlias,
                      elevation: 10,
                      shadowColor: Colors.black,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24)),
                      child: Column(
                        children: [
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Ink.image(
                                  image: AssetImage(
                                      'assets/places/ashtamudilake.png'),
                                  child: InkWell(
                                    onTap: () {},
                                  ),
                                  height: 240,
                                  fit: BoxFit.cover),
                              Text(
                                'Ashtamudi Lake',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 24),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Text(
                              'Ashtamudi Lake (Ashtamudi Kayal), in the Kollam District of the Indian state of Kerala, is the most visited backwater and lake in the state. It possesses a unique wetland ecosystem and a large palm-shaped (also described as octopus-shaped) water body, second only in size to the Vembanad estuary ecosystem of the state.',
                              style: TextStyle(
                                  color: Colors.black87, fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  //Trivandrum

                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Card(
                      clipBehavior: Clip.antiAlias,
                      elevation: 10,
                      shadowColor: Colors.black,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24)),
                      child: Column(
                        children: [
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Ink.image(
                                  image:
                                      AssetImage('assets/places/kovalam.png'),
                                  child: InkWell(
                                    onTap: () {},
                                  ),
                                  height: 240,
                                  fit: BoxFit.cover),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Kovalam',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 24),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Text(
                              'Kovalam is a region situated within the city of Trivandrum. Located around 13 km southwest of the city center, Kovalam is famous for its world famous beaches.',
                              style: TextStyle(
                                  color: Colors.black87, fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 60,
                  )
                ],
              ),
              Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    decoration: BoxDecoration(
                      color: primaryColor, 
                      boxShadow: [
                      BoxShadow(
                          blurRadius: 20,
                          color: Colors.black87,
                          offset: Offset.zero)
                    ]),
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children:  [
                        IconButton(onPressed: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => Venues()));
                        }, 
                        icon: const Icon(
                          Icons.location_on,
                          color: Colors.white,
                        )),
                        Container(                
                      width: 20,
                  height: 35,
                  child: Stack(
                    children: <Widget>[
                      IconButton(
                         onPressed:() {
                           Navigator.of(context).push(MaterialPageRoute(builder: (context) => Notifications()));
                         },
                         icon: Icon(Icons.notifications_active,
                         color: Colors.white,
                      ),
                      ),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    width: 19,
                    height: 19,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.red
                    ),
                    child:const Center(
                      child: Text('99+',
                      style: TextStyle(
                         color: Colors.white,
                         fontSize: 10),),
                    ),
                  ),
                ),
                    ],
                  ),
                ),
                        IconButton(
                          onPressed:(){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => Favourites()));
                          },
                          icon:Icon(Icons.favorite,
                          color: Colors.white,
                        ),),
                        IconButton(
                          onPressed:(){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => Settings()));
                          },
                          icon:Icon(Icons.settings,
                          color: Colors.white,
                        ),),
                      ],
                    ),
                  )
                  )
            ],
          ),
        ));
  }

}
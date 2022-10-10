// import 'dart:js';

import 'package:flutter/material.dart';
import 'photo_details.dart';


List<ImageDetails> _images = [
  ImageDetails(imagePath: 'assets/gallery/Kathakali.jpg',
  title: "Kathakali",
  details: 'Amongst the most famous dance forms in Kerala, Kathakali is a renowned Kerala dance that is famous all across the world and performed by many artists at various occasions. Kathakali originated about 500 years ago in Kerala and combines music, art, design.'),
   ImageDetails(imagePath: 'assets/gallery/Onam.jpg',
  title: "Onam",
  details: 'Onam is an annual Hindu harvest festival celebrated in the Indian state of Kerala. A major annual event for Keralites, it is the official festival of the state and includes a spectrum of cultural events. Drawing from Hindu legends, Onam commemorates King Mahabali and Vamana.'),
  ImageDetails(imagePath: 'assets/gallery/Mohiniattam.jpg',
  title: "Mohiniyattam",
  details: 'Mohiniyattam is a very graceful form of dance that is performed by women and it involves lots of eye movement, and graceful movements that will enchant you. The Mohiniyattam dance is the most famous classical dance form in Kerala . '),
  ImageDetails(imagePath: 'assets/gallery/Chenda Melam.jpg',
  title: "Chenda Melam",
  details: 'A "Chenda Melam" means percussion using Chenda. The Chenda is used as a percussion instrument for almost all Kerala art forms like Kathakali, Kodiyattam, Theyyam etc. Chenda melam is the most popular form in Kerala, for more than 300 years.'),
  ImageDetails(imagePath: 'assets/gallery/margam-kali.jpg',
  title: "Margamkali",
  details: 'One of the ancient kerala dance forms that is very popular in Kerala and prevalent amongst the Syrian Christians of Kerala, it is performed by men on festivals and important occasions, especially during wedding ceremonies.'),
  ImageDetails(imagePath: 'assets/gallery/Oppana.jpg',
  title: "Oppana",
  details: 'Oppana dance form is specifically performed in the Muslim community of Kerala. The Oppana dance form is very essential to the wedding ceremonies and festivities of the Muslim community, especially in the Malabar region of Kerala.'),
  ImageDetails(imagePath: 'assets/gallery/Thrissur-Pooram-festival-of-Gods-own-country.jpg',
  title: "Thrissur Pooram",
  details: 'The Thrissur Pooram is an annual temple festival held in Thrissur, Kerala, India. It is held at the Vadakkunnathan (Shiva) Temple in Thrissur every year on the Pooram day—the day when the moon rises with the Pooram star in the Malayalam Calendar month of Medam. '),
  ImageDetails(imagePath: 'assets/gallery/Thirvathirakali.jpg',
  title: "Thirvathirakali",
  details: 'A popular dance form in Kerala that is often performed by a group of women in a circular movement during the harvest festival of Onam. It is performed by women in order to attain an everlasting marital bliss.'),
  ImageDetails(imagePath: 'assets/gallery/Kolkali.jpg',
  title: "Kolkali",
  details: 'Kolkali is a particular dance form that involves 24 performers of the farming community. It is usually performed using wooden sticks where dancers move along in circles tapping the wooden sticks that are two feet long.'),
  ImageDetails(imagePath: 'assets/gallery/Rain_in_Kerala.jpg',
  title: "Monsoon",
  details: 'Mansoon is a very good season which is welcomed by all with great happiness. The word mansoon itself brings a smile on everyone\'s face. The factors that make monsoon the favourite season is the splashing waters, intoxicating smell of the wet earth etc.'),
  ImageDetails(imagePath: 'assets/gallery/Ottamthullal.jpg',
  title: "Ottamthullal",
  details: 'Originated in the 18th century, it has become a popular kerala dance form since then. Decked in vibrant costumes and loud make-up, the dancers perform Ottamthullal with hand movements and eye movements as a form of expression.'),
  ImageDetails(imagePath: 'assets/gallery/kalaripayattu.jpg',
  title: "Kalaripayattu",
  details: 'Kalaripayattu, also known simply as Kalari, is an Indian martial art that originated in modern-day Kerala, a state on the southwestern coast of India. Kalaripayattu is known for its long-standing history within Indian martial arts.'),
  ImageDetails(imagePath: 'assets/gallery/koodiyattam.jpg',
  title: "Koodiyattam",
  details: 'A popular kerala dance form, it is often performed in temples. This dance form involves many musical instruments that are also elements of Kuzhitalam, Conch, Kurumkuzhal and , Mizhavu.'),
  ImageDetails(imagePath: 'assets/gallery/Maramadi_dravidian_sports.jpg',
  title: "Maramadi",
  details: 'Maramadi is a type of cattle race conducted in Indian state Kerala. It also known as Kalappoottu, or pothottam. The race is a traditional event, usually with bullocks, held after the monsoon but before the cattle are needed for planting.'),
  ImageDetails(imagePath: 'assets/gallery/Chakyar Koothu.jpg',
  title: "Chakyar Koothu",
  details: 'An ancient Kerala dance form, it was introduced by the early Aryans, it is an orthodox type of performance that is performed by the Chakyar caste.'),
  ImageDetails(imagePath: 'assets/gallery/The-Cochin-Carnival.jpg',
  title: "Cochin Carnival",
  details: 'Cochin Carnival is an entertainment event held every year in the last week of December at Fort Kochi in the city of Kochi, Kerala. This event is held mostly during the last two weeks of December and finally ends on 1 January.'),
  ImageDetails(imagePath: 'assets/gallery/Theyyam.jpg',
  title: "Theyyam",
  details: 'Theyyam is the dance of gods that is popular in Malabar region in Kerala.  There are about 456 types of Theyyam in Kerala. '),
  ImageDetails(imagePath: 'assets/gallery/Pulikali.jpg',
  title: "Puli Kali",
  details: 'Pulikkali is a recreational folk art from the state of Kerala, India. It is performed by trained artists to entertain people on the occasion of Onam, an annual harvest festival, celebrated mainly in the Indian state of Kerala'),
  ImageDetails(imagePath: 'assets/gallery/Boat_race_chundan.jpg',
  title: "Vallam kali",
  details: 'Vallam kali is a traditional boat race in Kerala, India. It is a form of canoe racing, and uses paddled war canoes. It is mainly conducted during the season of the harvest festival Onam in spring.'),
  ImageDetails(imagePath: 'assets/gallery/Beemapally Uroos.jpg',
  title: "Beemapally Uroos",
  details: 'The annual Uroos at the Beemapally Dargah Shareef in Thiruvananthapuram is celebrated to commemorate the death anniversary of Beema Beevi and remember her deeds. The 11-day festival commences at the beginning of Jama dul Akbar of the Hijra calendar.'),
  ImageDetails(imagePath: 'assets/gallery/attukal_ponkala.jpg',
  title: "Attukal Pongala",
  details: 'Attukal Pongala is a 10-day religious festival celebrated at the Attukal Bhagavathy Temple in Thiruvananthapuram in the Indian state of Kerala. On the ninth day there is a huge gathering of millions of women on the temple surroundings.'),
  
 
];
class Photos extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.green,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: (){
            Navigator.of(context).pop();
          },
        ),
      ),
      backgroundColor: Colors.green,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 40,
            ),
            Text('Gallery',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w600,
              color: Colors.white
            ),
            textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 40,
            ),
            Expanded(child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 30),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))
              ),
              child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10
              ), itemBuilder: (context, index){
                return RawMaterialButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => PhotoDetails(
                      imagePath: _images[index].imagePath,
                      title: _images[index].title,
                      details: _images[index].details,
                      index: index,
                    )
                    )
                    );
                  },
                  child: Hero(
                    tag: 'logo$index',
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: AssetImage(_images[index].imagePath),
                          fit: BoxFit.cover,
                        )
                      ),
                    ),
                  ),
                  );
              },itemCount: _images.length,
              ),
              ),
              ),
          ],
        ),),
    );
  }
}

class ImageDetails {
  final String imagePath;
  // final String price;
  // final String photographer;
  final String title;
  final String details;

  ImageDetails({required this.imagePath,required this.title,required this.details});
}
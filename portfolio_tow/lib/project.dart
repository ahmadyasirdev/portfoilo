import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyProject extends StatefulWidget {
  const MyProject({super.key});

  @override
  State<MyProject> createState() => _MyProjectState();
}


class _MyProjectState extends State<MyProject> {
  myPro(lang ,title , desc,star){
    return   Container(
      height: 220,
      width: MediaQuery.of(context).size.width* 0.9,

      child: Card(
        color: Color(0xff262628),
        child: Container(
          margin: EdgeInsets.only(left: 20,right: 10,top: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(lang,style: TextStyle(color: Colors.white,fontSize: 18),),
              SizedBox(height: 15,),
              Text(title,style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
              SizedBox(height: 3,),
              Text(desc,style: TextStyle(color: Colors.white,fontSize: 16,),),
              SizedBox(height: 10,),
              Row(
                children: [
                  Icon(Icons.star,color: Colors.white70,size: 18,),
                  SizedBox(width: 4,),
                  Text(star,style: TextStyle(color: Colors.white70),),
                  Expanded(child: Container()),
                  IconButton(onPressed: (){}, icon: Icon(
                    FontAwesomeIcons.github,
                    color: Colors.white,
                  ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Color(0xff252525),
        title: Text('Projects',style: TextStyle(color: Colors.white),),
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             myPro('Flutter', 'Doctor App', '"Swift health solutions at fingertips."', '10'),
              myPro('Flutter', 'Coffe App', "Bold brews, cozy moments shared.", '11'),
              myPro('Flutter', 'New App', '"Effortless joy in every tap.', '12'),
              myPro('Flutter', 'Weather App', '"Forecasting your perfect day."', '13'),
              myPro('Flutter', 'Ecommerce App','14'
              "Shop, save, indulge seamlessly.", '15'),
              myPro('Flutter', 'Lottery App', "Winning dreams at your fingertips.", '16'),
              myPro('Flutter', 'WhatsApp App', '"Connect instantly, share life effortlessly."', '17'),
              myPro('Flutter', 'Notes App', "Capture, organize, remember with ease.", '18'),
              myPro('Flutter', 'Shopping App',"Browse, click, shop, delight delivered.", '19'),

            ],
          ),
        ),
      ),
    );
  }
}

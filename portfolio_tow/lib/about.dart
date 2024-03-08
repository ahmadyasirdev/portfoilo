import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Colors.black,
      extendBodyBehindAppBar: false,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        child: Stack(
          children: [
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 50),
              height: MediaQuery.of(context).size.height* .6,
              child: ShaderMask(
                  shaderCallback: (rect){
                    return LinearGradient(
                        begin: Alignment.center,
                        end: Alignment.bottomCenter,
                        colors:[Colors.black,Colors.transparent]).createShader(Rect.fromLTRB(0, 0, rect.width, rect.height));
                  },
                  blendMode: BlendMode.dstIn,
                  child: Image.asset('assets/fore.png',fit: BoxFit.contain,)),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.55),
              child: Column(
                children: [
                  Text('Hello I am ',style: TextStyle(color: Colors.white ,fontSize: 30),),
                  Text('Ahmad Yasirdev',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),),
                  SizedBox(height: 2,),
                  Text('Flutter Developer',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.normal),),
                  SizedBox(height: 20,),
                  SizedBox(
                    width: 120,
                      child: TextButton(onPressed: (){}, child: Text('Hire Me'),style: TextButton.styleFrom(backgroundColor: Colors.white,primary: Colors.black),)),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(onPressed: (){

                      }, icon: Icon(
                      FontAwesomeIcons.facebook,color: Colors.white,
                      )),
                      IconButton(onPressed: (){}, icon: Icon(
                        FontAwesomeIcons.github,color: Colors.white,
                      )),
                      IconButton(onPressed: (){}, icon: Icon(
                        FontAwesomeIcons.linkedin,color: Colors.white,
                      ))
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

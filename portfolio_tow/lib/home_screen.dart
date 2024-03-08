import 'package:flutter/material.dart';
import 'package:flutter_sliding_box/flutter_sliding_box.dart';

import 'package:portfolio_tow/first_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  myAchiev(num,type){
return  Row(
  children: [
    Text(num,style: TextStyle(fontSize:30,fontWeight: FontWeight.bold ),),
    Container(
      margin: EdgeInsets.only(top: 10),
      child:   Text(type),
    )

  ],
);
  }
  mySpec(icon,tech){
    return  Container(
      height: 105,
      width: 115,
      child: Card(
        margin: EdgeInsets.all(0),
        color: Color(0xff252525),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15)
        ),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon,color: Colors.white70,),
              SizedBox(height: 10,),
              Text(tech,style: TextStyle(color: Colors.white,fontSize: 16),),
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
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.black,

        leading: PopupMenuButton(
          color: Colors.black,
          icon: Icon(Icons.menu,color: Colors.white,),
          itemBuilder: (context)=>[
            PopupMenuItem(child: TextButton(
              child: Text('Projects',style: TextStyle(color: Colors.white),),
              onPressed: (){
                Navigator.pushNamed(context, 'project');
              },
            ),value: 1,),

            PopupMenuItem(child: TextButton(
              child: Text('About Me',style: TextStyle(color: Colors.white),),
              onPressed: (){
                Navigator.pushNamed(context, 'About');
              },
            ),value: 2,),
          ],
        ),
      ),

      body: Scaffold(
        body: SlidingBox(
          minHeight: 300,
          maxHeight: 300,
          borderRadius: BorderRadius.circular(50),
          body:Container(
            margin: EdgeInsets.only(left: 20,right: 20,top: 15),
            height: 500,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    myAchiev('60', 'Projects'),
                    myAchiev('40', 'Cliends'),
                    myAchiev('38', 'Massages'),

                  ],
                ),
                SizedBox(height: 10,),
                Text('Specialized In ',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                SizedBox(height: 10,),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      mySpec(Icons.android, 'Android'),
                        mySpec(Icons.android, 'Android'),
                        mySpec(Icons.android, 'Android')
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        mySpec(Icons.android, 'Android'),
                        mySpec(Icons.android, 'Android'),
                        mySpec(Icons.android, 'Android')
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        mySpec(Icons.android, 'Android'),
                        mySpec(Icons.android, 'Android'),
                        mySpec(Icons.android, 'Android')
                      ],
                    ),

                  ],
                )
              ],
            ),
          ),
          backdrop: Backdrop(
            color: Colors.black,
            body: FirstScreen()

          ),
        ),
      )




      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

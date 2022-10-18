import 'dart:math';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _url = Uri.parse('https://github.com/HarshGupta0');
final Uri _url1 = Uri.parse('https://www.linkedin.com/in/harsh-gupta-266639229/');
final Uri _url2 =Uri.parse('https://www.instagram.com/_harshh_here/');

void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(


      debugShowCheckedModeBanner: false,
      title: 'checking the routes',
      home: Route0(),
    );
  }
}
class Route0 extends StatefulWidget {
  const Route0({Key? key}) : super(key: key);

  @override
  State<Route0> createState() => _Route0State();
}

class _Route0State extends State<Route0> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:Container(
            margin: EdgeInsets.only(left: 50.0),
            child: Text('Starting page',
              style: TextStyle(
                color: Colors.blueGrey,
                fontFamily: 'Lora'
              ),
            ),
          ),
          bottomOpacity: 1,
          backgroundColor: Colors.blue.shade100,
          elevation: (0.8),

        ),
        drawer: Drawer(
          backgroundColor: Colors.blue.shade100,
          child: Column(
            children: [
              ListTile(
                leading:Text('TEXT 1',
                  style: TextStyle(
                    fontFamily: 'Lora',
                        fontSize: 30,
                  ),

                ),
              ),
              Divider(height: 10,),
              ListTile(
                leading:Text('TEXT 2',
                  style: TextStyle(
                    fontFamily: 'Lora',
                    fontSize: 30,
                  ),

                ),
              )
            ],
          ),


        ),
        backgroundColor: Colors.blue.shade50,
        bottomNavigationBar:SingleChildScrollView(

          child: Container(
            height: 70.0,
            decoration: BoxDecoration(
              color: Colors.blue.shade100,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child:Column(
                children: [
                          SizedBox(height: 5.0,),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        IconButton(
                          onPressed: (){
                            Navigator.push(context,MaterialPageRoute(
                                builder:(context)=>RouteA()
                            ));
                          },
                          icon: Icon(
                            Icons.home_outlined,
                            color: Colors.white,
                            size: 35,
                          ),
                        ),
                        IconButton(
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(
                                  builder:(context)=>RouteB()));
                            },
                            icon: Icon(
                              Icons.work_history_outlined,
                              color: Colors.white,
                              size: 35,
                            )),
                        IconButton(
                            onPressed: (){
                              Navigator.push(context,MaterialPageRoute
                                (
                                builder: (context)=>RouteC(),
                              )
                              );
                            },
                            icon: Icon(
                              Icons.school_outlined,
                              color:Colors.white,
                              size: 35,
                            )),
                        IconButton(
                            onPressed: (){
                              Navigator.push(context,MaterialPageRoute
                                (
                                builder: (context)=>RouteD(),
                              )
                              );
                            },
                            icon: Icon(
                              Icons.sports_esports,
                              color:Colors.white,
                              size: 35,
                            ))

                      ],
                    ),
                  ),

                   ]
              ),
            ),
          ),
        body: Center(
          child: Container(
            child: SingleChildScrollView(
              child: Stack(
                children: [

                  Column(
                    children:[
                      Container(
                        margin: EdgeInsets.only(top: 40),
                        child: Text('Hey There!',
                          style: TextStyle(
                            fontSize: 30.0,
                            color:Colors.blueGrey,
                            fontFamily: 'Montserrat',
                          ),),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.blueGrey,
                            borderRadius: BorderRadius.all(Radius.circular(110)),

                          boxShadow: [
                            BoxShadow(
                              color: Colors.blueGrey,
                              offset: Offset(3,3),
                              blurRadius: 5.0,
                              spreadRadius: 3.0,
                            ),
                          ]
                        ),
                        child: CircleAvatar(
                          radius: 100,
                          backgroundImage:AssetImage('images/avtarphoto.png'),

                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Container(
                        height: 220,
                        width: 400,

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Colors.grey.shade100,
                          boxShadow: [
                        BoxShadow(
                          offset: const Offset(
                            3.0,
                            3.0,
                          ),
                          blurRadius: 5.0,
                          spreadRadius: 2.0,
                        ), //BoxShadow
                        BoxShadow(
                          color: Colors.blueGrey,
                          offset: const Offset(0.0, 0.0),
                          blurRadius: 1.0,
                          spreadRadius: 2.0,
                        ),
                         ]//BoxShadow
                        ),
                        margin: EdgeInsets.only(left: 50,right: 50),
                        padding: EdgeInsets.only(top: 20,left: 10,right: 10),
                        child: Text('Hey This Is My PORTFOLIO App Do check out All the Icons Below For More Infomation '
                            'and I have a Game For You :)',
                          style: TextStyle(
                            color: Colors.blueGrey,
                            fontFamily: 'Monterrat',
                            fontSize: 25,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      );

  }
}

class RouteA extends StatefulWidget {
  const RouteA({Key? key}) : super(key: key);

  @override
  State<RouteA> createState() => _RouteAState();
}

class _RouteAState extends State<RouteA> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      bottomNavigationBar:SingleChildScrollView(

        child: Container(
          height: 70.0,
          decoration: BoxDecoration(
            color: Colors.blue.shade100,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child:Column(
              children: [
                SizedBox(height: 5.0,),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                        onPressed: (){
                          Navigator.push(context,MaterialPageRoute(
                              builder:(context)=>RouteA()
                          ));
                        },
                        icon: Icon(
                          Icons.home_filled,
                          color: Colors.white,
                          size: 35,
                        ),
                      ),
                      IconButton(
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(
                                builder:(context)=>RouteB()));
                          },
                          icon: Icon(
                            Icons.work_history_outlined,
                            color: Colors.white,
                            size: 35,
                          )),
                      IconButton(
                          onPressed: (){
                            Navigator.push(context,MaterialPageRoute
                              (
                              builder: (context)=>RouteC(),
                            )
                            );
                          },
                          icon: Icon(
                            Icons.school_outlined,
                            color:Colors.white,
                            size: 35,
                          )),
                      IconButton(
                          onPressed: (){
                            Navigator.push(context,MaterialPageRoute
                              (
                              builder: (context)=>RouteC(),
                            )
                            );
                          },
                          icon: Icon(
                            Icons.sports_esports,
                            color:Colors.white,
                            size: 35,
                          ))

                    ],
                  ),
                ),

              ]
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.blue.shade100,
        title: Center(
          child: Text('ABOUT PAGE',
            style: TextStyle(
                color: Colors.blue.shade50,
                fontFamily: 'Lora'

            ),),
        ),
        elevation: (.5),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 15,),
              Container(
                decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.all(Radius.circular(110)),

                    boxShadow: [
                      BoxShadow(
                        color: Colors.blueGrey,
                        offset: Offset(3,3),
                        blurRadius: 5.0,
                        spreadRadius: 3.0,
                      ),
                    ]
                ),
                child: CircleAvatar(backgroundImage:AssetImage('images/photo2.png'),
                  radius: (100),),
              ),
              SizedBox(height: 10,),
              Text("I am Harsh",
                style:TextStyle(
                  color: Colors.blueGrey.shade400,
                  fontFamily: 'Lora',
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                ),
              ),
              SizedBox(height: 20,),
              Container(

                width: 390.0,
                padding: EdgeInsets.only(left: 20,top: 10,bottom: 10,right: 10),
                decoration: BoxDecoration(
                  color:Colors.blueGrey.shade50,
                  borderRadius:(BorderRadius.circular(30)),
                  boxShadow:[
                    BoxShadow(

                      offset:const Offset(3,3),
                      spreadRadius: 4,
                      blurRadius: 3,
                      color: Colors.blueGrey,
                    ),
                  ]

                ),
                margin: EdgeInsets.symmetric(vertical: 10.0,
                    horizontal: 25.0),
                child: Text(
                  'I am a Learner ,Problem Solver, and Currently I am working on Flutter Development,and '
                      'I have learnt some basics of HTML, CSS and JS and I LOVE to do CP',
                  style:TextStyle(
                    color: Colors.blueGrey,
                    fontFamily: 'Montserrat',
                    fontSize:25.0,
                  ),
                ),
              ),
              SizedBox(height: 30,),
              Card(
                color: Colors.blue.shade100,
                margin: EdgeInsets.symmetric(
                  horizontal: 20.0, ),
                child: ListTile(
                  leading:IconButton(
                    icon: Icon
                      (
                        Icons.phone_android_rounded
                    ),
                    onPressed:_launchUrl,
                    color: Colors.blueGrey,
                  ),
                  title: Text(
                    '+91-8505063481',
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 22.0,
                      fontFamily: 'Lora',
                      fontWeight: FontWeight.bold

                    ),
                  ),
                ),
              ),
              Card(
                color: Colors.blue.shade100,
                margin: EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
                child: ListTile(
                  leading: IconButton(
                    onPressed:_launchUrl,
                    icon:Icon
                      (
                      Icons.mail,
                    ),
                    color: Colors.blueGrey,
                  ),
                  title: Text('Harsh123@gmail.com',
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontFamily: 'Lora',
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              Card(
                color: Colors.blue.shade100,
                margin: EdgeInsets.symmetric(horizontal: 20.0),
                child: ListTile(
                  leading: IconButton(
                    onPressed:launchUrl1,
                    icon:Icon(
                      Icons.link_sharp,
                    ),
                    color: Colors.blueGrey,
                  ),
                  title: Text('Linkdin/harsh01/',
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontFamily: 'Lora',
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              //
              SizedBox(height: 20,),
              Container(child: Center(child: Text('Hobbies',style: TextStyle(fontFamily: "Lora",fontSize: 30,color: Colors.blueGrey
              ,fontWeight: FontWeight.bold
              ),),),),
              SizedBox(height: 20,),
              Container(

                width: 390.0,
                padding: EdgeInsets.only(left: 20,top: 10,bottom: 10,right: 10),
                decoration: BoxDecoration(
                    color:Colors.blueGrey.shade50,
                    borderRadius:(BorderRadius.circular(30)),
                    boxShadow:[
                      BoxShadow(

                        offset:const Offset(3,3),
                        spreadRadius: 4,
                        blurRadius: 3,
                        color: Colors.blueGrey,
                      ),
                    ]

                ),
                margin: EdgeInsets.symmetric(vertical: 10.0,
                    horizontal: 25.0),
                child: Text(
                  'I Love to play out door Games like Football and Cricket, And I Also like to write poetry.',
                  style:TextStyle(
                    color: Colors.blueGrey,
                    fontFamily: 'Montserrat',
                    fontSize:25.0,
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                decoration: BoxDecoration(
                    color:Colors.white,
                    borderRadius:(BorderRadius.circular(30)),
                    boxShadow:[
                      BoxShadow(

                        offset:const Offset(3,3),
                        spreadRadius: 4,
                        blurRadius: 3,
                        color: Colors.blueGrey,
                      ),
                    ]

                ),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 60),
                      height: 80,
                      width: 80,
                      child: TextButton(onPressed:launchUrl2,
                          child: Image.asset('images/instalogo.png'),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      height: 80,
                      width: 80,
                      child: TextButton(onPressed:_launchUrl,
                        child: Image.asset('images/github.png'),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      height: 80,
                      width: 80,
                      child: TextButton(onPressed:launchUrl1,
                        child: Image.asset('images/linkedin.jfif'),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),

            ],

          ),
        ),
      ),
    );
  }
}
Future<void> _launchUrl() async {
  if (!await launchUrl(_url)) {
    throw 'Could not launch $_url';
  }
}
Future<void> launchUrl1() async{
  if (!await launchUrl(_url1)) {
    throw 'Could not launch $_url1';
  }
}
Future<void> launchUrl2() async{
  if (!await launchUrl(_url2)) {
    throw 'Could not launch $_url2';
  }
}
class RouteB extends StatefulWidget {
  const RouteB({Key? key}) : super(key: key);

  @override
  State<RouteB> createState() => _RouteBState();
}

class _RouteBState extends State<RouteB> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      bottomNavigationBar:SingleChildScrollView(

        child: Container(
          height: 70.0,
          decoration: BoxDecoration(
            color: Colors.blue.shade100,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child:Column(
              children: [
                SizedBox(height: 5.0,),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                        onPressed: (){
                          Navigator.push(context,MaterialPageRoute(
                              builder:(context)=>RouteA()
                          ));
                        },
                        icon: Icon(
                          Icons.home_outlined,
                          color: Colors.white,
                          size: 35,
                        ),
                      ),
                      IconButton(
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(
                                builder:(context)=>RouteB()));
                          },
                          icon: Icon(
                            Icons.work_history,
                            color: Colors.white,
                            size: 35,
                          )),
                      IconButton(
                          onPressed: (){
                            Navigator.push(context,MaterialPageRoute
                              (
                              builder: (context)=>RouteC(),
                            )
                            );
                          },
                          icon: Icon(
                            Icons.school_outlined,
                            color:Colors.white,
                            size: 35,
                          )),
                      IconButton(
                          onPressed: (){
                            Navigator.push(context,MaterialPageRoute
                              (
                              builder: (context)=>RouteD(),
                            )
                            );
                          },
                          icon: Icon(
                            Icons.sports_esports,
                            color:Colors.white,
                            size: 35,
                          ))

                    ],
                  ),
                ),

              ]
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.blue.shade100,
        title: Text('This is work page',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Lora',
          ),),
        elevation: (.5),
      ),
      body:Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 20.0,left: 40,bottom: 20),
                child: Text('WEB DEV:-',
                style: TextStyle(
                  fontSize: 35.0,
                  color: Colors.blueGrey,
                  fontFamily: 'Lora',
                  fontWeight: FontWeight.bold,
                ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.blueGrey.shade50,
                  borderRadius: (BorderRadius.circular(40)),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(3,3),
                      spreadRadius: 2,
                      blurRadius: 3,
                      color: Colors.blueGrey
                    ),
                  ]
                ),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 5.0),
                      height: 120,
                      width: 150,
                      child: Image.asset('images/js3.png'),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 30),
                      child: Text('JavaScript',
                        style: TextStyle(
                          color: Colors.blueGrey,
                          fontFamily: 'Lora',
                          fontSize: 25.0,
                        ),
                      ),
                    ),

                  ],
                ),
              ),
              SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.blueGrey.shade50,
                    borderRadius: (BorderRadius.circular(40)),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(3,3),
                          spreadRadius: 2,
                          blurRadius: 3,
                          color: Colors.blueGrey
                      ),
                    ]
                ),
                child: Row(
                  children: [

                    Container(
                      child: Image.asset('images/css_logo.webp'),
                      height:120,
                      width: 150,
                    ),
                    Container(
                      width: 150,
                      margin: EdgeInsets.only(left: 20),
                      child: Text('Cascading style sheet',
                      style: TextStyle(
                        fontSize: 25.0,
                        fontFamily: "Lora",
                        color: Colors.blueGrey,
                      ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.blueGrey.shade50,
                    borderRadius: (BorderRadius.circular(40)),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(3,3),
                          spreadRadius: 2,
                          blurRadius: 3,
                          color: Colors.blueGrey
                      ),
                    ]
                ),
                child: Row(
                  children: [
                    Container(
                      height: 120,
                      width: 130,
                      margin: EdgeInsets.only(left: 20),
                      child: Image.asset('images/html1.png'),
                    ),
                    Container(
                      width: 160,
                      margin: EdgeInsets.only(left: 20),
                      child: Text('Hyper text markup langauge',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                            color: Colors.blueGrey,
                        fontSize: 25,
                      ),
                      ),
                    )
                  ],
                ),
              ),
               SizedBox(height: 30,),
               Container(
                 child: Text('LANGAUGES',
                 style: TextStyle(
                   fontWeight: FontWeight.bold,
                   fontFamily: 'Lora',
                   fontSize: 30,
                   color: Colors.blueGrey,
                 ),
                 ),
               ),
              SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.blueGrey.shade50,
                    borderRadius: (
                        BorderRadius.circular(40)),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(3,3),
                          spreadRadius: 2,
                          blurRadius: 3,
                          color: Colors.blueGrey
                      ),
                    ]
                ),

                child: Row(
                  children: [
                    Container(
                      margin:EdgeInsets.only(left: 20),
                      child: Image.asset('images/langauge.png'),
                      height: 120,
                      width: 150,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 40),
                      child: Text('C/C++',
                      style: TextStyle(
                        fontSize: 25,
                        fontFamily: 'Lora',
                        color: Colors.blueGrey,
                      ),),
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),

    );
  }
}
class RouteC extends StatefulWidget {
  const RouteC({Key? key}) : super(key: key);

  @override
  State<RouteC> createState() => _RouteCState();
}

class _RouteCState extends State<RouteC> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:SingleChildScrollView(

        child: Container(
          height: 70.0,
          decoration: BoxDecoration(
            color: Colors.blue.shade100,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child:Column(
              children: [
                SizedBox(height: 5.0,),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                        onPressed: (){
                          Navigator.push(context,MaterialPageRoute(
                              builder:(context)=>RouteA()
                          ));
                        },
                        icon: Icon(
                          Icons.home_outlined,
                          color: Colors.white,
                          size: 35,
                        ),
                      ),
                      IconButton(
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(
                                builder:(context)=>RouteB()));
                          },
                          icon: Icon(
                            Icons.work_history_outlined,
                            color: Colors.white,
                            size: 35,
                          )),
                      IconButton(
                          onPressed: (){
                            Navigator.push(context,MaterialPageRoute
                              (
                              builder: (context)=>RouteC(),
                            )
                            );
                          },
                          icon: Icon(
                            Icons.school,
                            color:Colors.white,
                            size: 35,
                          )),
                      IconButton(
                          onPressed: (){
                            Navigator.push(context,MaterialPageRoute
                              (
                              builder: (context)=>RouteD(),
                            )
                            );
                          },
                          icon: Icon(
                            Icons.sports_esports,
                            color:Colors.white,
                            size: 35,
                          ))

                    ],
                  ),
                ),

              ]
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.blue.shade100,
        title: Text('Eduction Page',
          style: TextStyle(
            color: Colors.blueGrey,
            fontFamily: "Lora",
            fontWeight: FontWeight.bold,
          ),),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          color: Colors.blue.shade50,
          child: Column(
            children: [
              SizedBox(height: 50,),
              Container(

                width: 390.0,
                padding: EdgeInsets.only(left: 20,top: 10,bottom: 10,right: 10),
                decoration: BoxDecoration(
                    color:Colors.white,
                    borderRadius:(BorderRadius.circular(30)),
                    boxShadow:[
                      BoxShadow(

                        offset:const Offset(3,3),
                        spreadRadius: 4,
                        blurRadius: 3,
                        color: Colors.blueGrey,
                      ),
                    ]

                ),
                margin: EdgeInsets.symmetric(vertical: 10.0,
                    horizontal: 25.0),
                child: Text(
                  'I did my schooling till class 10th from Bright Land College LUCKNOW,'
                      'and then I went KOTA for JEE prepration and i did my 12th from kota ,Rajasthan. MY percentages are:-',
                  style:TextStyle(
                    color: Colors.blueGrey,
                    fontFamily: 'Montserrat',
                    fontSize:25.0,
                  ),
                ),
              ),
              Container(

                margin: EdgeInsets.only(top: 30,left: 20,right: 20),
                padding: EdgeInsets.only(top: 10,bottom: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.grey.shade100,
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(
                          2.0,
                          2.0,
                        ),
                        blurRadius: 3.0,
                        spreadRadius: 2.0,
                      ), //BoxShadow
                      BoxShadow(
                        color: Colors.blueGrey,
                        offset: const Offset(0.0, 0.0),
                        blurRadius: 10.0,
                        spreadRadius: 2.0,
                      ),
                    ]//BoxShadow
                ),

                child: Column(
                  children: [
                    Text('SCHOOLING:',
                      style: TextStyle(fontSize: 25,fontFamily: 'Lora',color: Colors.blueGrey),),
                    Row(
                      children: [
                        Container(
                            margin: EdgeInsets.only(top: 20,left: 60),
                            child:Text('HIGH SCHOOL :-',
                              style: TextStyle(fontFamily: "Lora",fontSize: 25,color: Colors.blueGrey),)),
                        Container(
                            margin: EdgeInsets.only(top: 20,left: 20),
                            child:Text('85%',
                              style: TextStyle(fontFamily: "Lora",fontSize: 25,color: Colors.blueGrey),)),
                      ],),
                    Row(
                      children: [
                        Container(
                            margin: EdgeInsets.only(top: 20,left: 60),
                            child:Text('INTERMIDIATE :-',
                              style: TextStyle(fontFamily: "Lora",fontSize: 25,color: Colors.blueGrey),)),
                        Container(
                            margin: EdgeInsets.only(top: 20,left: 20),
                            child:Text('83%',
                              style: TextStyle(fontFamily: "Lora",fontSize: 25,color: Colors.blueGrey),)),
                      ],),
                  ],
                ),),
              SizedBox(height: 50,),
              Container(

                width: 390.0,
                padding: EdgeInsets.only(left: 20,top: 10,bottom: 10,right: 10),
                decoration: BoxDecoration(
                    color:Colors.white,
                    borderRadius:(BorderRadius.circular(30)),
                    boxShadow:[
                      BoxShadow(

                        offset:const Offset(3,3),
                        spreadRadius: 4,
                        blurRadius: 3,
                        color: Colors.blueGrey,
                      ),
                    ]

                ),
                margin: EdgeInsets.symmetric(vertical: 10.0,
                    horizontal: 25.0),
                child: Text(
                  'Currently  I am pursuing B.Tech in Computer Science And Engineering from Ajay kumar Garg Engineering '
                      'College, Ghaziabad, My grades are:-',
                  style:TextStyle(
                    color: Colors.blueGrey,
                    fontFamily: 'Montserrat',
                    fontSize:25.0,
                  ),
                ),
              ),
              Container(

                margin: EdgeInsets.only(top: 30,left: 20,right: 20),
                padding: EdgeInsets.only(top: 10,bottom: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.grey.shade100,
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(
                          2.0,
                          2.0,
                        ),
                        blurRadius: 3.0,
                        spreadRadius: 2.0,
                      ), //BoxShadow
                      BoxShadow(
                        color: Colors.blueGrey,
                        offset: const Offset(0.0, 0.0),
                        blurRadius: 10.0,
                        spreadRadius: 2.0,
                      ),
                    ]//BoxShadow
                ),

                child: Column(
                  children: [
                    Text('COLLEGE :',
                      style: TextStyle(fontSize: 25,fontFamily: 'Lora',color: Colors.blueGrey),),
                    Row(
                      children: [
                        Container(
                            margin: EdgeInsets.only(top: 20,left: 60),
                            child:Text('Ist SEM  :-',
                              style: TextStyle(fontFamily: "Lora",fontSize: 25,color: Colors.blueGrey),)),
                        Container(
                            margin: EdgeInsets.only(top: 20,left: 20),
                            child:Text('8.85 scgpa',
                              style: TextStyle(fontFamily: "Lora",fontSize: 25,color: Colors.blueGrey),)),
                      ],),
                    Row(
                      children: [
                        Container(
                            margin: EdgeInsets.only(top: 20,left: 60),
                            child:Text('IInd SEM  :-',
                              style: TextStyle(fontFamily: "Lora",fontSize: 25,color: Colors.blueGrey),)),
                        Container(
                            margin: EdgeInsets.only(top: 20,left: 20),
                            child:Text('8.3 scgpa',
                              style: TextStyle(fontFamily: "Lora",fontSize: 25,color: Colors.blueGrey),)),
                      ],),
                  ],
                ),),
              SizedBox(height: 50,),
            ],

          ),
        ),
      ),
    );

  }
}
class RouteD extends StatefulWidget {
  const RouteD({Key? key}) : super(key: key);

  @override
  State<RouteD> createState() => _RouteDState();
}

class _RouteDState extends State<RouteD> {
  int Leftdice =1;
  int Rightdice=1;
  var leftscore=0;
  int leftmax=0;
  var rightscore=0;
  int rightmax=0;
  var won1=' ';
  var won2=' ';
  void Score(){
   if((leftmax<=10)&&(rightmax<=10))
     {
       if(Leftdice==Rightdice)
       {
         leftscore++;
         leftmax=leftscore;
         rightscore++;
         rightmax=rightscore;
       }
       if(Leftdice>Rightdice)
       {
         leftscore++;
         leftmax=leftscore;

       }
       else
       {
         rightscore++;
         rightmax=rightscore;

       }
     }
    if(rightmax>=10)
      {
        won1='PLAYER 2 WINS';
      }
    if(leftmax>=10)
      {
        won2='PLAYER 1 WINS';
      }
  }

  void ChangeDiceFace() {
    setState(() {
      Leftdice = Random().nextInt(6) + 1; //0-5 +1
      Rightdice = Random().nextInt(6) + 1; //for clicking on one buttoon to change
      // both the button.
    });
  }
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

        appBar: AppBar(
          title:Center(child: Text('DICE GAME')),
          backgroundColor: Colors.blue.shade200,
        ),
        backgroundColor: Colors.blue.shade100,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(top: 20,bottom: 20),
                child: Text('PLAYER 1:    $leftmax',style: TextStyle(color: Colors.white,fontSize: 30),),),
              Expanded(
                flex: (1),
                child:TextButton(
                  onPressed:  (){
                    ChangeDiceFace();
                   Score();
                  },
                  child:Image.asset('images/dice$Leftdice.png'),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20,bottom: 20),
                child: Text('PLAYER 2:    $rightmax ',style: TextStyle(color: Colors.white,fontSize: 30),),),
              Expanded(
                flex: (1),
                child:TextButton(
                  onPressed: (){
                    ChangeDiceFace();
                    Score();
                  },

                  child: Image.asset('images/dice$Rightdice.png'),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10,bottom: 10),
                child: Text('$won1 $won2',style:TextStyle(color: Colors.white,fontSize: 30,fontFamily: "Lora"),),
              ),

            ],
          ),
        ),
      ),

    );
  }
}

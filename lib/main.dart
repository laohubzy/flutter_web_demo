import 'package:flutter/material.dart';
// import 'dart:math';
// import 'package:flutter/painting.dart';
// void main() {}
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme ofR your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
    // return Container(
    //   decoration: BoxDecoration(
    //     gradient: LinearGradient(
    //       colors: <Color>[
    //         Color.fromRGBO(63, 43, 150, 1),
    //         Color.fromRGBO(168, 192, 255, 1),
    //       ],
    //       begin: Alignment.centerRight,
    //       end: Alignment.centerLeft,
    //     )
    //   ),
    //   child: Image.asset('images/live_beijing.png', fit: BoxFit.contain,),
    // );
    // return ConstrainedBox(
    //     constraints: BoxConstraints.expand(),
    //     child: Container(
    //       decoration: BoxDecoration(
    //         gradient: LinearGradient(
    //           colors: <Color>[
    //             Color.fromRGBO(63, 43, 150, 1),
    //             Color.fromRGBO(168, 192, 255, 1),
    //           ],
    //           begin: Alignment.centerRight,
    //           end: Alignment.centerLeft,
    //         )
    //       ),
    //       // Image.asset('images/live_beijing.png', fit: BoxFit.contain,),
          
    //       child: Box
    //     ),
    //   );
    
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      // appBar: AppBar(
      //   // Here we take the value from the MyHomePage object that was created by
      //   // the App.build method, and use it to set our appbar title.
      //   title: Text(widget.title),
      // ),
      body: ConstrainedBox(
        constraints: BoxConstraints.expand(),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: <Color>[
                Color.fromRGBO(63, 43, 150, 1),
                Color.fromRGBO(168, 192, 255, 1),
              ],
              begin: Alignment.centerRight,
              end: Alignment.centerLeft,
            )
          ),
          // Image.asset('images/live_beijing.png', fit: BoxFit.contain,),
          
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Image.asset('images/live_beijing.png', fit: BoxFit.contain,),
              Positioned(
                top: 40,
                right: 0,
                left: 0,
                bottom: 0,
                child: Column(
                  children: <Widget>[
                    Text('Tips LIVE', 
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                    ),),
                    SizedBox(height: 20,),
                    Text('(1) Bagaimana sistem penghitungan Ranking? ', 
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.w400
                    ),),
                    SizedBox(height: 10,),
                    Padding(
                      padding: EdgeInsets.only(left: 40, right: 40),
                      child: Text('SUPERSTAR dihitung berdasarkan peringkat akumulasi dari "tingkat popularitas", 20 penyiar teratas akan masuk ke dalam daftar Ranking.', 
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                        ),),
                    )
                    ,
                    
                  ],
                ),
              )
            ],
          )
        )
    //   );, // This trailing comma makes auto-formatting nicer for build methods.
      )
    );
  }
}

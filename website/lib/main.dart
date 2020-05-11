import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.dark,
      title: "CodeNameAkshay",
      debugShowCheckedModeBanner: false,
      // debugShowMaterialGrid: true,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackGround(),
    );
  }
}

class BackGround extends StatefulWidget {
  @override
  _BackGroundState createState() => _BackGroundState();
}

class _BackGroundState extends State<BackGround> {
  final _controller = new ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: ListView(
        controller: _controller,
        children: [
          Stack(
            children: [
              Container(
                child:
                    Image.asset("assets/images/BG.jpg", fit: BoxFit.fitWidth),

                /* add child content here */
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(200.0, 130, 200, 0),
                  child:
                      Image.asset("assets/images/AK.png", fit: BoxFit.fitWidth),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 20.0, horizontal: 40),
                        child: Text(
                          'PROJECTS',
                          style: TextStyle(fontFamily: "Agency", fontSize: 20),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 20.0, horizontal: 40),
                        child: Text(
                          'ABOUT',
                          style: TextStyle(fontFamily: "Agency", fontSize: 20),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 20.0, horizontal: 40),
                        child: Text(
                          'CONTACT',
                          style: TextStyle(fontFamily: "Agency", fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'AKSHAY',
                        style: TextStyle(fontFamily: "Agency", fontSize: 120),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'AKSHAY MAURYA',
                        style: TextStyle(fontFamily: "Agency", fontSize: 20),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'App Developer',
                        style: GoogleFonts.homemadeApple(fontSize: 20),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '@codenameakshay',
                        style: GoogleFonts.homemadeApple(fontSize: 20),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
          // Positioned(
          //   child: new ConstrainedBox(
          //     constraints: new BoxConstraints(maxHeight: 2080),
          //     child: new Image.asset(
          //       'assets/images/BG.jpg',
          //       fit: BoxFit.fitWidth,
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}

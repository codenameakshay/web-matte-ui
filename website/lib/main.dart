import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
      body: LayoutBuilder(
        builder: (context, constraints) {
          print(constraints.maxHeight);
          print(constraints.maxWidth);
          if (constraints.maxWidth > 1052) {
            return BackGround();
          }
          return BackGroundPhone();
        },
      ),
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
    ScreenUtil.init(context, height: 1080, width: 1920, allowFontScaling: true);
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
                mainAxisAlignment: MainAxisAlignment.center,
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
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8, 520, 8, 8),
                        child: Image.asset("assets/images/AKSHAY.png",
                            fit: BoxFit.fitWidth),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8, 160, 8, 8),
                        child: Image.asset("assets/images/AKSHAY MAURYA.png",
                            fit: BoxFit.fitWidth),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'App Developer',
                        style: GoogleFonts.homemadeApple(
                            fontSize: 20, color: Colors.white),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8, 210, 8, 8),
                        child: Text(
                          '@codenameakshay',
                          style: GoogleFonts.homemadeApple(
                              fontSize: 20, color: Colors.white),
                        ),
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

class BackGroundPhone extends StatefulWidget {
  @override
  _BackGroundPhoneState createState() => _BackGroundPhoneState();
}

class _BackGroundPhoneState extends State<BackGroundPhone> {
  final _controller = new ScrollController();
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, height: 1440, width: 720, allowFontScaling: true);
    return Scrollbar(
      child: ListView(
        controller: _controller,
        children: [
          Stack(
            children: [
              Container(
                child:
                    Image.asset("assets/images/BGP.jpg", fit: BoxFit.fitWidth),

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
                mainAxisAlignment: MainAxisAlignment.center,
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
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8, 520, 8, 8),
                        child: Image.asset("assets/images/AKSHAY.png",
                            fit: BoxFit.fitWidth),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8, 160, 8, 8),
                        child: Image.asset("assets/images/AKSHAY MAURYA.png",
                            fit: BoxFit.fitWidth),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'App Developer',
                        style: GoogleFonts.homemadeApple(
                            fontSize: 20, color: Colors.white),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8, 210, 8, 8),
                        child: Text(
                          '@codenameakshay',
                          style: GoogleFonts.homemadeApple(
                              fontSize: 20, color: Colors.white),
                        ),
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

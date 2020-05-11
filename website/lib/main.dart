import 'package:flutter/material.dart';

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
    return Stack(
      children: [
        Scrollbar(
                  child: ListView(controller: _controller,
            children: [
              Container(
                child: Image.asset("assets/images/BG.jpg", fit: BoxFit.fitWidth),

                /* add child content here */
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
        ),
      ],
    );
  }
}

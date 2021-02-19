import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'HOME'),
    );
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
  final List<String> _listitems = [
    "https://thumbs.dreamstime.com/b/cosmetic-woman-makeup-beauty-products-decorated-star-confetti-coral-table-top-view-flat-lay-cosmetic-woman-makeup-148122166.jpg"
        "https://img.jakpost.net/c/2019/12/09/2019_12_09_83333_1575827116._large.jpg",
    "https://i.pinimg.com/236x/ff/cd/b5/ffcdb54db3ff956596b8cb017c6c8b3a--gold-makeup-makeup-products.jpg",
    "https://www.powproductphotography.com/app/uploads/2019/10/hardlight-shadow-5.jpg",
    "https://media.allure.com/photos/5f315b09ddcbbe382541aee8/1:1/w_1024,h_1024,c_limit/Stoney%20Clover%20Lane%20x%20Hello%20Kitty%20Open%20Top%20Mirror%20Pouch.jpg",
    "https://i.pinimg.com/474x/f5/66/3d/f5663d059f53edf74ec0e7f91a74b968.jpg",
    "https://cdn.shortpixel.ai/client/q_glossy,ret_img,w_1000,h_1000/https://www.powproductphotography.com/app/uploads/2019/10/beauty-product-photograhy-10.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        leading: Icon(Icons.menu),
        actions: [
          Padding(
            padding: EdgeInsets.all(
              10,
            ),
            child: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(
                  10,
                ),
              ),
              child: Center(
                child: Text(
                  "0",
                ),
              ),
            ),
          ),
        ],
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      "https://thumbs.dreamstime.com/b/cosmetic-woman-makeup-beauty-products-decorated-star-confetti-coral-table-top-view-flat-lay-cosmetic-woman-makeup-148122166.jpg",
                    ),
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomRight,
                      colors: [
                        Colors.black.withOpacity(0.4),
                        Colors.black.withOpacity(0.2)
                      ],
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Best Cosmetics",
                        style: TextStyle(
                            fontSize: 35,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 50),
                      Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: 40,
                        ),
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(
                            10,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "Buy Now",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Expanded(
                child: GridView.count(
                    crossAxisCount: 2,
                    padding: EdgeInsets.all(5),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    children: _listitems
                        .map((item) => Card(
                              color: Colors.transparent,
                              elevation: 2,
                              child: Center(
                                child: Container(
                                  child: Transform.translate(
                                    offset: Offset(55, -50),
                                    child: Container(
                                      margin: EdgeInsets.symmetric(
                                        horizontal: 65,
                                        vertical: 65,
                                      ),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            10,
                                          ),
                                          color: Colors.white),
                                      child:
                                          Icon(Icons.bookmark_border, size: 15),
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: NetworkImage(item),
                                      )),
                                ),
                              ),
                            ))
                        .toList()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

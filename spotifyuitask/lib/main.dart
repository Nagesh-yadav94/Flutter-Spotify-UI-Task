import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:spotifyuitask/Homepage/Components/homepage.dart';
import 'package:spotifyuitask/Library/Components/library.dart';
import 'package:spotifyuitask/Search/Components/search.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.dark,
      home: AnimatedSplashScreen(
        splash: const Image(image: AssetImage('images/logo.png')),
        nextScreen: const Home(),
        duration: 5000,
        pageTransitionType: PageTransitionType.fade,
        backgroundColor: Colors.black,
      ),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int cIndex = 0;
  List<BottomNavigationBarItem> navigationIcons() {
    return [
      const BottomNavigationBarItem(
        icon: Padding(
          padding: EdgeInsets.all(0),
          child: Image(
            image: NetworkImage(
                'https://cdn0.iconfinder.com/data/icons/spotify-line-ui-kit/100/home-line-128.png'),
            width: 25,
            height: 23,
            color: Colors.grey,
          ),
        ),
        label: "Home",
      ),
      const BottomNavigationBarItem(
        icon: Padding(
          padding: EdgeInsets.all(0),
          child: Image(
            image: NetworkImage(
                'https://cdn0.iconfinder.com/data/icons/spotify-line-ui-kit/100/search-line-128.png'),
            width: 25,
            height: 23,
            color: Colors.grey,
          ),
        ),
        label: "Search",
      ),
      const BottomNavigationBarItem(
        icon: Padding(
          padding: EdgeInsets.all(0),
          child: Image(
            image: NetworkImage(
                'https://cdn0.iconfinder.com/data/icons/spotify-line-ui-kit/100/your-library-line-128.png'),
            width: 25,
            height: 23,
            color: Colors.grey,
          ),
        ),
        label: "Your Library",
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    List pages = [
      const Homepage(),
      const Search(),
      const Library(),
    ];
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: cIndex,
        selectedFontSize: 10.0,
        unselectedFontSize: 10.0,
        iconSize: 20.0,
        onTap: (int val) {
          setState(() {
            cIndex = val;
          });
        },
        type: BottomNavigationBarType.fixed,
        elevation: 50.0,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        items: navigationIcons(),
      ),
      body: pages[cIndex],
    );
  }
}

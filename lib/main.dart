import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';
import 'package:flutterfire_ui/auth.dart';
import 'firebase_options.dart';
import 'package:yale_market/feed.dart';
import 'package:yale_market/search.dart';
import 'package:yale_market/shoppingcart.dart';
import 'package:yale_market/profile.dart';


void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of the application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Yale Market',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // show login / registration page when user first opens app
      home: const AuthGate(),
    );
  }
}


class AuthGate extends StatelessWidget {
  const AuthGate({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        // if no one is logged in, show login screen
        if (!snapshot.hasData) {
          return const SignInScreen(providerConfigs: [
            EmailProviderConfiguration(),
          ]);
        }
        // if already logged in, show home page
        else {
          return const Home();
        }
      },
    );
  }
}


// home page aka the bottom navigation bar
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  // indexes on the navigation bar that redirect to different pages
  static const List<Widget> _widgetOptions = <Widget>[
    Feed(),
    Search(),
    ShoppingCart(),
    Profile(),
  ];

  // when icon is tapped, redirect to appropriate index
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // building the bottom navigation bar
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          // 1st icon directed to the feed page
          BottomNavigationBarItem(
            icon: Icon(Icons.feed),
            label: 'Feed',
          ),
          // 2nd icon redirects to the search page
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          // 3rd icon redirects to the shopping cart
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined),
            label: 'Cart',
          ),
          // 4th icon redirects to the profile page
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.lightBlue[900],
        onTap: _onItemTapped,
      ),
    );
  }
}
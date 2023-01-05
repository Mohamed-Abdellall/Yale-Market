import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// information pages for all the items for sale from the feed
class FrenchInfo extends StatefulWidget {
  const FrenchInfo({Key? key}) : super(key: key);

  @override
  State<FrenchInfo> createState() => _FrenchInfoState();
}

class _FrenchInfoState extends State<FrenchInfo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // "Yale Market" appbar
        appBar: AppBar(
            backgroundColor: Colors.lightBlue[900],
            title: Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
              child: Text('Yale Market',
                style: GoogleFonts.timmana(
                  fontWeight: FontWeight.normal,
                  color: Colors.white,
                  fontSize: 40,
                ),
              ),
            ),
            // back button returns to previous page
            leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back_ios),
            )
        ),
        body: Column(
          children: [
            Expanded(
              child: GridView.count(
                primary: false,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 1,
                children: <Widget>[
                  // image of item
                  Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/textbook.jpeg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  // information of item
                  RichText(
                    text: const TextSpan(
                      children: <TextSpan>[
                        TextSpan(text: 'Jennifer Truong\n', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),),
                        TextSpan(text: 'French 110 Textbook\n', style: TextStyle(fontSize: 30),),
                        TextSpan(text: 'French Basics 3rd Edition. There are some markings and notes left throughout the book, but overall undamaged.\n', style: TextStyle(fontSize: 20),),
                        TextSpan(text: 'Condition: Good\n', style: TextStyle(fontSize: 20)),
                        TextSpan(text: '\$50\n', style: TextStyle(fontSize: 20),),
                      ],),),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(2.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // button to message seller
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.lightBlue[900],
                      ),
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              // when button is pressed, return box for buyer to type their message
                              return AlertDialog(
                                  title: const Text('Send seller a message'),
                                  content: Column(
                                      children: const [
                                        TextField(
                                          decoration: InputDecoration(
                                            hintText: 'Message',
                                          ),
                                        ),
                                      ]
                                  ),
                                  actions: <Widget>[
                                    // button to send message
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.lightBlue[900],
                                      ),
                                      onPressed: () {
                                        Navigator.pop(context);
                                        showDialog(
                                            context: context,
                                            builder: (context) {
                                              return const AlertDialog(
                                                content: Text('Your message has been sent to the seller!'),
                                              );
                                            });
                                      },
                                      child: Text('Send'),
                                    )
                                  ]
                              );
                            });
                      },
                      child: Text('Message Seller')),
                  const SizedBox(width: 5),
                  // button to add item to cart
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.lightBlue[900],
                      ),
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              // when pressed, send user note that item has been added to cart
                              return AlertDialog(
                                  content: Text('Added to your cart! Please allow some time for it to show up.')
                              );
                            });
                      },
                      child: Text('Add to Cart')),
                ],
              ),
            )],
        ),
      ),);}}


class SkateboardInfo extends StatefulWidget {
  const SkateboardInfo({Key? key}) : super(key: key);

  @override
  State<SkateboardInfo> createState() => _SkateboardInfoState();
}

class _SkateboardInfoState extends State<SkateboardInfo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.lightBlue[900],
            title: Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
              child: Text('Yale Market',
                style: GoogleFonts.timmana(
                  fontWeight: FontWeight.normal,
                  color: Colors.white,
                  fontSize: 40,
                ),
              ),
            ),
            leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back_ios),
            )
        ),
        body: Column(
          children: [
            Expanded(
              child: GridView.count(
                primary: false,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 1,
                children: <Widget>[
                  Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/skateboard.jpeg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  RichText(
                    text: const TextSpan(
                      children: <TextSpan>[
                        TextSpan(text: 'Mohamed Abdellall\n', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),),
                        TextSpan(text: 'Skateboard\n', style: TextStyle(fontSize: 30),),
                        TextSpan(text: 'Light blue skateboard with stickers. The back is scratched up but the board is still strong and the wheels are smooth.\n', style: TextStyle(fontSize: 20),),
                        TextSpan(text: 'Condition: Fair\n', style: TextStyle(fontSize: 20)),
                        TextSpan(text: '\$25\n', style: TextStyle(fontSize: 20),),
                      ],),),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(2.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.lightBlue[900],
                      ),
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                  title: const Text('Send seller a message'),
                                  content: Column(
                                      children: const [
                                        TextField(
                                          decoration: InputDecoration(
                                            hintText: 'Message',
                                          ),
                                        ),
                                      ]
                                  ),
                                  actions: <Widget>[
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.lightBlue[900],
                                      ),
                                      onPressed: () {
                                        Navigator.pop(context);
                                        showDialog(
                                            context: context,
                                            builder: (context) {
                                              return const AlertDialog(
                                                content: Text('Your message has been sent to the seller!'),
                                              );
                                            });
                                      },
                                      child: Text('Send'),
                                    )
                                  ]
                              );
                            });
                      },
                      child: Text('Message Seller')),
                  const SizedBox(width: 5),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.lightBlue[900],
                      ),
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                  content: Text('Added to your cart! Please allow some time for it to show up.')
                              );
                            });
                      },
                      child: Text('Add to Cart')),
                ],
              ),
            )],
        ),
      ),);}}


class SucculentsInfo extends StatefulWidget {
  const SucculentsInfo({Key? key}) : super(key: key);

  @override
  State<SucculentsInfo> createState() => _SucculentsInfoState();
}

class _SucculentsInfoState extends State<SucculentsInfo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.lightBlue[900],
            title: Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
              child: Text('Yale Market',
                style: GoogleFonts.timmana(
                  fontWeight: FontWeight.normal,
                  color: Colors.white,
                  fontSize: 40,
                ),
              ),
            ),
            leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back_ios),
            )
        ),
        body: Column(
          children: [
            Expanded(
              child: GridView.count(
                primary: false,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 1,
                children: <Widget>[
                  Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/succulents.webp'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  RichText(
                    text: const TextSpan(
                      children: <TextSpan>[
                        TextSpan(text: 'Jon Snow\n', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),),
                        TextSpan(text: 'Succulents\n', style: TextStyle(fontSize: 30),),
                        TextSpan(text: 'Cute succulents for sale! Put them on your desk or windowsill to bring some life into your suite. Need plenty of sun, but minimal water.\n', style: TextStyle(fontSize: 20),),
                        TextSpan(text: 'Condition: Excellent\n', style: TextStyle(fontSize: 20)),
                        TextSpan(text: '\$10 each\n', style: TextStyle(fontSize: 20),),
                      ],),),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(2.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.lightBlue[900],
                      ),
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                  title: const Text('Send seller a message'),
                                  content: Column(
                                      children: const [
                                        TextField(
                                          decoration: InputDecoration(
                                            hintText: 'Message',
                                          ),
                                        ),
                                      ]
                                  ),
                                  actions: <Widget>[
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.lightBlue[900],
                                      ),
                                      onPressed: () {
                                        Navigator.pop(context);
                                        showDialog(
                                            context: context,
                                            builder: (context) {
                                              return const AlertDialog(
                                                content: Text('Your message has been sent to the seller!'),
                                              );
                                            });
                                      },
                                      child: Text('Send'),
                                    )
                                  ]
                              );
                            });
                      },
                      child: Text('Message Seller')),
                  const SizedBox(width: 5),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.lightBlue[900],
                      ),
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                  content: Text('Added to your cart! Please allow some time for it to show up.')
                              );
                            });
                      },
                      child: Text('Add to Cart')),
                ],
              ),
            )],
        ),
      ),);}}


class JeansInfo extends StatefulWidget {
  const JeansInfo({Key? key}) : super(key: key);

  @override
  State<JeansInfo> createState() => _JeansInfoState();
}

class _JeansInfoState extends State<JeansInfo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.lightBlue[900],
            title: Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
              child: Text('Yale Market',
                style: GoogleFonts.timmana(
                  fontWeight: FontWeight.normal,
                  color: Colors.white,
                  fontSize: 40,
                ),
              ),
            ),
            leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back_ios),
            )
        ),
        body: Column(
          children: [
            Expanded(
              child: GridView.count(
                primary: false,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 1,
                children: <Widget>[
                  Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/jacket.JPG'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  RichText(
                    text: const TextSpan(
                      children: <TextSpan>[
                        TextSpan(text: 'Arya Stark\n', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),),
                        TextSpan(text: 'Jeans\n', style: TextStyle(fontSize: 30),),
                        TextSpan(text: 'Dark wash, straight-leg jeans. They are a Size 6, but they have some stretch to them.\n', style: TextStyle(fontSize: 20),),
                        TextSpan(text: 'Condition: Good\n', style: TextStyle(fontSize: 20)),
                        TextSpan(text: '\$20\n', style: TextStyle(fontSize: 20),),
                      ],),),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(2.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.lightBlue[900],
                      ),
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                  title: const Text('Send seller a message'),
                                  content: Column(
                                      children: const [
                                        TextField(
                                          decoration: InputDecoration(
                                            hintText: 'Message',
                                          ),
                                        ),
                                      ]
                                  ),
                                  actions: <Widget>[
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.lightBlue[900],
                                      ),
                                      onPressed: () {
                                        Navigator.pop(context);
                                        showDialog(
                                            context: context,
                                            builder: (context) {
                                              return const AlertDialog(
                                                content: Text('Your message has been sent to the seller!'),
                                              );
                                            });
                                      },
                                      child: Text('Send'),
                                    )
                                  ]
                              );
                            });
                      },
                      child: Text('Message Seller')),
                  const SizedBox(width: 5),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.lightBlue[900],
                      ),
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                  content: Text('Added to your cart! Please allow some time for it to show up.')
                              );
                            });
                      },
                      child: Text('Add to Cart')),
                ],
              ),
            )],
        ),
      ),);}}


class PhoneCaseInfo extends StatefulWidget {
  const PhoneCaseInfo({Key? key}) : super(key: key);

  @override
  State<PhoneCaseInfo> createState() => _PhoneCaseInfoState();
}

class _PhoneCaseInfoState extends State<PhoneCaseInfo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.lightBlue[900],
            title: Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
              child: Text('Yale Market',
                style: GoogleFonts.timmana(
                  fontWeight: FontWeight.normal,
                  color: Colors.white,
                  fontSize: 40,
                ),
              ),
            ),
            leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back_ios),
            )
        ),
        body: Column(
          children: [
            Expanded(
              child: GridView.count(
                primary: false,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 1,
                children: <Widget>[
                  Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/jacket.JPG'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  RichText(
                    text: const TextSpan(
                      children: <TextSpan>[
                        TextSpan(text: 'Tyrion Lannister\n', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),),
                        TextSpan(text: 'iPhone 11 Phone Case\n', style: TextStyle(fontSize: 30),),
                        TextSpan(text: 'Lavender Wild Flag iPhone 11 phone case with a propping feature on the back.\n', style: TextStyle(fontSize: 20),),
                        TextSpan(text: 'Condition: New\n', style: TextStyle(fontSize: 20)),
                        TextSpan(text: '\$15\n', style: TextStyle(fontSize: 20),),
                      ],),),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(2.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.lightBlue[900],
                      ),
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                  title: const Text('Send seller a message'),
                                  content: Column(
                                      children: const [
                                        TextField(
                                          decoration: InputDecoration(
                                            hintText: 'Message',
                                          ),
                                        ),
                                      ]
                                  ),
                                  actions: <Widget>[
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.lightBlue[900],
                                      ),
                                      onPressed: () {
                                        Navigator.pop(context);
                                        showDialog(
                                            context: context,
                                            builder: (context) {
                                              return const AlertDialog(
                                                content: Text('Your message has been sent to the seller!'),
                                              );
                                            });
                                      },
                                      child: Text('Send'),
                                    )
                                  ]
                              );
                            });
                      },
                      child: Text('Message Seller')),
                  const SizedBox(width: 5),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.lightBlue[900],
                      ),
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                  content: Text('Added to your cart! Please allow some time for it to show up.')
                              );
                            });
                      },
                      child: Text('Add to Cart')),
                ],
              ),
            )],
        ),
      ),);}}


class ChristmasInfo extends StatefulWidget {
  const ChristmasInfo({Key? key}) : super(key: key);

  @override
  State<ChristmasInfo> createState() => _ChristmasInfoState();
}

class _ChristmasInfoState extends State<ChristmasInfo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.lightBlue[900],
            title: Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
              child: Text('Yale Market',
                style: GoogleFonts.timmana(
                  fontWeight: FontWeight.normal,
                  color: Colors.white,
                  fontSize: 40,
                ),
              ),
            ),
            leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back_ios),
            )
        ),
        body: Column(
          children: [
            Expanded(
              child: GridView.count(
                primary: false,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 1,
                children: <Widget>[
                  Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/tree.jpeg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  RichText(
                    text: const TextSpan(
                      children: <TextSpan>[
                        TextSpan(text: 'Sansa Stark\n', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),),
                        TextSpan(text: 'Mini Desk Christmas Tree\n', style: TextStyle(fontSize: 30),),
                        TextSpan(text: '‘Tis the season! Buy a Mini Desk Christmas Tree to embrace the Christmas spirit and decorate your desk.\n', style: TextStyle(fontSize: 20),),
                        TextSpan(text: 'Condition: New\n', style: TextStyle(fontSize: 20)),
                        TextSpan(text: '\$20\n', style: TextStyle(fontSize: 20),),
                      ],),),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(2.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.lightBlue[900],
                      ),
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                  title: const Text('Send seller a message'),
                                  content: Column(
                                      children: const [
                                        TextField(
                                          decoration: InputDecoration(
                                            hintText: 'Message',
                                          ),
                                        ),
                                      ]
                                  ),
                                  actions: <Widget>[
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.lightBlue[900],
                                      ),
                                      onPressed: () {
                                        Navigator.pop(context);
                                        showDialog(
                                            context: context,
                                            builder: (context) {
                                              return const AlertDialog(
                                                content: Text('Your message has been sent to the seller!'),
                                              );
                                            });
                                      },
                                      child: Text('Send'),
                                    )
                                  ]
                              );
                            });
                      },
                      child: Text('Message Seller')),
                  const SizedBox(width: 5),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.lightBlue[900],
                      ),
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                  content: Text('Added to your cart! Please allow some time for it to show up.')
                              );
                            });
                      },
                      child: Text('Add to Cart')),
                ],
              ),
            )],
        ),
      ),);}}


class SweaterInfo extends StatefulWidget {
  const SweaterInfo({Key? key}) : super(key: key);

  @override
  State<SweaterInfo> createState() => _SweaterInfoState();
}

class _SweaterInfoState extends State<SweaterInfo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.lightBlue[900],
            title: Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
              child: Text('Yale Market',
                style: GoogleFonts.timmana(
                  fontWeight: FontWeight.normal,
                  color: Colors.white,
                  fontSize: 40,
                ),
              ),
            ),
            leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back_ios),
            )
        ),
        body: Column(
          children: [
            Expanded(
              child: GridView.count(
                primary: false,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 1,
                children: <Widget>[
                  Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/Sweater.jpeg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  RichText(
                    text: const TextSpan(
                      children: <TextSpan>[
                        TextSpan(text: 'Margaery Tyrell\n', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),),
                        TextSpan(text: 'Red Sweater\n', style: TextStyle(fontSize: 30),),
                        TextSpan(text: 'J. Crew Red Sweater (Medium) for sale. Worn once. I ordered the wrong size and couldn’t return it.\n', style: TextStyle(fontSize: 20),),
                        TextSpan(text: 'Condition: Excellent\n', style: TextStyle(fontSize: 20)),
                        TextSpan(text: '\$25\n', style: TextStyle(fontSize: 20),),
                      ],),),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(2.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.lightBlue[900],
                      ),
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                  title: const Text('Send seller a message'),
                                  content: Column(
                                      children: const [
                                        TextField(
                                          decoration: InputDecoration(
                                            hintText: 'Message',
                                          ),
                                        ),
                                      ]
                                  ),
                                  actions: <Widget>[
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.lightBlue[900],
                                      ),
                                      onPressed: () {
                                        Navigator.pop(context);
                                        showDialog(
                                            context: context,
                                            builder: (context) {
                                              return const AlertDialog(
                                                content: Text('Your message has been sent to the seller!'),
                                              );
                                            });
                                      },
                                      child: Text('Send'),
                                    )
                                  ]
                              );
                            });
                      },
                      child: Text('Message Seller')),
                  const SizedBox(width: 5),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.lightBlue[900],
                      ),
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                  content: Text('Added to your cart! Please allow some time for it to show up.')
                              );
                            });
                      },
                      child: Text('Add to Cart')),
                ],
              ),
            )],
        ),
      ),);}}


class MirrorsInfo extends StatefulWidget {
  const MirrorsInfo({Key? key}) : super(key: key);

  @override
  State<MirrorsInfo> createState() => _MirrorsInfoState();
}

class _MirrorsInfoState extends State<MirrorsInfo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.lightBlue[900],
            title: Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
              child: Text('Yale Market',
                style: GoogleFonts.timmana(
                  fontWeight: FontWeight.normal,
                  color: Colors.white,
                  fontSize: 40,
                ),
              ),
            ),
            leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back_ios),
            )
        ),
        body: Column(
          children: [
            Expanded(
              child: GridView.count(
                primary: false,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 1,
                children: <Widget>[
                  Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/mirrors.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  RichText(
                    text: const TextSpan(
                      children: <TextSpan>[
                        TextSpan(text: 'Khal Drogo\n', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),),
                        TextSpan(text: 'Mirrors\n', style: TextStyle(fontSize: 30),),
                        TextSpan(text: 'Vintage gold octagon mirrors. No scratches. They’re heavy so make sure you have strong nails and walls.\n', style: TextStyle(fontSize: 20),),
                        TextSpan(text: 'Condition: Excellent\n', style: TextStyle(fontSize: 20)),
                        TextSpan(text: '\$40 each\n', style: TextStyle(fontSize: 20),),
                      ],),),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(2.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.lightBlue[900],
                      ),
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                  title: const Text('Send seller a message'),
                                  content: Column(
                                      children: const [
                                        TextField(
                                          decoration: InputDecoration(
                                            hintText: 'Message',
                                          ),
                                        ),
                                      ]
                                  ),
                                  actions: <Widget>[
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.lightBlue[900],
                                      ),
                                      onPressed: () {
                                        Navigator.pop(context);
                                        showDialog(
                                            context: context,
                                            builder: (context) {
                                              return const AlertDialog(
                                                content: Text('Your message has been sent to the seller!'),
                                              );
                                            });
                                      },
                                      child: Text('Send'),
                                    )
                                  ]
                              );
                            });
                      },
                      child: Text('Message Seller')),
                  const SizedBox(width: 5),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.lightBlue[900],
                      ),
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                  content: Text('Added to your cart! Please allow some time for it to show up.')
                              );
                            });
                      },
                      child: Text('Add to Cart')),
                ],
              ),
            )],
        ),
      ),);}}


class HikingInfo extends StatefulWidget {
  const HikingInfo({Key? key}) : super(key: key);

  @override
  State<HikingInfo> createState() => _HikingInfoState();
}

class _HikingInfoState extends State<HikingInfo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.lightBlue[900],
            title: Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
              child: Text('Yale Market',
                style: GoogleFonts.timmana(
                  fontWeight: FontWeight.normal,
                  color: Colors.white,
                  fontSize: 40,
                ),
              ),
            ),
            leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back_ios),
            )
        ),
        body: Column(
          children: [
            Expanded(
              child: GridView.count(
                primary: false,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 1,
                children: <Widget>[
                  Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/hikingShoes.jpeg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  RichText(
                    text: const TextSpan(
                      children: <TextSpan>[
                        TextSpan(text: 'Davos Seaworth\n', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),),
                        TextSpan(text: 'Hiking Shoes\n', style: TextStyle(fontSize: 30),),
                        TextSpan(text: 'Went on my FOOT trip and realized I never want to hike again. Good shoes that got me through the Berkshire mountains.\n', style: TextStyle(fontSize: 20),),
                        TextSpan(text: 'Condition: Good\n', style: TextStyle(fontSize: 20)),
                        TextSpan(text: '\$30\n', style: TextStyle(fontSize: 20),),
                      ],),),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(2.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.lightBlue[900],
                      ),
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                  title: const Text('Send seller a message'),
                                  content: Column(
                                      children: const [
                                        TextField(
                                          decoration: InputDecoration(
                                            hintText: 'Message',
                                          ),
                                        ),
                                      ]
                                  ),
                                  actions: <Widget>[
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.lightBlue[900],
                                      ),
                                      onPressed: () {
                                        Navigator.pop(context);
                                        showDialog(
                                            context: context,
                                            builder: (context) {
                                              return const AlertDialog(
                                                content: Text('Your message has been sent to the seller!'),
                                              );
                                            });
                                      },
                                      child: Text('Send'),
                                    )
                                  ]
                              );
                            });
                      },
                      child: Text('Message Seller')),
                  const SizedBox(width: 5),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.lightBlue[900],
                      ),
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                  content: Text('Added to your cart! Please allow some time for it to show up.')
                              );
                            });
                      },
                      child: Text('Add to Cart')),
                ],
              ),
            )],
        ),
      ),);}}


class EAPInfo extends StatefulWidget {
  const EAPInfo({Key? key}) : super(key: key);

  @override
  State<EAPInfo> createState() => _EAPInfoState();
}

class _EAPInfoState extends State<EAPInfo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.lightBlue[900],
            title: Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
              child: Text('Yale Market',
                style: GoogleFonts.timmana(
                  fontWeight: FontWeight.normal,
                  color: Colors.white,
                  fontSize: 40,
                ),
              ),
            ),
            leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back_ios),
            )
        ),
        body: Column(
          children: [
            Expanded(
              child: GridView.count(
                primary: false,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 1,
                children: <Widget>[
                  Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/book.jpeg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  RichText(
                    text: const TextSpan(
                      children: <TextSpan>[
                        TextSpan(text: 'Theon GreyJoy\n', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),),
                        TextSpan(text: 'Edgar Allen Poe Poetry\n', style: TextStyle(fontSize: 30),),
                        TextSpan(text: '“What did they yell at Edgar Allen Poe when he nearly walked into a tree? Poetry!” Just wrapped up my dark academia phase and am no longer in need of Poe.\n', style: TextStyle(fontSize: 20),),
                        TextSpan(text: 'Condition: Good\n', style: TextStyle(fontSize: 20)),
                        TextSpan(text: '\$10\n', style: TextStyle(fontSize: 20),),
                      ],),),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(2.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.lightBlue[900],
                      ),
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                  title: const Text('Send seller a message'),
                                  content: Column(
                                      children: const [
                                        TextField(
                                          decoration: InputDecoration(
                                            hintText: 'Message',
                                          ),
                                        ),
                                      ]
                                  ),
                                  actions: <Widget>[
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.lightBlue[900],
                                      ),
                                      onPressed: () {
                                        Navigator.pop(context);
                                        showDialog(
                                            context: context,
                                            builder: (context) {
                                              return const AlertDialog(
                                                content: Text('Your message has been sent to the seller!'),
                                              );
                                            });
                                      },
                                      child: Text('Send'),
                                    )
                                  ]
                              );
                            });
                      },
                      child: Text('Message Seller')),
                  const SizedBox(width: 5),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.lightBlue[900],
                      ),
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                  content: Text('Added to your cart! Please allow some time for it to show up.')
                              );
                            });
                      },
                      child: Text('Add to Cart')),
                ],
              ),
            )],
        ),
      ),);}}
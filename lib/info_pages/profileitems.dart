import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// information pages for all the items Aya has listed for sale
class RecordInfo extends StatefulWidget {
  const RecordInfo({Key? key}) : super(key: key);

  @override
  State<RecordInfo> createState() => _RecordInfoState();
}

class _RecordInfoState extends State<RecordInfo> {
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
                        image: AssetImage('images/RecordPlayer.JPG'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  // information of item
                  RichText(
                    text: const TextSpan(
                      children: <TextSpan>[
                        TextSpan(text: 'Aya Kasim\n', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),),
                        TextSpan(text: 'Record Player\n', style: TextStyle(fontSize: 30),),
                        TextSpan(text: 'Crosley brown vintage record player. Can close into a briefcase to easily carry around.\n', style: TextStyle(fontSize: 20),),
                        TextSpan(text: 'Condition: Good\n', style: TextStyle(fontSize: 20)),
                        TextSpan(text: '\$30\n', style: TextStyle(fontSize: 20),),
                      ],),),
                ],
              ),
            ),
            ]
        ),
      ),);}}


class PlantInfo extends StatefulWidget {
  const PlantInfo({Key? key}) : super(key: key);

  @override
  State<PlantInfo> createState() => _PlantInfoState();
}

class _PlantInfoState extends State<PlantInfo> {
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
                        image: AssetImage('images/Plant3.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  RichText(
                    text: const TextSpan(
                      children: <TextSpan>[
                        TextSpan(text: 'Aya Kasim\n', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),),
                        TextSpan(text: 'Prayer Plant\n', style: TextStyle(fontSize: 30),),
                        TextSpan(text: 'Healthy and vibrant lemon-lime maranta prayer plant! Perfect for decorating your common room. Comes in a blue pot with moss.\n', style: TextStyle(fontSize: 20),),
                        TextSpan(text: 'Condition: Excellent\n', style: TextStyle(fontSize: 20)),
                        TextSpan(text: '\$10\n', style: TextStyle(fontSize: 20),),
                      ],),),
                ],
              ),
            ),
            ],
        ),
      ),);}}


class ShoesInfo extends StatefulWidget {
  const ShoesInfo({Key? key}) : super(key: key);

  @override
  State<ShoesInfo> createState() => _ShoesInfoState();
}

class _ShoesInfoState extends State<ShoesInfo> {
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
                        image: AssetImage('images/shoes.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  RichText(
                    text: const TextSpan(
                      children: <TextSpan>[
                        TextSpan(text: 'Aya Kasim\n', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),),
                        TextSpan(text: 'Nike Air Maxes\n', style: TextStyle(fontSize: 30),),
                        TextSpan(text: 'Nike sneakers in size 7W.\n', style: TextStyle(fontSize: 20),),
                        TextSpan(text: 'Condition: Good\n', style: TextStyle(fontSize: 20)),
                        TextSpan(text: '\$20\n', style: TextStyle(fontSize: 20),),
                      ],),),
                ],
              ),
            ),
            ],
        ),
      ),);}}


class ShelfInfo extends StatefulWidget {
  const ShelfInfo({Key? key}) : super(key: key);

  @override
  State<ShelfInfo> createState() => _ShelfInfoState();
}

class _ShelfInfoState extends State<ShelfInfo> {
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
                        image: AssetImage('images/Shelf.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  RichText(
                    text: const TextSpan(
                      children: <TextSpan>[
                        TextSpan(text: 'Aya Kasim\n', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),),
                        TextSpan(text: 'Shelf\n', style: TextStyle(fontSize: 30),),
                        TextSpan(text: 'White shelf with 2 shelves. Good for organizing your room.\n', style: TextStyle(fontSize: 20),),
                        TextSpan(text: 'Condition: Excellent\n', style: TextStyle(fontSize: 20)),
                        TextSpan(text: '\$20\n', style: TextStyle(fontSize: 20),),
                      ],),),
                ],
              ),
            ),
            ],
        ),
      ),);}}


class PaintingInfo extends StatefulWidget {
  const PaintingInfo({Key? key}) : super(key: key);

  @override
  State<PaintingInfo> createState() => _PaintingInfoState();
}

class _PaintingInfoState extends State<PaintingInfo> {
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
                        image: AssetImage('images/Painting4.webp'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  RichText(
                    text: const TextSpan(
                      children: <TextSpan>[
                        TextSpan(text: 'Aya Kasim\n', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),),
                        TextSpan(text: 'Painting\n', style: TextStyle(fontSize: 30),),
                        TextSpan(text: 'Gorgeous oil on canvas painting with gold frame!\n', style: TextStyle(fontSize: 20),),
                        TextSpan(text: 'Condition: Good\n', style: TextStyle(fontSize: 20)),
                        TextSpan(text: '\$50\n', style: TextStyle(fontSize: 20),),
                      ],),),
                ],
              ),
            ),
            ],
        ),
      ),);}}


class DressInfo extends StatefulWidget {
  const DressInfo({Key? key}) : super(key: key);

  @override
  State<DressInfo> createState() => _DressInfoState();
}

class _DressInfoState extends State<DressInfo> {
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
                        TextSpan(text: 'Aya Kasim\n', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),),
                        TextSpan(text: 'Denim Dress\n', style: TextStyle(fontSize: 30),),
                        TextSpan(text: 'Sleeveless denim dress with pockets and button closure.\n', style: TextStyle(fontSize: 20),),
                        TextSpan(text: 'Condition: Good\n', style: TextStyle(fontSize: 20)),
                        TextSpan(text: '\$20\n', style: TextStyle(fontSize: 20),),
                      ],),),
                ],
              ),
            ),
            ],
        ),
      ),);}}

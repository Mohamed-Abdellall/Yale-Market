import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yale_market/info_pages/feeditems.dart';

class Feed extends StatefulWidget {
  const Feed({Key? key}) : super(key: key);

  @override
  State<Feed> createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // "Yale Market" in appbar
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
        ),
        // create gridview with cross axis count of 2 and padding
        body: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(40),
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          crossAxisCount: 2,
          children: <Widget>[
            // item
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // name of seller
                  Container(
                    color: Colors.lightBlue[900],
                    padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                    child: Text(
                      'Jennifer Truong',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.timmana(
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                        fontSize: 25,
                      ),),),
                  // image of item being sold
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border(
                          right: BorderSide(color: Colors.lightBlue.shade900, width: 10, style: BorderStyle.solid),
                          left: BorderSide(color: Colors.lightBlue.shade900, width: 10, style: BorderStyle.solid),
                        ),
                        image: DecorationImage(
                          image: AssetImage(
                              '/Users/JenniferTruong/StudioProjects/yale_market/assets/images/textbook.jpeg'),
                          fit: BoxFit.cover,
                        ),),
                      // when item is clicked, redirect user to the item's information page
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => FrenchInfo()),
                          );
                        },
                      ),),),
                  // name and price of item being sold
                  Container(
                    padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                    color: Colors.lightBlue[900],
                    child: Text(
                      "French 110 Textbook: \$50",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.timmana(
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                        fontSize: 25,
                      ),),),],),),
            // same functions repeated for each item in feed
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                    color: Colors.lightBlue[900],
                    child: Text(
                      'Mohamed Abdellall',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.timmana(
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                        fontSize: 25,
                      ),),),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border(
                          right: BorderSide(color: Colors.lightBlue.shade900, width: 10, style: BorderStyle.solid),
                          left: BorderSide(color: Colors.lightBlue.shade900, width: 10, style: BorderStyle.solid),
                        ),
                        image: const DecorationImage(
                          image: AssetImage(
                              '/Users/JenniferTruong/StudioProjects/yale_market/assets/images/skateboard.jpeg'),
                          fit: BoxFit.cover,
                        ),),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SkateboardInfo()),
                          );
                        },
                      ),),),
                  Container(
                    padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                    color: Colors.lightBlue[900],
                    child: Text(
                      "Skateboard: \$25",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.timmana(
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                        fontSize: 25,
                      ),),),],),),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                    color: Colors.lightBlue[900],
                    child: Text(
                      'Jon Snow',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.timmana(
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                        fontSize: 25,
                      ),),),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border(
                          right: BorderSide(color: Colors.lightBlue.shade900, width: 10, style: BorderStyle.solid),
                          left: BorderSide(color: Colors.lightBlue.shade900, width: 10, style: BorderStyle.solid),
                        ),
                        image: DecorationImage(
                          image: AssetImage(
                              '/Users/JenniferTruong/StudioProjects/yale_market/assets/images/succulents.webp'),
                          fit: BoxFit.cover,
                        ),),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SucculentsInfo()),
                          );
                        },
                      ),),),
                  Container(
                    padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                    color: Colors.lightBlue[900],
                    child: Text(
                      "Succulents: \$10 each",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.timmana(
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                        fontSize: 25,
                      ),),),],),),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                    color: Colors.lightBlue[900],
                    child: Text(
                      'Arya Stark',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.timmana(
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                        fontSize: 25,
                      ),),),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border(
                          right: BorderSide(color: Colors.lightBlue.shade900, width: 10, style: BorderStyle.solid),
                          left: BorderSide(color: Colors.lightBlue.shade900, width: 10, style: BorderStyle.solid),
                        ),
                        image: DecorationImage(
                          image: AssetImage(
                              '/Users/JenniferTruong/StudioProjects/yale_market/assets/images/jeans4.jpeg'),
                          fit: BoxFit.cover,
                        ),),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => JeansInfo()),
                          );
                        },
                      ),),),
                  Container(
                    padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                    color: Colors.lightBlue[900],
                    child: Text(
                      "Women's Size 6 Jeans: \$20",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.timmana(
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                        fontSize: 25,
                      ),),),],),),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                    color: Colors.lightBlue[900],
                    child: Text(
                      'Tyrion Lannister',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.timmana(
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border(
                          right: BorderSide(color: Colors.lightBlue.shade900, width: 10, style: BorderStyle.solid),
                          left: BorderSide(color: Colors.lightBlue.shade900, width: 10, style: BorderStyle.solid),
                        ),
                        image: DecorationImage(
                          image: AssetImage(
                              '/Users/JenniferTruong/StudioProjects/yale_market/assets/images/phonecase.jpeg'),
                          fit: BoxFit.cover,
                        ),),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => PhoneCaseInfo()),
                          );
                        },
                      ),),),
                  Container(
                    padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                    color: Colors.lightBlue[900],
                    child: Text(
                      "Iphone 11 Phonecase: \$15",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.timmana(
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                        fontSize: 25,
                      ),),),],),),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    color: Colors.lightBlue[900],
                    padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                    child: Text(
                      'Sansa Stark',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.timmana(
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                        fontSize: 25,
                      ),),),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border(
                          right: BorderSide(color: Colors.lightBlue.shade900, width: 10, style: BorderStyle.solid),
                          left: BorderSide(color: Colors.lightBlue.shade900, width: 10, style: BorderStyle.solid),
                        ),
                        image: DecorationImage(
                          image: AssetImage(
                              '/Users/JenniferTruong/StudioProjects/yale_market/assets/images/tree.jpeg'),
                          fit: BoxFit.cover,
                        ),),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ChristmasInfo()),
                          );
                        },
                      ),),),
                  Container(
                    padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                    color: Colors.lightBlue[900],
                    child: Text(
                      "Mini Desk Christmas Tree: \$20",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.timmana(
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                        fontSize: 25,
                      ),),),],),),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                    color: Colors.lightBlue[900],
                    child: Text(
                      'Margaery Tyrell',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.timmana(
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                        fontSize: 25,
                      ),),),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border(
                          right: BorderSide(color: Colors.lightBlue.shade900, width: 10, style: BorderStyle.solid),
                          left: BorderSide(color: Colors.lightBlue.shade900, width: 10, style: BorderStyle.solid),
                        ),
                        image: DecorationImage(
                          image: AssetImage(
                              '/Users/JenniferTruong/StudioProjects/yale_market/assets/images/Sweater.jpeg'),
                          fit: BoxFit.cover,
                        ),),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SweaterInfo()),
                          );
                        },
                      ),),),
                  Container(
                    padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                    color: Colors.lightBlue[900],
                    child: Text(
                      "Medium Red Sweater: \$25",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.timmana(
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                        fontSize: 25,
                      ),),),],),),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                    color: Colors.lightBlue[900],
                    child: Text(
                      'Khal Drogo',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.timmana(
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border(
                          right: BorderSide(color: Colors.lightBlue.shade900, width: 10, style: BorderStyle.solid),
                          left: BorderSide(color: Colors.lightBlue.shade900, width: 10, style: BorderStyle.solid),
                        ),
                        image: DecorationImage(
                          image: AssetImage(
                              '/Users/JenniferTruong/StudioProjects/yale_market/assets/images/mirrors.jpg'),
                          fit: BoxFit.cover,
                        ),),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => MirrorsInfo()),
                          );
                        },
                      ),),),
                  Container(
                    padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                    color: Colors.lightBlue[900],
                    child: Text(
                      "Mirrors: \$40 each",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.timmana(
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                        fontSize: 25,
                      ),),),],),),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                    color: Colors.lightBlue[900],
                    child: Text(
                      'Davos Seaworth',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.timmana(
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                        fontSize: 25,
                      ),),),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border(
                          right: BorderSide(color: Colors.lightBlue.shade900, width: 10, style: BorderStyle.solid),
                          left: BorderSide(color: Colors.lightBlue.shade900, width: 10, style: BorderStyle.solid),
                        ),
                        image: DecorationImage(
                          image: AssetImage(
                              '/Users/JenniferTruong/StudioProjects/yale_market/assets/images/hikingShoes.jpeg'),
                          fit: BoxFit.cover,
                        ),),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => HikingInfo()),
                          );
                        },
                      ),),),
                  Container(
                    padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                    color: Colors.lightBlue[900],
                    child: Text(
                      "Size 8 Hiking Shoes: \$30",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.timmana(
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                        fontSize: 25,
                      ),),),],),),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                    color: Colors.lightBlue[900],
                    child: Text(
                      'Theon GreyJoy',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.timmana(
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                        fontSize: 25,
                      ),),),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border(
                          right: BorderSide(color: Colors.lightBlue.shade900, width: 10, style: BorderStyle.solid),
                          left: BorderSide(color: Colors.lightBlue.shade900, width: 10, style: BorderStyle.solid),
                        ),
                        image: DecorationImage(
                          image: AssetImage(
                              '/Users/JenniferTruong/StudioProjects/yale_market/assets/images/book.jpeg'),
                          fit: BoxFit.cover,
                        ),),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => EAPInfo()),
                          );
                        },
                      ),),),
                  Container(
                    padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                    color: Colors.lightBlue[900],
                    child: Text(
                      "Edgar Allen Poe Poetry: \$10",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.timmana(
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                        fontSize: 25,
                      ),),),],),),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';


class ShoppingCart extends StatefulWidget {
  const ShoppingCart({Key? key}) : super(key: key);
  @override
  _ShoppingCartState createState() => _ShoppingCartState();
}

class _ShoppingCartState extends State<ShoppingCart> {
  // sample string of items to add to cart prefilled
  List<String> items = ["Record Player: \$30", "French 110 Textbook: \$50", "Women’s Size 6 Jeans: \$20"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // "My Cart" appbar
      appBar: AppBar(
        backgroundColor: Colors.lightBlue[900],
        title: Padding(
          padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
          child: Text('My Cart',
            style: GoogleFonts.timmana(
              fontWeight: FontWeight.normal,
              color: Colors.white,
              fontSize: 40,
            ),
          ),
        ),
      ),
      // list items in cart with price
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(items[index],
              style: GoogleFonts.timmana(
                fontWeight: FontWeight.normal,
                color: Colors.lightBlue[900],
                fontSize: 20,
              ),
            ),
            // minus button to remove any items
            trailing: IconButton(
              icon: Icon(Icons.remove_circle_outline),
              onPressed: () {
                setState(() {
                  items.removeAt(index);
                });
              },
            ),
          );
        },
      ),
      // "check out" button at bottom of page
      bottomNavigationBar: new Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: <Widget>[
              Expanded(
                child: new MaterialButton(onPressed: (){},
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0.0, 16.0, 0.0, 0.0),
                    child: new Text("Check out", style: GoogleFonts.timmana(
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                      fontSize: 50,
                    )
                    ),
                  ),
                  color: Colors.lightBlue[900],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
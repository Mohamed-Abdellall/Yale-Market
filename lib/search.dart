import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yale_market/info_pages/profileitems.dart';
import 'package:yale_market/info_pages/feeditems.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // "Search" appbar
      appBar: AppBar(
        backgroundColor: Colors.lightBlue[900],
        title: Padding(
          padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
          child: Text('Search',
            style: GoogleFonts.timmana(
              fontWeight: FontWeight.normal,
              color: Colors.white,
              fontSize: 40,
            ),
          ),
        ),
        // when search icon is clicked, show automatic search suggestions
        leading: GestureDetector(
          onTap: () {
            showSearch(
                context: context,
                // delegate to customize the search bar
                delegate: CustomSearchDelegate()
            );
          },
          // magnifying glass as search icon
          child: Icon(Icons.search),
        ),
      ),
    );
  }
}

class CustomSearchDelegate extends SearchDelegate {
  // Demo list to show querying
  List<String> searchTerms = [
    //Like a database of SELECT all items and store it in this list
    "Record Player",
    "Prayer Plant",
    "Nike Air Max",
    "Shelf",
    "Painting",
    "Dress",
    "French 110 Textbook",
    "Skateboard",
    "Succulents",
    "Women’s Size 6 Jeans",
    "iPhone 11 Phone Case",
    "Mini Desk Christmas Tree",
    "Medium Red Sweater",
    "Mirrors",
    "Hiking Shoes",
    "Edgar Allen Poe Poetry",
  ];

  Map<String, Widget> searchTermsMap = {
    // map of items for sale with its corresponding item information page
    "Record Player": RecordInfo(),
    "Prayer Plant": PlantInfo(),
    "Nike Air Max": ShoesInfo(),
    "Shelf": ShelfInfo(),
    "Painting": PaintingInfo(),
    "Dress": DressInfo(),
    "French 110 Textbook": FrenchInfo(),
    "Skateboard": SkateboardInfo(),
    "Succulents": SucculentsInfo(),
    "Women’s Size 6 Jeans": JeansInfo(),
    "iPhone 11 Phone Case": PhoneCaseInfo(),
    "Mini Desk Christmas Tree": ChristmasInfo(),
    "Medium Red Sweater": SweaterInfo(),
    "Mirrors": MirrorsInfo(),
    "Hiking Shoes": HikingInfo(),
    "Edgar Allen Poe Poetry": EAPInfo(),
  };

  // first overwrite to clear the search text
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: Icon(Icons.clear),
      ),
    ];
  }

  // second overwrite to pop out of search menu
  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: Icon(Icons.arrow_back),
    );
  }

  // third overwrite to show query result
  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var fruit in searchTerms) {
      if (fruit.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(fruit);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        // show autofill results
        return ListTile(
          title: Text(result),
        );
      },
    );
  }

  // last overwrite to show the
  // querying process at the runtime
  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var item in searchTerms) {
      if (item.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(item);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
          // when item result(s) is clicked, redirect to item's information page
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => searchTermsMap[searchTerms[index]] ?? Container()),
            );
          },
        );
      },
    );
  }
}
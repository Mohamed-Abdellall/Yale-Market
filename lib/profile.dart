import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:yale_market/info_pages/profileitems.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  String? valueChoose;
  List listCondition = ['Brand New', 'Excellent', 'Good', 'Fair'];

  // declaring image
  File? image;
  Future pickImage(ImageSource source) async {
    try {
      // prompt user to select image from their camera roll, open camera roll
      final image = await ImagePicker().pickImage(source: source);
      if (image == null) return;

      final imageTemporary = File(image.path);
      setState(() => this.image = imageTemporary);
    } // if image doesnt work, print "unable to select image"
      on PlatformException catch (e) {
      print('Unable to select image: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            // button with plus sign for seller to list new items for sale
            floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
            floatingActionButton: Padding(
              padding: const EdgeInsets.all(15.0),
              child: FloatingActionButton(
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.add,
                  color: Colors.lightBlue[900],
                ),

                // allow button to be clicked
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        // when clicked, return form for seller to input item's information
                        return AlertDialog(
                            title: const Text('List Item for Sale',
                                textAlign: TextAlign.center),
                            content: Column(
                                children: [
                                  // ask for image
                                  image != null
                                      ? Image.file(
                                    File(image!.path),
                                    width: 200,
                                    height: 200,
                                    fit: BoxFit.cover,
                                  )
                                      : const Text('Upload Image of Item'),
                                  const SizedBox(height: 10),
                                  buildButton(
                                    title: 'Upload from Gallery',
                                    icon: Icons.image_outlined,
                                    onClicked: () => pickImage(ImageSource.gallery),
                                  ),
                                  // ask for item name/title
                                  const TextField(
                                    decoration: InputDecoration(
                                      hintText: 'Title',
                                    ),
                                  ),
                                  // ask for description
                                  const TextField(
                                    decoration: InputDecoration(
                                      hintText: 'Description',
                                    ),
                                  ),
                                  // ask for item condition in form of a dropdown menu
                                  DropdownButton<String>(
                                    hint: const Text('Condition'),
                                    dropdownColor: Colors.grey,
                                    icon: const Icon(Icons.arrow_drop_down),
                                    value: valueChoose,
                                    onChanged: (newValue) {
                                      setState(() {
                                        valueChoose = newValue;
                                      });
                                    },
                                    items: listCondition.map((valueItem) {
                                      return DropdownMenuItem<String>(
                                        value: valueItem,
                                        child: Text(valueItem),
                                      );
                                    }).toList(),
                                  ),
                                  // ask for price
                                  const TextField(
                                    decoration: InputDecoration(
                                      hintText: 'Price',
                                    ),
                                  ),
                                ]
                            ),
                            // buttons at bottom
                            actions: <Widget>[
                              // close button
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.lightBlue[900],
                                  ),
                                  onPressed: () {
                                    Navigator.pop(context); // close dialog
                                  },
                                  child: const Text('Close')),
                              // button to list for sale
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.lightBlue[900],
                                  ),
                                  onPressed: () {
                                    Navigator.pop(context);
                                    showDialog(
                                        context: context,
                                        builder: (context) {
                                          return AlertDialog(
                                              content: Text('Your item has been listed! Please allow some time for it to show up.')
                                          );
                                        }
                                    );
                                  },
                                  child: const Text('Post')),
                            ]
                        );
                      }
                  );
                },
              ),),
            // heading with user's information
            body: Column(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      color: Colors.lightBlue[900],
                      height: 215,
                      child: Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(left:12.0),
                            // user's profile picture
                            child: CircleAvatar(
                              radius: 80,
                              backgroundImage: AssetImage('/Users/jennifertruong/StudioProjects/yale_market/assets/images/Aya.JPG'),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left:25.0),
                            child: Column(
                              // padding: const EdgeInsets.all(25.0),
                              children: [
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(0.0, 50.0, 0.0, 0.0),
                                  // user's name
                                  child: Text(
                                    'Aya Kasim',
                                    textAlign: TextAlign.center,

                                    // overflow: TextOverflow.ellipsis,
                                    style: GoogleFonts.timmana(
                                      fontWeight: FontWeight.normal,
                                      color: Colors.white,
                                      fontSize: 40,
                                    ),
                                  ),
                                ),
                                // user's residential college
                                Text(
                                  'Silliman College',
                                  // textAlign: TextAlign.center,
                                  // overflow: TextOverflow.ellipsis,
                                  style: GoogleFonts.timmana(
                                    fontWeight: FontWeight.normal,
                                    color: Colors.white54,
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // create grid with items that user is selling with cross axis count of 3
                  Expanded(
                    child: GridView.count(
                      primary: false,
                      padding: const EdgeInsets.all(20),
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      crossAxisCount: 3,
                      children: <Widget>[
                        Container(
                          // if image of item is clicked, redirect to the item's information page
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => RecordInfo()),
                              );
                            },
                          ),
                          // item image
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('/Users/JenniferTruong/StudioProjects/yale_market/assets/images/RecordPlayer.JPG'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => PlantInfo()),
                              );
                            },
                          ),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('/Users/JenniferTruong/StudioProjects/yale_market/assets/images/Plant3.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => ShoesInfo()),
                              );
                            },
                          ),
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('/Users/JenniferTruong/StudioProjects/yale_market/assets/images/shoes.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => ShelfInfo()),
                              );
                            },
                          ),
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('/Users/JenniferTruong/StudioProjects/yale_market/assets/images/Shelf.JPG'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => PaintingInfo()),
                              );
                            },
                          ),
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('/Users/JenniferTruong/StudioProjects/yale_market/assets/images/Painting4.webp'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => DressInfo()),
                              );
                            },
                          ),
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('/Users/JenniferTruong/StudioProjects/yale_market/assets/images/jacket.JPG'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ]
            )
        )
    );
  }
}

// create button with both an icon and text for listing function's "upload image from gallery" button
Widget buildButton({
  required String title,
  required IconData icon,
  required VoidCallback onClicked,
}) =>
    ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size.fromHeight(50),
        backgroundColor: Colors.white,
        foregroundColor: Colors.lightBlue[900],
      ),
      onPressed: onClicked,
      child: Row(
        children: [
          Icon(icon, size: 25),
          const SizedBox(width: 16),
          Text(title),
        ],
      ),
    );
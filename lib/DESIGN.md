Yale Market DESIGN.md

To compile and run Yale Market, click the green play button on top of the terminal. The Yale Market 
app opens to the login/register page. Once the user signs in, they are taken to the feed page, 
which displays items for sale around campus. For each item, one container is dedicated 
to the Seller's name, another to the image of the item, and the last to the item's name and price. 
The image is wrapped  with a border on it's right and left side with the same color as the top and 
bottom containers in order to create an instagram-like design. The items are laid out using the Grid 
View widget. In order to display two items in each row, we set the crossAxisCount to two. To ensure 
the images change size in accordance with the size of the screen, we wrapped each container
that contains an image with an Expanded widget. If the user clicks on an item, they are taken to an 
info page of that item. We achieved this by using a Gesture Detector widget and, within it, 
Navigator.push and MaterialPageRoute to redirect the user to the item's info page.

Each info page includes a back arrow icon, a 'Message Seller' ElevatedButton and a 'Add to Cart' 
ElevatedButton. The code for the back arrow icon includes a Gesture Detector widget and, within it, 
Navigator.pop(context), which removes the current Route from the stack of routes managed by the 
Navigator. When clicking The 'Message Seller' ElevatedButton, an AlertDialog is returned, which 
prompts the user to send the Seller a message by including a TextField with hintText 'Message'. 
When the user clicks 'Send', a const AlertDialog is returned, displaying 'Your message has been 
sent to the seller!'. Similarly, a const AlertDialog is returned when the user clicks the 'Add to 
Cart' ElevatedButton, displaying 'Added to your cart! Please allow some time for it to show up.'.

The Profile page has similar code to the Feed page. The items are displayed using a Grid View widget 
with the crossAxisCount set to three. Each image is wrapped with an Expanded widget and, when clicked, 
the user is taken to the item's info page, which is achieved by using a Gesture Detector widget in 
each item's code. The Profile page also has a 'List Item for Sale' feature, which can be accessed 
by clicking the FloatingActionButton on the top right. An Alert Dialog is returned that allows the 
user to upload an image from their gallery. This was achieved by adding image_picker: ^0.8.3 to our 
pubspec.yaml file and a pickImage widget with an async function. The Alert Dialog also includes a 
DropdownButton that allows the user to categorize the condition of their item.

To have a Search feature, we first made a Map called searchTermsMap that consists of Strings of 
items with its corresponding information pages and Widgets for each item in the app. A widget called 
buildSuggestions iterates through each item in searchTermsMap and checks if the Query matches any 
items in the map, if so, the items that match are displayed in a list and if they are clicked, 
Navigator.push and MaterialPageRoute sends the user to the item’s info page.

The Cart page returns a Scaffold with an appbar and a body of a ListView.builder widget to display 
the list of items in the user’s cart. Each item in the list has a circle icon to its right that, 
when clicked, removes the item from the user’s cart. To execute this, we used a setState function 
within an onPressed function and items.removeAt(index). The bottom of the page has an extra 
bottomNavigationBar to display the total cost of the items and a MaterialButton to Checkout.
We initially wanted to make it so that when clicking on the checkout button, the user will be 
redirected to PayPal to facilitate the transaction between the buyer and seller. Unfortunately, 
implementing PayPal is currently beyond our capabilities so the checkout button has no function.

Throughout the app, we used the google font Timmana and the color lightBlue[900]. To access this 
font, we added google_fonts: ^2.0.0 to our pubspect.yaml file. 



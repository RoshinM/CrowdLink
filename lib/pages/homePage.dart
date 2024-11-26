import 'package:crowd_link/pages/inboxPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  topNavBar(){
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 22),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(25),
          bottomRight: Radius.circular(25),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'CrowdLink',
            style: GoogleFonts.outfit(fontSize: 32,
                fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              IconButton(
                icon: Icon(Icons.notifications_outlined),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.mail_outline),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => InboxPage()),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }

  homePageBody(Size size){
    return Container(
      width: size.width,
      padding: EdgeInsets.only(left: 18,top: 24,right: 18),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
      ),
      child: ListView(//Vertical Scroll Listview
        physics: NeverScrollableScrollPhysics(),
        primary: true,
        shrinkWrap: true,
        children: [
          // Make the list view here
          campaignCard(size),
          SizedBox(height: 10,),
          campaignCard(size),
          SizedBox(height: 10,),
          campaignCard(size),
        ],
      ),
    );
  }

  campaignCard(Size size){
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 400,
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color:Color(0xFFEEEEEE), width: 1),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: Image.network(
                        "https://plus.unsplash.com/premium_photo-1689539137236-b68e436248de?q=80&w=2071&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
                        ,fit: BoxFit.cover,
                        //   Image.asset("images/bg.png",fit: BoxFit.cover,)),
                      )
                  ),
                ),
                SizedBox(width: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Insan Pribadi',
                      style: GoogleFonts.outfit(fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'Organizer',
                      style: GoogleFonts.outfit(fontSize: 14,
                          color: Color(0xFF747474),
                      ),
                    )
                  ],
                )
              ]
            ),
            Stack(
              children: [
                Container(
                  width: size.width,
                  height: 165,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.network(
                        "https://media.istockphoto.com/id/1498170916/photo/a-couple-is-taking-a-bag-of-food-at-the-food-and-clothes-bank.jpg?s=1024x1024&w=is&k=20&c=ASXbBbzgxFx83RgmjnQoHssc6zTlPZlhZgSnKJhOPQ0="
                        ,fit: BoxFit.cover,
                        //   Image.asset("images/bg.png",fit: BoxFit.cover,)),
                      )
                  ),
                ),
                Positioned(
                  top: 10,
                  right: 10,
                  child: Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(color:Color(0xFFEEEEEE), width: 1),
                      color: Colors.white
                    ),
                      //TODO: Make the color Red when liked
                      child: Icon(CupertinoIcons.heart, color: Colors.black,),
                  ),
                ),
              ],
            ),
            Text(
              'Together we can: Fundraiser Gala',
              style: GoogleFonts.outfit(fontSize: 18,
                  fontWeight: FontWeight.w600),
            ),
            Row(
              children: [
                Expanded(
                  child: Stack(
                    children: [
                      Container(
                        height: 5, // Thickness of the progress bar
                        // Background color
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey[300],
                        ),
                      ),
                      FractionallySizedBox(
                        //TODO: replace constant value of widthFactor with a parameter from constructor
                        widthFactor: 0.7, // Progress as a percentage (0.7 = 70%)
                        child: Container(
                          height: 5, // Same as background height
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.green,
                          ), // Progress color
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "\$18,000/\$20,000",
                  style: GoogleFonts.outfit(fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  "12 days left",
                  style: GoogleFonts.outfit(fontSize: 16,
                      color: Color(0xFF747474)),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Category'),
                SizedBox(width: 10,),
                Text('Backed by 1,987 people')
              ],
            )
          ],
        ),
      ),
    );
  }

  //TODO: when moving to another file add another parameter to tell it which page it is in
  bottomNavBar(Size size){
    var barWidth = size.width/1.6;
    var barHeight = size.height/12;
    return Container(
      margin: EdgeInsets.only(left: size.width/15),
      width: size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: barWidth,
            height: barHeight,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(50)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //TODO: change the boolean when in another page
                bottomNavPageIcons(barWidth, barHeight,true,Icons.home_outlined),
                bottomNavPageIcons(barWidth, barHeight,false,Icons.search),
                bottomNavPageIcons(barWidth, barHeight,false,Icons.monitor_heart),
                bottomNavPageIcons(barWidth, barHeight,false,Icons.account_circle_outlined),
              ],
            ),
          ),
        ],
      ),
    );
  }

  bottomNavPageIcons(double barWidth, double barHeight, bool isSelected,
      IconData icon){
    return Container(
      width: barWidth/4.6,
      height: barHeight,
      decoration: BoxDecoration(
          color: isSelected ? Color(0xFF66CC99) : Colors.transparent,
          borderRadius: BorderRadius.circular(50)
      ),
      //if isSelected then change icon color
      child: Icon(
        icon,
        color: isSelected ? Colors.black : Color(0xFFD6D3D3),
        size: barHeight/2.4,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              //TODO:Need to make space for system top bar
              //TODO:Make topNavBar() into AppBar()
              topNavBar(),
              SizedBox(height: 1,),
              homePageBody(size),
            ],
          ),
        ),
      ),
      floatingActionButton: bottomNavBar(size),
    );
  }
}

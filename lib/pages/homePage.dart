import 'package:crowd_link/pages/inboxPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Components/campaignCard.dart';

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
          CampaignCard(
            size: size,
            title: 'Together we can: Fundraiser Gala',
            organizerName: 'Insan Pribadi',
            organizerRole: 'Organizer',
            progressText: '\$18,000/\$20,000',
            progress: 0.7, // 70% progress
            imageUrl:
            'https://media.istockphoto.com/id/1498170916/photo/a-couple-is-taking-a-bag-of-food-at-the-food-and-clothes-bank.jpg?s=1024x1024&w=is&k=20&c=ASXbBbzgxFx83RgmjnQoHssc6zTlPZlhZgSnKJhOPQ0=',
            profileImageUrl:
            'https://plus.unsplash.com/premium_photo-1689539137236-b68e436248de?q=80&w=2071&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
            timeLeft: '12 days left',
            category: 'Category',
            backers: 'Backed by 1,987 people',
          ),
          SizedBox(height: 10,),
          CampaignCard(
            size: size,
            title: 'Together we can: Fundraiser Gala',
            organizerName: 'Insan Pribadi',
            organizerRole: 'Organizer',
            progressText: '\$18,000/\$20,000',
            progress: 0.7, // 70% progress
            imageUrl:
            'https://media.istockphoto.com/id/1498170916/photo/a-couple-is-taking-a-bag-of-food-at-the-food-and-clothes-bank.jpg?s=1024x1024&w=is&k=20&c=ASXbBbzgxFx83RgmjnQoHssc6zTlPZlhZgSnKJhOPQ0=',
            profileImageUrl:
            'https://plus.unsplash.com/premium_photo-1689539137236-b68e436248de?q=80&w=2071&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
            timeLeft: '12 days left',
            category: 'Category',
            backers: 'Backed by 1,987 people',
          ),
          SizedBox(height: 10,),
          CampaignCard(
            size: size,
            title: 'Together we can: Fundraiser Gala',
            organizerName: 'Insan Pribadi',
            organizerRole: 'Organizer',
            progressText: '\$18,000/\$20,000',
            progress: 0.7, // 70% progress
            imageUrl:
            'https://media.istockphoto.com/id/1498170916/photo/a-couple-is-taking-a-bag-of-food-at-the-food-and-clothes-bank.jpg?s=1024x1024&w=is&k=20&c=ASXbBbzgxFx83RgmjnQoHssc6zTlPZlhZgSnKJhOPQ0=',
            profileImageUrl:
            'https://plus.unsplash.com/premium_photo-1689539137236-b68e436248de?q=80&w=2071&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
            timeLeft: '12 days left',
            category: 'Category',
            backers: 'Backed by 1,987 people',
          ),
        ],
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

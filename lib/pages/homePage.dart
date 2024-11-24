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
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }

  homePageBody(Size size){
    return Expanded(
        child: Container(
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
          children: [
              // Text("Make the list view here"),
              campaignCard(size),
              SizedBox(height: 10,),
              campaignCard(size),
            ],
          ),
        ),
    );
  }

  campaignCard(Size size){
    return Container(
      height: 400,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color:Color(0xFFEEEEEE), width: 1),
      ),
      child: Column(
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
          SizedBox(height: 10,),
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
                    child: Icon(CupertinoIcons.heart, color: Colors.black,),
                ),
              ),
            ],
          ),
          SizedBox(height: 10,),
          Text(
            'Together we can: Fundraiser Gala',
            style: GoogleFonts.outfit(fontSize: 18,
                fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 10,),
          Text('Put progress bar here',),
          SizedBox(height: 10,),
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
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text('Catergory'),
                SizedBox(width: 10,),
                Text('Backed by 1,987 people')
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      body: Column(
        children: [
          //Need to make space for system top bar
          topNavBar(),
          SizedBox(height: 1,),
          homePageBody(size),
        ],
      ),
    );
  }
}

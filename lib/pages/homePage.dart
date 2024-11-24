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
              Text("Make the list view here"),
            ],
          ),
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

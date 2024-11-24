
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InboxPage extends StatefulWidget {
  const InboxPage({super.key});

  @override
  State<InboxPage> createState() => _InboxPageState();
}

class _InboxPageState extends State<InboxPage> {

  final List<Map<String, dynamic>> inboxItems = [
    {
      'name': 'Insan Pribadi',
      'time': '36 mins ago',
    },
    {
      'name': 'Insan Pribadi',
      'time': '36 mins ago',
    },
    {
      'name': 'Insan Pribadi',
      'time': '36 mins ago',
    },
    {
      'name': 'Insan Pribadi',
      'time': '36 mins ago',
    },
  ];

  topNavBar() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 22),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(15),
          bottomRight: Radius.circular(15),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              IconButton(
                icon: const Icon(Icons.arrow_back_rounded),
                onPressed: () {},
              ),
              const SizedBox(width: 20),
              Text(
                'Inbox',
                style: GoogleFonts.outfit(fontSize: 32,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {},
          )
        ],
      ),
    );
  }

  Widget inboxItem(Map<String, dynamic> item) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 22),
      child: Row(
        children: [
          Container(
            width: 65,
            height: 65,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey[200],
            ),
            child: const Icon(
              Icons.person,
              color: Colors.grey,
              size: 45,
            ),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item['name'],
                  style: GoogleFonts.outfit(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  item['time'],
                  style: GoogleFonts.outfit(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  homePageBody(Size size){
    return Expanded(
      child: Container(
        width: size.width,
        padding: const EdgeInsets.only(left: 18,top: 24,right: 18),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
        ),
        child: ListView.builder(
          itemCount: inboxItems.length,
          itemBuilder: (context, index) {
            return inboxItem(inboxItems[index]);
          },
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
          topNavBar(),
          const SizedBox(height: 1,),
          homePageBody(size),
        ],
      ),
    );
  }
}
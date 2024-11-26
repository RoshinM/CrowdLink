
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Components/bottomNavBar.dart';
import '../Components/campaignCard.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({super.key});

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {

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
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.search, color: Colors.grey[600]),
                      const SizedBox(width: 8),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Search Campaign and people',
                            border: InputBorder.none,
                            hintStyle: TextStyle(color: Colors.grey[600]),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 12),
              IconButton(
                icon: const Icon(Icons.notifications_outlined),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget categoryItem(IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            shape: BoxShape.circle,
          ),
          child: Icon(icon, size: 24),
        ),
        const SizedBox(height: 8),
        Text(
          label,
          style: GoogleFonts.outfit(fontSize: 12),
        ),
      ],
    );
  }

  Widget campaignCard() {
    return Container(
      width: 240,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.grey[300]!),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: 140,
                decoration: BoxDecoration(
                  color: Colors.grey[400],
                  borderRadius: const BorderRadius.vertical(top: Radius.circular(15)),
                ),
              ),
              Positioned(
                top: 8,
                right: 8,
                child: Container(
                  padding: const EdgeInsets.all(4),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(Icons.favorite_border),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Together we can: Fundraiser Gala',
                  style: GoogleFonts.outfit(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  '\$18,432/\$20,000',
                  style: GoogleFonts.outfit(
                    color: Colors.grey[600],
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 8),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.greenAccent,
                    foregroundColor: Colors.black,
                    minimumSize: const Size(double.infinity, 40),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Text(
                    'Back this project',
                    style: GoogleFonts.outfit(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  categoriesSection() {
    return Container(
      padding: const EdgeInsets.only(left: 18, top: 10, right: 18, bottom: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Categories',
                style: GoogleFonts.outfit(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text('View all'),
              ),
            ],
          ),
          SizedBox(
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                categoryItem(Icons.school_outlined, 'Education'),
                categoryItem(Icons.sports_esports_outlined, 'Gaming'),
                categoryItem(Icons.palette_outlined, 'Art'),
                categoryItem(Icons.rice_bowl_outlined, 'Food'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  discoverSection() {
    return Container(
      padding: const EdgeInsets.only(left: 18, top: 10, right: 18, bottom: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Discover Now',
                style: GoogleFonts.outfit(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text('View all'),
              ),
            ],
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 305,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                campaignCard(),
                const SizedBox(width: 16),
                campaignCard(),
                const SizedBox(width: 16),
                campaignCard(),
                const SizedBox(width: 16),
                campaignCard(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget popularSection(Size size) {
    return Container(
      padding: const EdgeInsets.only(left: 18, top: 10, right: 18, bottom: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Popular',
                style: GoogleFonts.outfit(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text('View all'),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Column(
            children: [
              //TODO: Not sure if putting sized box is the best idea specially when generating results from database
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
        ],
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    String currentPage = 'ExplorePage';
    var size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              topNavBar(),
              const SizedBox(height: 1),
              categoriesSection(),
              const SizedBox(height: 1),
              discoverSection(),
              const SizedBox(height: 1),
              popularSection(size),
            ],
          ),
        ),
      ),
      floatingActionButton:BottomNavBar(
        size: size,
        currentPage: currentPage,
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Components/campaignCard.dart';
import '../Components/bottomNavBar.dart';

class ProfilePage extends StatefulWidget {
  // final String name;
  // final String description;
  // final int connections;
  // final int backed;
  // final int campaigns;
  // final double walletBalance;

  // const ProfilePage({
  //   super.key,
  //   required this.name,
  //   required this.description,
  //   required this.connections,
  //   required this.backed,
  //   required this.campaigns,
  //   required this.walletBalance,
  // });

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  Widget buildProfileHeader(Size size) {
    return Container(
      height: size.height / 3,
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 22),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(15),
          bottomRight: Radius.circular(15),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // Profile Info
          Row(
            children: [
              Container(
                width: 75,
                height: 75,
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
              const SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Insan Pribadi',
                    style: GoogleFonts.outfit(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'description...',
                    style: GoogleFonts.outfit(
                      fontSize: 14,
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
              const Spacer(),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.more_vert, color: Colors.black),
              ),
            ],
          ),
          const SizedBox(height: 20),
          // Stats Section
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buildProfileStat('Connections', '145'),
              buildProfileStat('Backed', '20'),
              buildProfileStat('Campaigns', '2'),
            ],
          ),
          const SizedBox(height: 16),
          // Wallet Section
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Wallet',
                style: GoogleFonts.outfit(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '\$5600',
                    style: GoogleFonts.outfit(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[300],
                      foregroundColor: Colors.black,
                    ),
                    child: Text(
                      'Top Up',
                      style: GoogleFonts.outfit(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildProfileStat(String title, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title,
          style: GoogleFonts.outfit(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          value,
          style: GoogleFonts.outfit(
            fontSize: 16,
            color: Colors.grey[600],
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    String currentPage = 'ProfilePage';
    var size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            buildProfileHeader(size),
            const SizedBox(height: 1),
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
              ),
              child: TabBar(
                tabAlignment: TabAlignment.start,
                labelPadding: EdgeInsets.only(left: 30),
                dividerColor: Colors.white,
                controller: _tabController,
                isScrollable: true,
                tabs: [
                  Tab(
                    child: Text(
                      'About',
                      style: GoogleFonts.outfit(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Campaigns',
                      style: GoogleFonts.outfit(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey[600],
                indicatorColor: Colors.black87,
                indicatorPadding: EdgeInsets.zero,
                padding: EdgeInsets.zero,
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: const [
                  AboutPage(),
                  CampaignsPage(),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: BottomNavBar(
        size: size,
        currentPage: currentPage,
      ),
    );
  }
}

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Colors.white,
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              'This is the about section. You can include information here.',
              style: GoogleFonts.outfit(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
            Text(
              'This is the about section. You can include information here.',
              style: GoogleFonts.outfit(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
            Text(
              'This is the about section. You can include information here.',
              style: GoogleFonts.outfit(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
            Text(
              'This is the about section. You can include information here.',
              style: GoogleFonts.outfit(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
            Text(
              'This is the about section. You can include information here.',
              style: GoogleFonts.outfit(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
            Text(
              'This is the about section. You can include information here.',
              style: GoogleFonts.outfit(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
            Text(
              'This is the about section. You can include information here.',
              style: GoogleFonts.outfit(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
            Text(
              'This is the about section. You can include information here.',
              style: GoogleFonts.outfit(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
            Text(
              'This is the about section. You can include information here.',
              style: GoogleFonts.outfit(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
            Text(
              'This is the about section. You can include information here.',
              style: GoogleFonts.outfit(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
            Text(
              'This is the about section. You can include information here.',
              style: GoogleFonts.outfit(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
            Text(
              'This is the about section. You can include information here.',
              style: GoogleFonts.outfit(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CampaignsPage extends StatelessWidget {
  const CampaignsPage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
        color: Colors.white,
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
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
            SizedBox(height: 10,),
          ],
        )
    );
  }
}
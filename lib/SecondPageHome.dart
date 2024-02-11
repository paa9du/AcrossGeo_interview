import 'package:across_geo_interview/SecondPageExtendedBodyCode.dart';
import 'package:across_geo_interview/ThirdPageDescription.dart';
import 'package:across_geo_interview/dimensions.dart';
import 'package:across_geo_interview/pages/AccountPage.dart';
import 'package:across_geo_interview/pages/ExplorePage.dart';
import 'package:across_geo_interview/pages/MeetupPage.dart';
import 'package:across_geo_interview/pages/ProfilePage.dart';
import 'package:across_geo_interview/pages/homePage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  // Define any mutable state variables here
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Individual Meetup'),
      ),
      body: Column(
        children: [
          Container(height: 35, child: SearchBar()),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: Dimensions.width30(context),
                right: Dimensions.width30(context),
                top: Dimensions.height20(context),
              ),
              child: PageView(
                children: [
                  ImageCard(
                    'image_assets/meeting_Two.jpg',
                    'Popular Meetups in India',
                  ),
                  ImageCard(
                    'image_assets/meeting_Three.jpg',
                    'Trending Meetups in India',
                  ),
                  ImageCard(
                    'image_assets/meeting_Five.png',
                    'G20 Summit in Bharath',
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: Dimensions.width30(context),
                ),
                child: const Text(
                  'Trending Popular People',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 10), // Adjust the spacing as needed
              Padding(
                padding: EdgeInsets.only(
                  left: Dimensions.width30(context),
                ),
                child: Container(
                  height: 150,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      ScrollableCard(
                        profileImagePath: 'image_assets/meeting_Five.png',
                        name: 'Author',
                        population: '1,000,000',
                        circleImages: const [
                          'image_assets/person6.jpg',
                          'image_assets/person2.jpg',
                          'image_assets/person3.jpg',
                          'image_assets/person4.jpg',
                          'image_assets/person5.jpg',
                        ],
                      ),
                      ScrollableCard(
                        profileImagePath: 'image_assets/meeting_Three.jpg',
                        name: 'Mentors',
                        population: '500,000',
                        circleImages: const [
                          'image_assets/person6.jpg',
                          'image_assets/person2.jpg',
                          'image_assets/person3.jpg',
                          'image_assets/person4.jpg',
                          'image_assets/person5.jpg',
                        ],
                      ),
                      ScrollableCard(
                        profileImagePath: 'image_assets/meeting_Four.jpg',
                        name: 'Employees',
                        population: '1,000,000',
                        circleImages: const [
                          'image_assets/person6.jpg',
                          'image_assets/person2.jpg',
                          'image_assets/person3.jpg',
                          'image_assets/person4.jpg',
                          'image_assets/person5.jpg',
                        ],
                      ),
                      ScrollableCard(
                        profileImagePath: 'image_assets/meeting_Two.jpg',
                        name: 'Hr`s',
                        population: '500,000',
                        circleImages: const [
                          'image_assets/person6.jpg',
                          'image_assets/person2.jpg',
                          'image_assets/person3.jpg',
                          'image_assets/person4.jpg',
                          'image_assets/person5.jpg',
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: Dimensions.width30(context),
                ),
                child: const Text(
                  'Top Trending Meetups',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 10), // Adjust the spacing as needed
              Padding(
                padding: EdgeInsets.only(
                  left: Dimensions.width30(context),
                  bottom: 10,
                ),
                child: Container(
                  height: 150,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ThirdPage(),
                            ),
                          );
                        },
                        child: TopTrendingMeets(
                          image: 'image_assets/Trending1.jpg',
                          name: '01',
                        ),
                      ),
                      SizedBox(width: 30.0),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ThirdPage(),
                            ),
                          );
                        },
                        child: TopTrendingMeets(
                          image: 'image_assets/Trending2.jpg',
                          name: '02',
                        ),
                      ),
                      SizedBox(width: 30.0),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ThirdPage(),
                              ));
                        },
                        child: TopTrendingMeets(
                          image: 'image_assets/Trending3.jpg',
                          name: '03',
                        ),
                      ),
                      SizedBox(width: 30.0),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ThirdPage(),
                              ));
                        },
                        child: TopTrendingMeets(
                          image: 'image_assets/Trending4.jpg',
                          name: '04',
                        ),
                      ),
                      SizedBox(width: 30.0),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ThirdPage(),
                              ));
                        },
                        child: TopTrendingMeets(
                          image: 'image_assets/Trending5.jpg',
                          name: '05',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
          switch (index) {
            case 0:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SecondPage()));
              break;
            case 1:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ProfileTab()));
              break;
            case 2:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MeetupTab()));
              break;
            case 3:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ExploreTab()));
              break;
            case 4:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AccountTab()));
              break;
          }
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event),
            label: 'Meetup',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}

class SearchBar extends StatefulWidget {
  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: Dimensions.width30(context),
        right: Dimensions.width30(context),
        // top: Dimensions.height10(context),
      ),
      child: Container(
        child: TextField(
          controller: _searchController,
          decoration: InputDecoration(
            hintText: 'Search',
            prefixIcon: Icon(Icons.search),
            suffixIcon: GestureDetector(
              onTap: () {
                // Handle voice search here
              },
              child: Icon(Icons.mic),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            contentPadding: EdgeInsets.symmetric(
              vertical: Dimensions.height10(context),
              horizontal: Dimensions.width15(context),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }
}

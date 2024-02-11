import 'package:across_geo_interview/SecondPageHome.dart';
import 'package:across_geo_interview/pages/AccountPage.dart';
import 'package:across_geo_interview/pages/ExplorePage.dart';
import 'package:across_geo_interview/pages/MeetupPage.dart';
import 'package:across_geo_interview/pages/ProfilePage.dart';
import 'package:flutter/material.dart';
import 'package:across_geo_interview/dimensions.dart';
import 'package:share_plus/share_plus.dart';

class ThirdPage extends StatefulWidget {
  @override
  _ThirdPageState createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  int _currentIndex = 0;
  PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Description'),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context); // Navigate back to the previous screen
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: Dimensions.width30(context),
                  right: Dimensions.width30(context),
                  top: Dimensions.height10(context),
                ),
                child: Stack(
                  children: [
                    Container(
                      height: 350,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 237, 236, 236),
                        border: Border.all(
                          color: Colors.white,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          height: 300,
                          child: PageView.builder(
                            itemCount: 4, // Number of images
                            controller: _pageController,
                            onPageChanged: (int page) {
                              setState(() {
                                _currentPage = page;
                              });
                            },
                            itemBuilder: (context, index) {
                              return ClipRRect(
                                borderRadius: BorderRadius.circular(20.0),
                                child: Image.asset(
                                  'image_assets/ThirdPage$index.jpg',
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                ),
                              );
                            },
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                            4, // Number of dots based on the number of images
                            (index) => Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Container(
                                width: 8,
                                height: 8,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: index == _currentPage
                                      ? Colors.blue
                                      : Colors.grey,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                      bottom: Dimensions.height10(context),
                      left: 0,
                      right: 0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.download_outlined, color: Colors.brown),
                          Icon(
                            Icons.bookmark_border_outlined,
                            color: Color.fromARGB(255, 203, 30, 233),
                          ),
                          Icon(Icons.favorite_border_outlined,
                              color: Colors.red),
                          Icon(Icons.comment_outlined, color: Colors.black),
                          Icon(Icons.star_outline, color: Colors.blue),
                          GestureDetector(
                              onTap: () async {
                                await Share.share('This is sharing options');
                              },
                              child: Icon(Icons.share_outlined,
                                  color: Colors.green)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: Dimensions.width30(context),
                    top: Dimensions.height15(context)),
                child: Container(
                  child: Row(
                    children: [
                      Icon(
                        Icons.bookmark_border_outlined,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text('1034'),
                      SizedBox(
                        width: 20,
                      ),
                      Icon(
                        Icons.favorite_border_outlined,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text('1034'),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 105,
                        height: 20,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 223, 221, 221),
                          border: Border.all(
                            color: Color.fromARGB(255, 223, 221, 221),
                          ),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: const Row(
                          children: [
                            SizedBox(
                              width: 3,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.blue,
                              size: 15,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.blue,
                              size: 15,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.blue,
                              size: 15,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.star_outline,
                              color: Colors.blue,
                              size: 15,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.star_outline,
                              color: Colors.blue,
                              size: 15,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text(
                        '3.5',
                        style: TextStyle(color: Colors.blue),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText('Actor Name', Colors.blue, 14),
                  CustomText('Indian Actress', Colors.black, 12),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: Dimensions.width30(context)),
                    child: Container(
                      child: Row(
                        children: [
                          Icon(
                            Icons.watch_later_outlined,
                            size: 20,
                          ),
                          CustomText('Duration 20 Min', Colors.black, 12)
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: Dimensions.width30(context)),
                    child: Container(
                      child: Row(
                        children: [
                          Icon(
                            Icons.account_balance_wallet_outlined,
                            size: 20,
                          ),
                          CustomText('Total Average Fees  ₹10,500.75',
                              Colors.black, 12)
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CustomText('About', Colors.blue, 14),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: Dimensions.width30(context)),
                    child: Container(child: ExpandableText()),
                  ),
                ],
              ),
            ],
          ),
        ),
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

class CustomText extends StatelessWidget {
  final String text;
  final Color color;
  final double size;

  CustomText(this.text, this.color, this.size);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: Dimensions.width30(context)),
      child: Container(
        alignment: Alignment.centerLeft,
        child: Text(
          text,
          style: TextStyle(fontSize: size, color: color),
        ),
      ),
    );
  }
}

class ExpandableText extends StatefulWidget {
  @override
  State<ExpandableText> createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText> {
  late String firstHalf;
  late String secondHalf;
  late BuildContext _context;
  bool hiddenText = true;
  double get textHeight => Dimensions.screenHeight(_context) / 5.63;

  @override
  void initState() {
    super.initState();
    _context = context;

    // Replace the widget.text with your desired text
    String yourText =
        "Travel dates back to antiquity where wealthy Greeks and Romans would travel for leisure to their summer homes and villas in cities such as Pompeii and Baiae.[8] While early travel tended to be slower, more dangerous, and more dominated by trade and migration, cultural and technological advances over many years have tended to mean that travel has become easier and more accessible.[9] Humankind has come a long way in transportation since Christopher Columbus sailed to the New World from Spain in 1492, an expedition which took over 10 weeks to arrive at the final destination; to the 21st century when aircraft allows travel from Spain to the United States overnight.\n\nTravel in the Middle Ages offered hardships and challenges, though it was important to the economy and to society. The wholesale sector depended (for example) on merchants dealing with/through caravans or sea-voyagers, end-user retailing often demanded the services of many itinerant peddlers wandering from village to hamlet, gyrovagues (wandering monks) and wandering friars brought theology and pastoral support to neglected areas, traveling minstrels toured, and armies ranged far and wide in various crusades and in sundry other wars.[8] Pilgrimages were common in both the European and Islamic world and involved streams of travelers both locally and internationally.";

    if (yourText.length > textHeight) {
      firstHalf = yourText.substring(0, textHeight.toInt());
      secondHalf = yourText.substring(textHeight.toInt() + 1, yourText.length);
    } else {
      firstHalf = yourText;
      secondHalf = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: secondHalf.isEmpty
          ? SmallText(
              color: Colors.black,
              Size: Dimensions.font16(context),
              text: firstHalf)
          : Column(
              children: [
                SmallText(
                  height: 1.5,
                  color: Colors.black,
                  Size: Dimensions.font16(context),
                  text: hiddenText
                      ? (firstHalf + "...")
                      : (firstHalf + secondHalf),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      hiddenText = !hiddenText;
                    });
                  },
                  child: Row(
                    children: [
                      SmallText(
                        text: hiddenText ? ('Show More') : ('Show Less'),
                        color: Colors.greenAccent,
                      ),
                      Icon(
                        hiddenText
                            ? Icons.arrow_drop_down
                            : Icons.arrow_drop_up,
                        color: Colors.greenAccent,
                      ),
                    ],
                  ),
                )
              ],
            ),
    );
  }
}

class SmallText extends StatelessWidget {
  final Color? color;
  final String text;
  double Size;
  double height;
  SmallText({
    super.key,
    this.color = const Color(0xFFccc7c5),
    required this.text,
    this.Size = 12,
    this.height = 1.2,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: Size,
        height: height,
      ),
    );
  }
}

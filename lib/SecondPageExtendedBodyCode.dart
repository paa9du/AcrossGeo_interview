import 'package:across_geo_interview/dimensions.dart';
import 'package:flutter/material.dart';

class ScrollableCard extends StatelessWidget {
  final String profileImagePath;
  final String name;
  final String population;
  // final List<Color> circleColors;
  final List<String> circleImages;

  ScrollableCard({
    required this.profileImagePath,
    required this.name,
    required this.population,
    // required this.circleColors,
    required this.circleImages,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      margin: EdgeInsets.only(right: 10), // Adjust the spacing between cards
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage(profileImagePath),
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '$population Meetups',
                      style: const TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            // const SizedBox(height: 10),
            Container(
              width: double.infinity,
              child: const Divider(
                color: Colors.black,
                thickness: 1,
                height: 10,
              ),
            ),
            const SizedBox(height: 3),
            Row(
              children: List.generate(circleImages.length, (index) {
                return Container(
                  width: 20,
                  height: 20,
                  margin: EdgeInsets.only(right: 5),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(circleImages[index]),
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              }),
            ),

            Spacer(),
            Align(
              alignment: Alignment.bottomRight,
              child: ElevatedButton(
                onPressed: () {
                  // Handle the "Send More" button press
                  print('Send More button pressed for $name');
                },
                child: const Text(
                  'Send More',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TopTrendingMeets extends StatefulWidget {
  final String image;
  final String name;
  // final VoidCallback? onTap;

  TopTrendingMeets({
    required this.image,
    required this.name,
    // this.onTap,
  });

  @override
  _TopTrendingMeetsState createState() => _TopTrendingMeetsState();
}

class _TopTrendingMeetsState extends State<TopTrendingMeets> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
//onTap: widget.onTap,
      child: Container(
        width: 150,
        // height: 250,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(widget.image),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                padding: EdgeInsets.all(8),
                color: Colors.white,
                child: Text(
                  widget.name,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ImageCard extends StatefulWidget {
  final String imagePath;
  final String imageText;

  ImageCard(this.imagePath, this.imageText);

  @override
  _ImageCardState createState() => _ImageCardState();
}

class _ImageCardState extends State<ImageCard> {
  late PageController _pageController;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentPage);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Stack(
          children: [
            PageView(
              controller: _pageController,
              onPageChanged: (int page) {
                setState(() {
                  _currentPage = page;
                });
              },
              children: [
                Image.asset(
                  widget.imagePath,
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.cover,
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    topRight: Radius.circular(10),
                  ),
                ),
                child: Text(
                  widget.imageText,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(3, (index) {
                    return Container(
                      width: 10,
                      height: 10,
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color:
                            index == _currentPage ? Colors.blue : Colors.grey,
                      ),
                    );
                  }),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}

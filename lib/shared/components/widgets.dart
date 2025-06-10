import 'package:flutter/material.dart';

AppBar onBoardingAppBar({
  required VoidCallback backarrowFunction,
  bool leading = true,
}) =>
    AppBar(
      title: Image.asset(
        "assets/images/Logo.png",
      ),
      leading: leading
          ? IconButton(
              onPressed: backarrowFunction,
              icon: Icon(
                Icons.arrow_circle_left,
                color: Color(0xffFC4A1A),
                size: 40,
              ))
          : SizedBox(),
      centerTitle: true,
    );

Widget outlineButton({
  required VoidCallback function,
  required String text,
  required double? height,
  required double? width,
  bool isEnabled = true,
}) =>
    OutlinedButton(
      onPressed: isEnabled ? function : null,
      style: ButtonStyle(
          enableFeedback: isEnabled,
          backgroundColor: WidgetStateProperty.all(
              isEnabled ? Color(0xffFC4A1A) : Color(0xaaFC4A1A)),
          fixedSize: WidgetStateProperty.all(Size(width!, height! * 0.06)),
          shape: WidgetStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)))),
      child: Center(
          child: Text(
        text,
        style: TextStyle(
            color: Colors.white, fontSize: 24, fontWeight: FontWeight.w700),
      )),
    );

Widget searchBar({
  TextEditingController? controller,
}) =>
    SizedBox(
      height: 40,
      child: TextField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          fillColor: Color(0xa1D9D9D9),
          filled: true,
          prefixIcon: Icon(Icons.search),
          hintText: "where to?",
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(21),
              borderSide: BorderSide.none),
        ),
        controller: controller,
      ),
    );

class RoundedBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const RoundedBottomNavigationBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(30),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 0,
              blurRadius: 10,
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.all(
            Radius.circular(30),
          ),
          child: NavigationBarTheme(
            data: NavigationBarThemeData(
              labelTextStyle: MaterialStateProperty.all(
                TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              ),
            ),
            child: NavigationBar(
              selectedIndex: currentIndex,
              onDestinationSelected: onTap,
              destinations: [
                NavigationDestination(
                  icon: Icon(
                    Icons.home_outlined,
                    color: Color(0xffFC4A1A),
                    size: 30,
                  ),
                  label: "Home",
                  selectedIcon: Icon(
                    Icons.home_filled,
                    color: Color(0xffFC4A1A),
                  ),
                ),
                NavigationDestination(
                  icon: Icon(
                    Icons.heart_broken_outlined,
                    color: Color(0xffFC4A1A),
                    size: 30,
                  ),
                  label: "Wishlist",
                  selectedIcon: Icon(
                    Icons.heart_broken_rounded,
                    color: Color(0xffFC4A1A),
                  ),
                ),
                NavigationDestination(
                  icon: Icon(
                    Icons.add_circle_outlined,
                    size: 50,
                    color: Color(0xffFC4A1A),
                  ),
                  label: "",
                ),
                NavigationDestination(
                  icon: Icon(
                    Icons.today_outlined,
                    color: Color(0xffFC4A1A),
                    size: 30,
                  ),
                  label: "Schedule",
                  selectedIcon: Icon(
                    Icons.today_rounded,
                    color: Color(0xffFC4A1A),
                  ),
                ),
                NavigationDestination(
                  icon: Icon(
                    Icons.person_2_outlined,
                    color: Color(0xffFC4A1A),
                    size: 30,
                  ),
                  label: "Profile",
                  selectedIcon: Icon(
                    Icons.person_2_rounded,
                    color: Color(0xffFC4A1A),
                  ),
                ),
              ],
              elevation: 0,
              backgroundColor: Colors.white,
              indicatorColor: Color(0x51FC4A1A),
            ),
          ),
        ));
  }
}

class OfferCard extends StatelessWidget {
  final String category;
  final String title;
  final String description;
  final String imageUrl;
  final double width;

  const OfferCard(
      {super.key,
      required this.category,
      required this.title,
      required this.description,
      required this.imageUrl,
      required this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width - 40,
      height: 180,
      child: Stack(alignment: Alignment.bottomLeft, children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            image: DecorationImage(
                image: NetworkImage(imageUrl), fit: BoxFit.cover),
          ),
        ),
        Container(
            decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [Color(0x88000000), Colors.transparent]),
        )),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                category,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                title,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}

class HorizontalOfferList extends StatelessWidget {
  final List<Map<String, String>> offers;
  final double width;

  const HorizontalOfferList(
      {super.key, required this.offers, required this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: offers.length,
        itemBuilder: (context, index) {
          final offer = offers[index];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: OfferCard(
              category: offer['category']!,
              title: offer['title']!,
              description: offer['description']!,
              imageUrl: offer['imageUrl']!,
              width: width,
            ),
          );
        },
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onPressed;
  const CategoryCard(
      {super.key,
      required this.title,
      required this.icon,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: 100,
            width: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(27),
              color: Color(0xffFFEDE8),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 52,
                height: 50,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(22),
                  ),
                  child: Icon(
                    icon,
                    color: Color(0xffFC4A1A),
                    size: 30,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                title,
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class CategoryCardList extends StatelessWidget {
  final List<Map<String, dynamic>> offers;

  const CategoryCardList({super.key, required this.offers});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: offers.length,
        itemBuilder: (context, index) {
          final offer = offers[index];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6.0),
            child: CategoryCard(
              title: offer['title']!,
              icon: offer['icon']!,
              //come back to onPressed after finishing search and category pages
              onPressed: () {},
            ),
          );
        },
      ),
    );
  }
}

class DestinationsCard extends StatelessWidget {
  final String title;
  final String imageUrl;
  final VoidCallback onPressed;
  final double width;
  final String rating;

  const DestinationsCard(
      {super.key,
      required this.title,
      required this.imageUrl,
      required this.onPressed,
      required this.width,
      required this.rating});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: GridTile(
          child: Stack(alignment: Alignment.bottomCenter, children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(32),
            image: DecorationImage(
                image: NetworkImage(imageUrl), fit: BoxFit.cover),
          ),
        ),
        Container(
            decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [Color(0x88000000), Colors.transparent]),
        )),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                    color: Color(0xffFC4A1A),
                    borderRadius: BorderRadius.circular(20)),
                child: IconButton(
                  icon: Icon(Icons.heart_broken_outlined,
                      color: Colors.white, size: 20),
                  onPressed: () {},
                ),
              ),
              Expanded(
                child: SizedBox(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      child: Text(
                    title,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.w600),
                  )),
                  Container(
                    height: 30,
                    width: 55,
                    decoration: BoxDecoration(
                        color: Color(0xA1FffFFF),
                        borderRadius: BorderRadius.circular(21)),
                    child: Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.amberAccent,
                        ),
                        Text(
                          rating,
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ])),
    );
  }
}

class DestinationsCardList extends StatelessWidget {
  final List<Map<String, String>> offers;
  final double width;
  final double height;

  const DestinationsCardList(
      {super.key,
      required this.offers,
      required this.width,
      required this.height});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height * 0.43,
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 16,
        ),
        padding: EdgeInsets.only(top: 3),
        itemCount: offers.length,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          final offer = offers[index];
          return DestinationsCard(
            title: offer['title']!,
            //TODO: come back to onPressed after finishing search and category pages
            onPressed: () {},
            width: width,
            imageUrl: offer['imageUrl']!,
            rating: offer['rating']!,
          );
        },
      ),
    );
  }
}

class RoundedParallelogramClipper extends CustomClipper<Path> {
  final double borderRadius;
  final double skewOffset;

  RoundedParallelogramClipper({this.borderRadius = 13, this.skewOffset = 20});

  @override
  Path getClip(Size size) {
    Path path = Path();

    RRect rrect = RRect.fromLTRBR(
      skewOffset, // Left with skew
      0, // Top
      size.width, // Right
      size.height, // Bottom
      Radius.circular(borderRadius),
    );

    path.addRRect(rrect);
    path = path.shift(Offset(-skewOffset / 2, 0)); // Shift to center the shape
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}

class PackagesCard extends StatelessWidget {
  final String title;
  final String imageUrl;
  final double width;

  const PackagesCard(
      {super.key,
        required this.title,
        required this.imageUrl,
        required this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width /3,
      height: 120,
      child: Stack(
          alignment: Alignment.bottomLeft,
          children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(imageUrl), fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(13),
          ),
        ),
        Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13),
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [Color(0x88000000), Colors.transparent]),
            )),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                    color: Color(0xffFC4A1A),
                    borderRadius: BorderRadius.circular(20)),
                child: IconButton(
                  icon: Icon(Icons.heart_broken_outlined,
                      color: Colors.white, size: 20),
                  onPressed: () {},
                ),
              ),
              Expanded(
                child: SizedBox(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      child: Text(
                        title,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.w600),
                      )),

                ],
              ),
            ],
          ),
        ),
      ]),
    );
  }
}

class PackagesCardList extends StatelessWidget {
  final List<Map<String, String>> offers;
  final double width;

  const PackagesCardList(
      {super.key, required this.offers, required this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: offers.length,
        itemBuilder: (context, index) {
          final offer = offers[index];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: PackagesCard(
              title: offer['title']!,
              imageUrl: offer['imageUrl']!,
              width: width,
            ),
          );
        },
      ),
    );
  }
}

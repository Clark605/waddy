import 'package:flutter/material.dart';
import 'package:waddy/features/homepage/home.dart';
import 'package:waddy/shared/components/widgets.dart';
import 'package:waddy/shared/constants/constants.dart';

Widget Home({
  required double height,
  required double width,
}) =>
    Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      SizedBox(
        height: height * 0.04,
      ),
      Row(
        children: [
          Expanded(
              child: Text(
            "Hi Mr, Clark",
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 22),
          )),
          Container(
            width: 85,
            height: 50,
            decoration: BoxDecoration(
              color: Color(0xffE8E8E8),
              borderRadius: BorderRadius.circular(32),
            ),
            child: Row(
              children: [
                Expanded(
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.menu,
                          color: Color(0xffFC4A1A),
                          size: 30,
                        ))),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.notifications_active_outlined,
                      size: 30,
                    )),
              ],
            ),
          )
        ],
      ),
      Text("Let's plan your special vacation"),
      SizedBox(
        height: height * 0.01,
      ),
      Row(
        children: [
          Expanded(child: searchBar()),
          SizedBox(
            width: 10,
          ),
          Container(
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(21),
                color: Color(0xa1D9D9D9),
              ),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.format_line_spacing_outlined,
                ),
              ))
        ],
      ),
      SizedBox(
        height: height * 0.02,
      ),
      Row(
        children: [
          Expanded(
            child: Text(
              "Offers",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 24,
              ),
            ),
          ),
          TextButton(
              onPressed: () {},
              child: Text(
                "See all",
                style: TextStyle(
                    color: Color(0xffFC4A1A),
                    fontSize: 16,
                    fontWeight: FontWeight.w700),
              ))
        ],
      ),
      SizedBox(
        height: height * 0.01,
      ),
      HorizontalOfferList(offers: offers, width: width),
      SizedBox(
        height: height * 0.01,
      ),
      Row(
        children: [
          Expanded(
            child: Text(
              "Categories",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 24,
              ),
            ),
          ),
          TextButton(
              onPressed: () {},
              child: Text(
                "See all",
                style: TextStyle(
                    color: Color(0xffFC4A1A),
                    fontSize: 16,
                    fontWeight: FontWeight.w700),
              ))
        ],
      ),
      SizedBox(
        height: height * 0.01,
      ),
      CategoryCardList(offers: categories),
      SizedBox(
        height: height * 0.01,
      ),
      Row(
        children: [
          Expanded(
            child: Text(
              "Destinations",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 24,
              ),
            ),
          ),
          TextButton(
              onPressed: () {},
              child: Text(
                "Explore",
                style: TextStyle(
                    color: Color(0xffFC4A1A),
                    fontSize: 16,
                    fontWeight: FontWeight.w700),
              ))
        ],
      ),
      DestinationsCardList(
        offers: destinations,
        width: width,
        height: height,
      ),
      SizedBox(
        height: height * 0.01,
      ),
      Row(
        children: [
          Expanded(
            child: Text(
              "Packages",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 24,
              ),
            ),
          ),
          TextButton(
              onPressed: () {},
              child: Text(
                "See all",
                style: TextStyle(
                    color: Color(0xffFC4A1A),
                    fontSize: 16,
                    fontWeight: FontWeight.w700),
              ))
        ],
      ),
      SizedBox(
        height: height * 0.01,
      ),
      PackagesCardList(offers: packages, width: width)
    ]);

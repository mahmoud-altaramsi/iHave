import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:i_have/core/thems_App/color_them.dart';
import 'package:i_have/core/thems_App/style_thems.dart';
import 'package:i_have/core/widget/product_title.dart';
import 'package:i_have/featuer/product_display/widgets/product_display_box.dart';

class HomeAppBody extends StatefulWidget {
  const HomeAppBody({super.key});

  @override
  State<HomeAppBody> createState() => _ShowAdsBodyState();
}

class _ShowAdsBodyState extends State<HomeAppBody> {
  int selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: selectedIndex == 1
            ? Column(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      FontAwesomeIcons.searchengin,
                      color: ColorThems().bottomColor,
                      size: 35,
                    ),
                  ),
                  const SizedBox(
                    height: 19.2,
                  ),
                  ProductTitle(
                    title: "وصل حالا",
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                      height: 630,
                      width: double.infinity,
                      color: ColorThems().scafoldColorApp,
                      child: ListView.builder(
                        itemCount: 1,
                        itemBuilder: (context, index) {
                          return const Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 15),
                            child: ProductDisplayBox(
                              description: 'هذا من فضل ربي',
                              img:
                                  'https://letsenhance.io/static/8f5e523ee6b2479e26ecc91b9c25261e/1015f/MainAfter.jpg',
                            ),
                          );
                        },
                      )),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              )
            : Center(
                child: Text(
                  "Coming soon",
                  style: StyleThems()
                      .title
                      .copyWith(color: ColorThems().white, fontSize: 60),
                ),
              ),
      ),
      bottomNavigationBar: NavigationBar(
        backgroundColor: ColorThems().continerColor,
        height: 55,
        onDestinationSelected: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
        indicatorColor: ColorThems().bottomColor,
        selectedIndex: selectedIndex,
        destinations: [
          NavigationDestination(
            selectedIcon: Icon(
              FontAwesomeIcons.handHoldingDollar,
              size: 25,
              color: ColorThems().white,
            ),
            icon: Icon(
              FontAwesomeIcons.handBackFist,
              size: 25,
              color: ColorThems().bottomColor,
            ),
            label: "Donat",
          ),
          NavigationDestination(
            selectedIcon: Icon(
              color: ColorThems().white,
              FontAwesomeIcons.houseChimneyCrack,
              size: 25,
            ),
            icon: Icon(
              color: ColorThems().bottomColor,
              FontAwesomeIcons.house,
              size: 25,
            ),
            label: "Home",
          ),
          NavigationDestination(
            selectedIcon: Icon(
              color: ColorThems().white,
              FontAwesomeIcons.userLarge,
              size: 25,
            ),
            icon: Icon(
              color: ColorThems().bottomColor,
              FontAwesomeIcons.user,
              size: 25,
            ),
            label: "User",
          ),
        ],
      ),
    );
  }
}

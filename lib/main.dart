import 'package:daily_exercices_app/constants.dart';
import 'package:daily_exercices_app/widgets/category_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mediation App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: "Cairo", scaffoldBackgroundColor: kBackgroundColor),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: Container(
        height: 70,
        color: Colors.white,
        child: Row(
          children: [
            Column(
              children: [
                SvgPicture.asset("assets/icons/calendar.svg"),
                Text("Today"),
              ],
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          Container(
            height: size.height * .50,
            decoration: BoxDecoration(
              color: Color(0XFFF5CEB8),
              image: DecorationImage(
                alignment: Alignment.centerLeft,
                image: AssetImage("assets/images/undraw_pilates_gpdb.png"),
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      alignment: Alignment.center,
                      height: 52,
                      width: 52,
                      decoration: BoxDecoration(
                        color: Color(0XFFF2BEA1),
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset("assets/icons/menu.svg"),
                    ),
                  ),
                  Text(
                    "Good Morning \nShishir",
                    style: Theme.of(context)
                        .textTheme
                        .display1!
                        .copyWith(fontWeight: FontWeight.w900, height: 1.2),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 30),
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 1),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(29.5),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Search",
                          icon: SvgPicture.asset("assets/icons/search.svg"),
                          border: InputBorder.none),
                    ),
                  ),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: .85,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      children: [
                        CategoryCard(
                          svgSrc: "assets/icons/Hamburger.svg",
                          title: "Diet Recommendation",
                          press: () {},
                        ),
                        CategoryCard(
                          svgSrc: "assets/icons/Excrecises.svg",
                          title: "Kegel Exercises",
                          press: () {},
                        ),
                        CategoryCard(
                          svgSrc: "assets/icons/Meditation.svg",
                          title: "Meditation",
                          press: () {},
                        ),
                        CategoryCard(
                          svgSrc: "assets/icons/yoga.svg",
                          title: "Yoga",
                          press: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
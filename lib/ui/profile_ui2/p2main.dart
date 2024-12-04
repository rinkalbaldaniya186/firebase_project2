import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home:  MainPage(),
    );
  }
}
class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}
final double coverHeight = 250;
final double profileHeight = 144;

class _MainPageState extends State<MainPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          buildTop(),
          buildContent(),
        ],
      ),
    );
  }
}

Widget buildTop() {
  final top = coverHeight - profileHeight / 2;
  final bottom = profileHeight / 2;
  return Stack(
    clipBehavior: Clip.none,
    alignment: Alignment.center,
    children: [
      Container(
        margin: EdgeInsets.only(bottom: bottom),
          child: buildCoverPage()
      ),
      Positioned(
        top: top,
        child: buildProfileImage(),
      )
    ],
  );
}

Widget buildCoverPage() {
  return Container(
    color: Colors.grey,
    child: Image.network(
      'https://fsa2-assets.imgix.net/assets/Legacy-Media-Imports/image1_190330_150225.jpg?auto=compress%2Cformat&crop=focalpoint&domain=fsa2-assets.imgix.net&fit=crop&fp-x=0.5&fp-y=0.5&h=800&ixlib=php-3.3.1&w=1200',
      width: double.infinity,
      height: coverHeight,
      fit: BoxFit.cover,
    ),
  );
}

Widget buildProfileImage() {
  return CircleAvatar(
    radius: profileHeight/2,
    backgroundColor: Colors.grey.shade800,
    backgroundImage: NetworkImage('https://image.lexica.art/full_jpg/ff7eae30-6545-4a75-9248-b91ba0bf771f'),
  );
}


Widget buildContent() {
  return Column(
    children: [
      SizedBox(height: 8,),
      Text(
          "James Summer",
        style: TextStyle(fontSize: 28, fontWeight: FontWeight.w900),
      ),
      SizedBox(height: 2,),
      Text(
        "Flutter Software Engineer",
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500 , color: Colors.black),
      ),
      SizedBox(height: 20,),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          buildSocialIcon(FontAwesomeIcons.slack),
          SizedBox(width: 12,),
          buildSocialIcon(FontAwesomeIcons.github),
          SizedBox(width: 12,),
          buildSocialIcon(FontAwesomeIcons.twitter),
          SizedBox(width: 12,),
          buildSocialIcon(FontAwesomeIcons.linkedin),
        ],
      ),
      SizedBox(height: 16,),
      Divider(),
      SizedBox(height: 16,),
      numbersWidget(),
      SizedBox(height: 16,),
      Divider(),
      SizedBox(height: 16,),
      buildAbout(),
    ],
  );
}

Widget buildSocialIcon(IconData icon) {
  return CircleAvatar(
    radius: 25,
    child: Material(
      shape: CircleBorder(),
      clipBehavior: Clip.hardEdge,
      color: Colors.transparent,
      child: InkWell(
        onTap: () {

        },
        child: Center(
          child: Icon(icon, size: 32,),
        ),
      ),
    ),
  );
}

class numbersWidget extends StatelessWidget {
  const numbersWidget({super.key});

  Widget buildButton( {required String text, required int value}) {
    String _text;
    int _value;
    return MaterialButton(
      padding: EdgeInsets.symmetric(vertical: 4),
      onPressed: () {},
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "$value",
            style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 28
            ),
          ),
          SizedBox(height: 2,),
          Text(
            "$text",
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 22
            ),
          ),
        ],
      ),
    );
  }

  Widget buildDevider() {
    return Container(
      height: 24,
      child: VerticalDivider(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        buildButton(text: "Project", value: 39),
          buildDevider(),
        buildButton(text: "Following", value: 529),
          buildDevider(),
        buildButton(text: "Followers", value: 5834),
      ],
    );
  }
}

Widget buildAbout() {
  return Padding(
    padding: const EdgeInsets.only(left: 15, right: 15, bottom: 15),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "About",
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.w800),
        ),
        SizedBox(
          height: 16,
        ),
        Text(
          'A Flutter developer specializes in using the Flutter framework to create cross-platform applications with a single codebase. They design, test, and build applications for mobile, web, and desktop using Dart language, ensuring a seamless, natively compiled experience.',
          style: TextStyle(fontSize: 18, height: 1.4),
        ),
      ],
    ),
  );
}


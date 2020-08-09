import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:my_portfolio/LandingPage.dart';
import 'package:my_portfolio/pages/About.dart';
import 'package:my_portfolio/pages/Contact.dart';
import 'package:my_portfolio/pages/Travel.dart';
import 'package:url_launcher/url_launcher.dart';

class NavigationBar extends StatelessWidget {
  const NavigationBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(left: 50),
            child: FlatButton(
              color: Colors.transparent,
              hoverColor: Colors.transparent,
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
                child: Text(
              'Laurin Gschwenter',
              style: TextStyle(color: Colors.black, fontSize: 30),
            )),
          ),
          SizedBox(width: 100,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _NavBarItem('About', AboutPage()),
              SizedBox(
                width: 60,
              ),
              _NavBarItem('Travel', TravelPage()),
              SizedBox(
                width: 60,
              ),
              _NavBarItem2(
                  'Instagram', 'https://www.instagram.com/lauigschw_/'),
              SizedBox(
                width: 60,
              ),
              _NavBarItem3('Contact', ContactPage()),
              SizedBox(
                width: 60,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _NavBarItem extends StatelessWidget {
  final String title;
  final Widget pageRoute;
  const _NavBarItem(this.title, this.pageRoute);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
      ),
      child: FlatButton(
        hoverColor: Color(0xffECECEC),
        splashColor: Color(0xffECECEC),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => pageRoute),
          );
        },
        child: Text(
          title,
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}

class _NavBarItem2 extends StatelessWidget {
  final String title;
  final String url;
  const _NavBarItem2(this.title, this.url);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
      ),
      child: FlatButton(
          hoverColor: Color(0xffECECEC),
          splashColor: Color(0xffECECEC),
          onPressed: () {
            launchURL(url);
          },
          child: Text(
            title,
            style: TextStyle(fontSize: 18),
          )),
    );
  }
}

void launchURL(String website) async {
  print("pressed on social media");
  if (await canLaunch(website)) {
    await launch(website);
  } else {
    throw 'Could not launch $website';
  }
}

class _NavBarItem3 extends StatelessWidget {
  final String title;
  final Widget pageRoute;
  const _NavBarItem3(this.title, this.pageRoute);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xff3F3F3F), width: 2),
        borderRadius: BorderRadius.circular(5),
      ),
      child: FlatButton(
        hoverColor: Color(0xff3F3F3F),
        height: 50,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => pageRoute),
          );
        },
        child: Text(
          title,
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}

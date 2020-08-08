import 'package:flutter/material.dart';
class NavigationBar extends StatelessWidget {
  const NavigationBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      height: 100,
      child: Row(
        children: [
          SizedBox(
            height: 80,
            width: 150,
            child: Image.asset('assets/logo.png'),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              _NavBarItem('Home'),
              SizedBox(width: 60,),
              _NavBarItem('About'),
              SizedBox(width: 60,),
              _NavBarItem('Travel'),
              SizedBox(width: 60,),
              _NavBarItem('Instagram'),
              SizedBox(width: 60,),
              _NavBarItem('Facebook'),
              SizedBox(width: 60,),
            ],
          ),
        ],
      ),
    );
  }
}

class _NavBarItem extends StatelessWidget {
  final String title;
  const _NavBarItem(this.title);

  @override
  Widget build(BuildContext context) {
    return Text(title, style: TextStyle(fontSize: 18),);
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/important/navigation_bar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            NavigationBar(),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width / 2.5,
//                    height: MediaQuery.of(context).size.height/1,
                      child: FittedBox(
                        fit: BoxFit.fitWidth,
                        child: Image.network(
                          'https://uploads-ssl.webflow.com/5d4c1763313d9a8ad85a9d65/5d54466b6e4961bf3108138c_home%20hero%20image.jpg',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 100,
                        ),
                        Container(
                            width: MediaQuery.of(context).size.width -
                                MediaQuery.of(context).size.width / 1.7,
                            child: FittedBox(
                                fit: BoxFit.fitWidth,
                                child: Text(
                                  'Ich bin Web Designer und\nentwickle Webseiten für\nIhren Erfolg.',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ))),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width -
                              MediaQuery.of(context).size.width / 1.4,
                          child: FittedBox(
                              fit: BoxFit.fitWidth,
                              child: Text(
                                'Als Freelance Web Designer gestalte ich\nmaßgeschneiderte Webseiten, damit Sie online\nlangfristig erfolgreich sind.\n100% individuell und auf Ihre Bedürfnisse\nzugeschnitten.',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                ),
                              )),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 300,
                          width: MediaQuery.of(context).size.width -
                              MediaQuery.of(context).size.width / 2.5,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              topLeft: Radius.circular(20),
                            ),
                            color: Colors.green[200],
                          ),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 30,
                                ),
                                scrollContainer(),
                                SizedBox(
                                  width: 30,
                                ),
                                scrollContainer(),
                                SizedBox(
                                  width: 30,
                                ),
                                scrollContainer(),
                                SizedBox(
                                  width: 30,
                                ),
                                scrollContainer(),
                                SizedBox(
                                  width: 30,
                                ),
                                scrollContainer(),
                                SizedBox(
                                  width: 30,
                                ),
                                scrollContainer(),
                                SizedBox(
                                  width: 30,
                                ),
                                scrollContainer(),
                                SizedBox(
                                  width: 30,
                                ),
                                scrollContainer(),
                                SizedBox(
                                  width: 30,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Container scrollContainer() {
  return Container(
    height: 250,
    width: 175,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: Colors.red[200],
    ),
  );
}

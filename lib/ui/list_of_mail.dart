import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_desing/components/side_menu.dart';
import 'package:responsive_desing/constant.dart';
import 'package:responsive_desing/defendencies/websafe.dart';
import 'package:responsive_desing/email/email_screen.dart';
import 'package:responsive_desing/models/email.dart';
import 'package:websafe_svg/websafe_svg.dart';

import '../responsive.dart';
import 'email_card.dart';

class Listofmails extends StatefulWidget {
  const Listofmails({
    Key key,
}):super(key: key);

  @override
  _ListofmailsState createState() => _ListofmailsState();
}

class _ListofmailsState extends State<Listofmails> {
  final GlobalKey<ScaffoldState> _scafoldKey =GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scafoldKey,
      drawer: ConstrainedBox(
          constraints:BoxConstraints(maxWidth: 250),
        child: SideMenu(),
      ),
      body: Container(
        decoration: BoxDecoration(   gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.3,1],
            colors: [Colors.green, Colors.blue])),
        padding: EdgeInsets.only(top: vIsWeb ? vDefaultPadding: 0),
        // color: vBgDarkColor,
        child: SafeArea(
          right: false,
          child: Column(
            children: [
              Padding(padding: const EdgeInsets.symmetric(horizontal: vDefaultPadding),
              child: Row(
                children: [
                  if (!Responsive.isDesktop(context))
                    IconButton(
                      icon: Icon(Icons.menu),
                      onPressed: () {
                        _scafoldKey.currentState.openDrawer();
                      },
                    ),
                  if (!Responsive.isDesktop(context)) SizedBox(width: 5),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(   gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          stops: [0.3,1],
                          colors: [Colors.green, Colors.blue])),
                      child: TextField(
                        onChanged: (value) {},
                        decoration: InputDecoration(
                          hintText: "Search",
                          // fillColor: vBgLightColor,
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              ),
              SizedBox(height: vDefaultPadding),
              Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: vDefaultPadding),
                child: Row(
                  children: [
                    WebsafeSvg.asset(
                      "assets/Icons/Angle down.svg",
                      width: 16,
                      color: Colors.black,
                    ),
                    SizedBox(width: 5),
                    Text(
                      "Sort by date",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    Spacer(),
                    MaterialButton(
                      minWidth: 20,
                      onPressed: () {},
                      child: WebsafeSvg.asset(
                        "assets/Icons/Sort.svg",
                        width: 16,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: vDefaultPadding),
              Expanded(
                child: ListView.builder(
                  itemCount: emails.length,
                  // On mobile this active dosen't mean anything
                  itemBuilder: (context, index) => EmailCard(
                    isActive: Responsive.isMobile(context) ? false : index == 0,
                    email: emails[index],
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              EmailScreen(email: emails[index]),
                        ),
                      );
                    },
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

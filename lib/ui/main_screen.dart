import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_desing/components/side_menu.dart';
import 'package:responsive_desing/email/email_screen.dart';

import '../responsive.dart';
import 'list_of_mail.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      body: Responsive(
        mobile: Listofmails(),
        tablet: Row(
          children: [
            Expanded(
              flex: 6,
              child: Listofmails(),
            ),
            Expanded(
                flex: 9,
                child:EmailScreen(),
            )
          ],
        ),
        desktop: Row(
          children: [
            Expanded(
                flex: _size.width > 1340 ? 2 : 4,
                child:SideMenu(),
            ),
            Expanded(
              flex: _size.width > 1340 ? 3 : 5,
              child:Listofmails(),
            ),
            Expanded(
              flex: _size.width > 1340 ? 8 : 10,
              child:EmailScreen(),
            ),
          ],
        ),
      ),
    );
  }
}

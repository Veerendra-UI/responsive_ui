import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:responsive_desing/constant.dart';
import 'package:responsive_desing/models/email.dart';
import 'package:websafe_svg/websafe_svg.dart';

import 'header.dart';

class EmailScreen extends StatelessWidget {
  const EmailScreen({
    Key key,
    this.email,
  }) : super(key: key);

  final Email email;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFFf9e4ad),
        child: SafeArea(
          child: Column(
            children: [
              Header(),
              Divider(thickness: 1),
              Expanded(
                child: SingleChildScrollView(
                  padding: EdgeInsets.all(vDefaultPadding),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        maxRadius: 24,
                        backgroundColor: Colors.transparent,
                        backgroundImage: AssetImage(emails[1].image),
                      ),
                      SizedBox(width: vDefaultPadding),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Text.rich(
                                        TextSpan(
                                          text: emails[1].name,
                                          style: Theme.of(context)
                                              .textTheme
                                              .button,
                                          children: [
                                            TextSpan(
                                                text:
                                                "  <veeruhullatti@gmail.com> to Shivu .",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .caption),
                                          ],
                                        ),
                                      ),
                                      Text(
                                        "Inspiration for our new home",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline6,
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(width: vDefaultPadding / 2),
                                Text(
                                  "Today at 15:32",
                                  style: Theme.of(context).textTheme.caption,
                                ),
                              ],
                            ),
                            SizedBox(height: vDefaultPadding),
                            LayoutBuilder(
                              builder: (context, constraints) => SizedBox(
                                width: constraints.maxWidth > 850
                                    ? 800
                                    : constraints.maxWidth,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Hello my love, \n \nThe more powerful the customer’s fantasy of owning the product, the more likely they are to buy it. Therefore, I like to think of product descriptions as storytelling and psychology, incorporating the elements of both prose writing and journalism. A “good” product description will not do. Competition is getting too fierce. It must be great!. \n \nLove you, \n\nElvia",
                                      style: TextStyle(
                                        height: 1.5,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                    SizedBox(height: vDefaultPadding),
                                    Row(
                                      children: [
                                        Text(
                                          "6 attachments",
                                          style: TextStyle(fontSize: 12),
                                        ),
                                        Spacer(),
                                        Text(
                                          "Download All",
                                          style: Theme.of(context)
                                              .textTheme
                                              .caption,
                                        ),
                                        SizedBox(width: vDefaultPadding / 4),
                                        WebsafeSvg.asset(
                                          "assets/Icons/Download.svg",
                                          height: 16,
                                          color: vGrayColor,
                                        ),
                                      ],
                                    ),
                                    Divider(thickness: 1),
                                    SizedBox(height: vDefaultPadding / 2),
                                    SizedBox(
                                      height: 200,
                                      child: StaggeredGridView.countBuilder(
                                        physics: NeverScrollableScrollPhysics(),
                                        crossAxisCount: 4,
                                        itemCount: 3,
                                        itemBuilder:
                                            (BuildContext context, int index) =>
                                            ClipRRect(
                                              borderRadius:
                                              BorderRadius.circular(8),
                                              child: Image.asset(
                                                "assets/images/Img_$index.png",
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                        staggeredTileBuilder: (int index) =>
                                            StaggeredTile.count(
                                              2,
                                              index.isOdd ? 2 : 1,
                                            ),
                                        mainAxisSpacing: vDefaultPadding,
                                        crossAxisSpacing: vDefaultPadding,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:responsive_desing/models/email.dart';
import 'package:websafe_svg/websafe_svg.dart';

import '../constant.dart';

class EmailCard extends StatelessWidget {
  const EmailCard({
    Key key,
    this.isActive = true,
    this.email,
    this.press,
  }) : super(key: key);

  final bool isActive;
  final Email email;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: vDefaultPadding, vertical: vDefaultPadding / 2),
      child: InkWell(
        onTap: press,
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(   gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.3,1],
                  colors: [Colors.green, Colors.blue])),
              padding: EdgeInsets.all(vDefaultPadding),
              // decoration: BoxDecoration(
              //   color: isActive ? vPrimaryColor : vBgDarkColor,
              //   borderRadius: BorderRadius.circular(15),
              // ),
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 32,
                        child: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          backgroundImage: AssetImage(email.image),
                        ),
                      ),
                      SizedBox(width: vDefaultPadding / 2),
                      Expanded(
                        child: Text.rich(
                          TextSpan(
                            text: "${email.name} \n",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: isActive ? Colors.white : vTextColormain,
                            ),
                            children: [
                              TextSpan(
                                text: email.subject,
                                style: Theme.of(context).textTheme.bodyText2.copyWith(
                                  color: isActive ? Colors.white : vTextColormain,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          Text(
                            email.time,
                            style: Theme.of(context).textTheme.caption.copyWith(
                              color: isActive ? Colors.cyanAccent : vTextColormain,
                            ),
                          ),
                          SizedBox(height: 5),
                          if (email.isAttachmentAvailable)
                            WebsafeSvg.asset(
                              "assets/Icons/Paperclip.svg",
                              color: isActive ? Colors.white : vTextColormain,
                            )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: vDefaultPadding / 2),
                  Text(
                    email.body,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.caption.copyWith(
                      height: 1.5,
                      color: isActive ? Colors.cyanAccent : vTextColormain,
                    ),
                  )
                ],
              ),
            ),
            //     .addNeumorphism(
            //   blurRadius: 15,
            //   borderRadius: 15,
            //   offset: Offset(5, 5),
            //   topShadowColor: Colors.white60,
            //   bottomShadowColor: Color(0xFF234395).withOpacity(0.15),
            // ),
            if (!email.isChecked)
              Positioned(
                right: 8,
                top: 8,
                child: Container(
                  height: 12,
                  width: 12,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: vBadgeColor,
                  ),
                ),
                      // .addNeumorphism(
                  // blurRadius: 4,
                  // borderRadius: 8,
                  // offset: Offset(2, 2),
                // ),
              ),
            if (email.tagColor != null)
              Positioned(
                left: 8,
                top: 0,
                child: WebsafeSvg.asset(
                  "assets/Icons/Markup filled.svg",
                  height: 18,
                  color: email.tagColor,
                ),
              )
          ],
        ),
      ),
    );
  }
}

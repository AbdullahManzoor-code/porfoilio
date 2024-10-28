import 'package:flutter/material.dart';
import 'package:porfoilio/constants.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'area_info_text.dart';
import 'coding.dart';
import 'knowledges.dart';
import 'my_info.dart';
import 'skills.dart';
import 'package:url_launcher/url_launcher.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);
 final String githubUrl = 'https://github.com/AbdullahManzoor-code';

  Future<void> _launchUrl() async {
    final Uri url = Uri.parse(githubUrl);
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $githubUrl');
    }
  }
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            MyInfo(),
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(defaultPadding),
                child: Column(
                  children: [
                    AreaInfoText(
                      title: "Residence",
                      text: "Pakistan",
                    ),
                    AreaInfoText(
                      title: "City",
                      text: "Faisalabad",
                    ),
                    AreaInfoText(
                      title: "Age",
                      text: "20",
                    ),
                    Skills(),
                    SizedBox(height: defaultPadding),
                    Coding(),
                    Knowledges(),
                    Divider(),
                    SizedBox(height: defaultPadding / 2),
                    TextButton(
                      onPressed: () {},
                      child: FittedBox(
                        
                        child: InkWell(
                          onTap: (){
                            print("Download cv");
                          },
                          child: Row(
                            children: [
                              Text(
                                "DOWNLOAD CV",
                                style: TextStyle(
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .color,
                                ),
                              ),
                              SizedBox(width: defaultPadding / 2),
                              SvgPicture.asset("assets/icons/download.svg")
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: defaultPadding),
                      color: Color(0xFF24242E),
                      child: Row(
                        children: [
                          Spacer(),
                          IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset("assets/icons/linkedin.svg"),
                          ),
                          IconButton(
                            onPressed: _launchUrl,
                            icon: SvgPicture.asset("assets/icons/github.svg"),
                          ),
                          // IconButton(
                          //   onPressed: _launchUrl,
                          //   icon: SvgPicture.asset("assets/icons/twitter.svg"),
                          // ),
                          Spacer(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

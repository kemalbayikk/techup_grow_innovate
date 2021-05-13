import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:techup/utils/app_localizations.dart';
import 'package:techup/utils/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class FollowUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 1000) {
        return Container(
            color: Colors.white,
            height: 400,
            child: Column(
              children: [
                SizedBox(
                  height: 80,
                ),
                Text(
                  AppLocalizations.of(context).translate('follow_us'),
                  style: GoogleFonts.montserrat(
                    color: kBackgroundColor,
                    fontWeight: FontWeight.w700,
                    fontSize: MediaQuery.of(context).size.width / 32,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    AppLocalizations.of(context).translate('follow_us_text'),
                    style: GoogleFonts.montserrat(
                      color: kBackgroundColor,
                      fontWeight: FontWeight.w700,
                      fontSize: MediaQuery.of(context).size.width / 64,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: Container(
                        height: 80,
                        child: GestureDetector(
                          onTap: () async {
                            if (await canLaunch(
                                "https://www.instagram.com/dsctobbetu/")) {
                              await launch(
                                  "https://www.instagram.com/dsctobbetu/");
                            }
                          },
                          child: ClipOval(
                            child: Image.asset(
                              'assets/instagram.png',
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                        ),
                      ),
                    ),
                    MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: Container(
                        height: 80,
                        child: GestureDetector(
                          onTap: () async {
                            if (await canLaunch(
                                "https://twitter.com/dsctobbetu")) {
                              await launch("https://twitter.com/dsctobbetu");
                            }
                          },
                          child: ClipOval(
                            child: Image.asset(
                              'assets/twitter.png',
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                        ),
                      ),
                    ),
                    MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: Container(
                        height: 80,
                        child: GestureDetector(
                          onTap: () async {
                            if (await canLaunch(
                                "https://www.linkedin.com/company/dsc-tobb-university-of-economics-technology/")) {
                              await launch(
                                  "https://www.linkedin.com/company/dsc-tobb-university-of-economics-technology/");
                            }
                          },
                          child: ClipOval(
                            child: Image.asset(
                              'assets/linkedin.png',
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                        ),
                      ),
                    ),
                    MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: Container(
                        height: 80,
                        child: GestureDetector(
                          onTap: () async {
                            if (await canLaunch(
                                "https://dsc.community.dev/tobb-university-of-economics-and-technology/")) {
                              await launch(
                                  "https://dsc.community.dev/tobb-university-of-economics-and-technology/");
                            }
                          },
                          child: ClipOval(
                            child: Image.asset(
                              'assets/dsc_icon.png',
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ));
      } else {
         return Container(
            color: Colors.white,
            height: 400,
            child: Column(
              children: [
                SizedBox(
                  height: 80,
                ),
                Text(
                  AppLocalizations.of(context).translate('follow_us'),
                  style: GoogleFonts.montserrat(
                    color: kBackgroundColor,
                    fontWeight: FontWeight.w700,
                    fontSize: MediaQuery.of(context).size.width / 16,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    AppLocalizations.of(context).translate('follow_us_text'),
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                      color: kBackgroundColor,
                      fontWeight: FontWeight.w700,
                      fontSize: MediaQuery.of(context).size.width / 32,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: Container(
                        height: 80,
                        child: GestureDetector(
                          onTap: () async {
                            if (await canLaunch(
                                "https://www.instagram.com/dsctobbetu/")) {
                              await launch(
                                  "https://www.instagram.com/dsctobbetu/");
                            }
                          },
                          child: ClipOval(
                            child: Image.asset(
                              'assets/instagram.png',
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                        ),
                      ),
                    ),
                    MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: Container(
                        height: 80,
                        child: GestureDetector(
                          onTap: () async {
                            if (await canLaunch(
                                "https://twitter.com/dsctobbetu")) {
                              await launch("https://twitter.com/dsctobbetu");
                            }
                          },
                          child: ClipOval(
                            child: Image.asset(
                              'assets/twitter.png',
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                        ),
                      ),
                    ),
                    MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: Container(
                        height: 80,
                        child: GestureDetector(
                          onTap: () async {
                            if (await canLaunch(
                                "https://www.linkedin.com/company/dsc-tobb-university-of-economics-technology/")) {
                              await launch(
                                  "https://www.linkedin.com/company/dsc-tobb-university-of-economics-technology/");
                            }
                          },
                          child: ClipOval(
                            child: Image.asset(
                              'assets/linkedin.png',
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                        ),
                      ),
                    ),
                    MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: Container(
                        height: 80,
                        child: GestureDetector(
                          onTap: () async {
                            if (await canLaunch(
                                "https://dsc.community.dev/tobb-university-of-economics-and-technology/")) {
                              await launch(
                                  "https://dsc.community.dev/tobb-university-of-economics-and-technology/");
                            }
                          },
                          child: ClipOval(
                            child: Image.asset(
                              'assets/dsc_icon.png',
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ));
      }
    });
  }
}

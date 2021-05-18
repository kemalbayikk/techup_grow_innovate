import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:techup/models/header_item.dart';
import 'package:techup/pages/home/components/countdown.dart';
import 'package:techup/pages/home/components/event_program.dart';
import 'package:techup/pages/home/components/header.dart';
import 'package:techup/pages/home/components/sponsors.dart';
import 'package:techup/pages/home/components/who_are_we.dart';
import 'package:techup/pages/home/components/follow_us.dart';
import 'package:techup/pages/home/components/what_is_page.dart';
import 'package:techup/utils/app_localizations.dart';
import 'package:techup/utils/constants.dart';
import 'package:techup/utils/globals.dart';
import 'package:techup/utils/screen_helper.dart';
import 'package:url_launcher/url_launcher.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  EventProgram eventProgram;
  double eventProgramHeight = 3000;
  double eventProgramHeightSmall = 3800;
  ScrollController _scrollController = ScrollController();
  var _controller = ScrollController();
  List<HeaderItem> headerItems = [
    HeaderItem(title: "Home", onTap: () => {}),
    HeaderItem(title: "Etkinlik Programı", onTap: () {}),
    HeaderItem(title: "Vizyonumuz ve Misyonumuz", onTap: () {})
  ];

  final List _isHovering = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];

  _animateToIndex(i) => _controller.animateTo(i,
      duration: Duration(seconds: 2), curve: Curves.fastOutSlowIn);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    eventProgram = EventProgram(this.callback);
  }

  void callback(double height, double heightSmall) {
    setState(() {
      this.eventProgramHeight = height;
      this.eventProgramHeightSmall = heightSmall;
    });
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 1200) {
        return Scaffold(
          key: Globals.scaffoldKey,
          appBar: PreferredSize(
            preferredSize: Size(screenSize.width, 1000),
            child: Container(
              height: 70,
              color: kCaptionColor.withOpacity(0.5),
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/dsc_icon.png"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Text(
                              ' GOOGLE DSC TOBB ETU',
                              style: TextStyle(
                                color: Colors.blueGrey.shade100,
                                fontSize: 20,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w400,
                                letterSpacing: 3,
                              ),
                            ),
                          ],
                        ),
                        /*Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: 30,
                              width: 80,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/garaj.png"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Text(
                              ' TOBB ETU GARAJ',
                              style: TextStyle(
                                color: Colors.blueGrey.shade100,
                                fontSize: 20,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w400,
                                letterSpacing: 3,
                              ),
                            ),
                          ],
                        ),*/
                      ],
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(width: screenSize.width / 8),
                          InkWell(
                            onHover: (value) {
                              setState(() {
                                value
                                    ? _isHovering[0] = true
                                    : _isHovering[0] = false;
                              });
                            },
                            onTap: () {
                              _animateToIndex(900);
                            },
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  'TechUp: Grow & Innovate',
                                  style: TextStyle(
                                    color: _isHovering[0]
                                        ? Colors.blue.shade200
                                        : Colors.white,
                                  ),
                                ),
                                SizedBox(height: 5),
                                Visibility(
                                  maintainAnimation: true,
                                  maintainState: true,
                                  maintainSize: true,
                                  visible: _isHovering[0],
                                  child: Container(
                                    height: 2,
                                    width: 20,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(width: screenSize.width / 20),
                          InkWell(
                            onHover: (value) {
                              setState(() {
                                value
                                    ? _isHovering[1] = true
                                    : _isHovering[1] = false;
                              });
                            },
                            onTap: () {
                              _animateToIndex(1700);
                            },
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  AppLocalizations.of(context).translate('event_program'),
                                  style: TextStyle(
                                    color: _isHovering[1]
                                        ? Colors.blue[200]
                                        : Colors.white,
                                  ),
                                ),
                                SizedBox(height: 5),
                                Visibility(
                                  maintainAnimation: true,
                                  maintainState: true,
                                  maintainSize: true,
                                  visible: _isHovering[1],
                                  child: Container(
                                    height: 2,
                                    width: 20,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(width: screenSize.width / 20),
                          InkWell(
                            onHover: (value) {
                              setState(() {
                                value
                                    ? _isHovering[2] = true
                                    : _isHovering[2] = false;
                              });
                            },
                            onTap: () {
                              _animateToIndex(eventProgramHeight + 1700);
                            },
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  AppLocalizations.of(context).translate('our_sponsors'),
                                  style: TextStyle(
                                    color: _isHovering[2]
                                        ? Colors.blue[200]
                                        : Colors.white,
                                  ),
                                ),
                                SizedBox(height: 5),
                                Visibility(
                                  maintainAnimation: true,
                                  maintainState: true,
                                  maintainSize: true,
                                  visible: _isHovering[2],
                                  child: Container(
                                    height: 2,
                                    width: 20,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(width: screenSize.width / 20),
                          InkWell(
                            onHover: (value) {
                              setState(() {
                                value
                                    ? _isHovering[3] = true
                                    : _isHovering[3] = false;
                              });
                            },
                            onTap: () {
                              _animateToIndex(eventProgramHeight + 2700);
                            },
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  AppLocalizations.of(context).translate('who_are_we'),
                                  style: TextStyle(
                                    color: _isHovering[3]
                                        ? Colors.blue[200]
                                        : Colors.white,
                                  ),
                                ),
                                SizedBox(height: 5),
                                Visibility(
                                  maintainAnimation: true,
                                  maintainState: true,
                                  maintainSize: true,
                                  visible: _isHovering[3],
                                  child: Container(
                                    height: 2,
                                    width: 20,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          body: RawScrollbar(
            isAlwaysShown: true,
            thumbColor: Colors.white,
            controller: _controller,
              child: SingleChildScrollView(
            controller: _controller,
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      height: 800,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        image: DecorationImage(
                          image: AssetImage("assets/backg.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      height: 870,
                      width: 5000,
                      child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Countdown()),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Column(
                        //crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 300,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 220,
                            child: Column(
                              //crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                SizedBox(height: 20),
                                Padding(
                                  padding: const EdgeInsets.only(right: 16.0),
                                  child: Text(
                                    "22-23-24 ${AppLocalizations.of(context).translate('may')} 2021",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.montserrat(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 32.0,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 16.0),
                                  child: Text(
                                    "TechUp: Grow & Innovate",
                                    style: GoogleFonts.montserrat(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 64,
                                    ),
                                  ),
                                ),
                                TextButton(
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.black),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Text(
                                      AppLocalizations.of(context).translate('register_to_event'),
                                      style: GoogleFonts.montserrat(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 32,
                                      ),
                                    ),
                                  ),
                                  onPressed: () async {
                                    if (await canLaunch(
                                        "https://forms.gle/YkSMJhWiaL7QnmaF9")) {
                                      await launch(
                                          "https://forms.gle/YkSMJhWiaL7QnmaF9");
                                    }
                                  },
                                ),
                                /* Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.mic_external_on,
                            color: Colors.white),
                          Text(
                          "  15 BİRBİRİNDEN DEĞERLİ KONUŞMACI",
                          style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            fontSize:
                                MediaQuery.of(context).size.width /
                                    70,
                          ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.book, color: Colors.white),
                          Text(
                          "  BİRÇOK EĞİTİM",
                          style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            fontSize:
                                MediaQuery.of(context).size.width /
                                    70,
                          ),
                          ),
                        ],
                      ),*/
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 100,
                ),
                WhatIsPage(),

                EventProgram(this.callback),
                SizedBox(
                  height: 150,
                ),
                Sponsors(),
                WhoAreWe(),
                FollowUs(),
              ],
            ),
          )),
        );
      } else {
        return Scaffold(
          key: Globals.scaffoldKey,
          appBar: AppBar(
            backgroundColor: kCaptionColor.withOpacity(0.5),
            elevation: 0,
            title: Row(
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/dsc_icon.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Text(
                          ' GOOGLE DSC TOBB ETU',
                          style: TextStyle(
                            color: Colors.blueGrey.shade100,
                            fontSize: 20,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w400,
                            letterSpacing: 3,
                          ),
                        ),
                      ],
                    ),
                    /*Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 30,
                          width: 80,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/garaj.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Text(
                          'TOBB ETU GARAJ',
                          style: TextStyle(
                            color: Colors.blueGrey.shade100,
                            fontSize: 20,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w400,
                            letterSpacing: 3,
                          ),
                        ),
                      ],
                    ),*/
                  ],
                ),
              ],
            ),
          ),
          endDrawer: Drawer(
            child: Container(
              color: kCaptionColor,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        _animateToIndex(950.0);
                      },
                      child: Text(
                        'TechUp: Grow & Innovate',
                        style: TextStyle(color: Colors.white, fontSize: 22),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                      child: Divider(),
                    ),
                    InkWell(
                      onTap: () {
                        _animateToIndex(2300.0);
                      },
                      child: Text(
                        AppLocalizations.of(context).translate('event_program'),
                        style: TextStyle(color: Colors.white, fontSize: 22),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                      child: Divider(),
                    ),
                    InkWell(
                      onTap: () {
                        _animateToIndex(eventProgramHeightSmall + 2300);
                      },
                      child: Text(
                        AppLocalizations.of(context).translate('our_sponsors'),
                        style: TextStyle(color: Colors.white, fontSize: 22),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                      child: Divider(),
                    ),
                    InkWell(
                      onTap: () {
                        _animateToIndex(eventProgramHeightSmall + 3200);
                      },
                      child: Text(
                        AppLocalizations.of(context).translate('who_are_we'),
                        style: TextStyle(color: Colors.white, fontSize: 22),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          body: RawScrollbar(
            isAlwaysShown: true,
            thumbColor: Colors.white,
            controller: _controller,
              child: SingleChildScrollView(
            controller: _controller,
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      height: 800,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        image: DecorationImage(
                          image: AssetImage("assets/backg.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      height: 850,
                      width: MediaQuery.of(context).size.width,
                      child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Countdown()),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 300,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 320,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(height: 20),
                                Text(
                                  "22-23-24 ${AppLocalizations.of(context).translate('may')} 2021",
                                  style: GoogleFonts.montserrat(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 32.0,
                                  ),
                                ),
                                Text(
                                  "TechUp: Grow & Innovate",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.montserrat(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 64,
                                  ),
                                ),
                                TextButton(
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.black),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Text(
                                      AppLocalizations.of(context).translate('register_to_event'),
                                      style: GoogleFonts.montserrat(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 32,
                                      ),
                                    ),
                                  ),
                                  onPressed: () async {
                                    if (await canLaunch(
                                        "https://forms.gle/YkSMJhWiaL7QnmaF9")) {
                                      await launch(
                                          "https://forms.gle/YkSMJhWiaL7QnmaF9");
                                    }
                                  },
                                ),
                                /* Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.mic_external_on,
                            color: Colors.white),
                          Text(
                          "  15 BİRBİRİNDEN DEĞERLİ KONUŞMACI",
                          style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            fontSize:
                                MediaQuery.of(context).size.width /
                                    70,
                          ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.book, color: Colors.white),
                          Text(
                          "  BİRÇOK EĞİTİM",
                          style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            fontSize:
                                MediaQuery.of(context).size.width /
                                    70,
                          ),
                          ),
                        ],
                      ),*/
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 100,
                ),
                                WhatIsPage(),
                EventProgram(this.callback),
                SizedBox(
                  height: 150,
                ),
                Sponsors(),
                WhoAreWe(),
                FollowUs(),
              ],
            ),
          )),
        );
      }
    });
  }

  Widget buildMobileHeader() {
    return SafeArea(
        child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          GestureDetector(
              onTap: () {
                Globals.scaffoldKey.currentState.openEndDrawer();
              },
              child:
                  Icon(FlutterIcons.menu_fea, color: Colors.white, size: 28.0))
        ],
      ),
    ));
  }

  Widget buildHeader() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [HeaderRow()],
        ));
  }
}

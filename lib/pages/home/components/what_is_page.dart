import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:techup/utils/app_localizations.dart';
import 'package:techup/utils/constants.dart';

class WhatIsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 1000) {
        return Container(
          width: 2000,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 400,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          AppLocalizations.of(context).translate('what_is_one'),
                          style: GoogleFonts.montserrat(
                            color: Color.fromRGBO(40, 234, 240, 1),
                            fontWeight: FontWeight.w700,
                            fontSize: 32,
                          ),
                        ),
                        Container(
                            width: 500,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 16.0),
                              child: Text(
                                AppLocalizations.of(context).translate('what_is_one_text'),
                                style: GoogleFonts.montserrat(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w200,
                                  fontSize: 20,
                                ),
                              ),
                            ))
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 100,
                  ),
                  Container(
                    height: 400,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          AppLocalizations.of(context).translate('what_is_two'),
                          style: GoogleFonts.montserrat(
                            color: Color.fromRGBO(40, 234, 240, 1),
                            fontWeight: FontWeight.w700,
                            fontSize: 32,
                          ),
                        ),
                        Container(
                            width: 700,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 16.0),
                              child: Text(
                                AppLocalizations.of(context).translate('what_is_two_text'),
                                style: GoogleFonts.montserrat(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w200,
                                  fontSize: 20,
                                ),
                              ),
                            ))
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 400,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 500,
                          child: Text(
                            AppLocalizations.of(context).translate('what_is_three'),
                            style: GoogleFonts.montserrat(
                              color: Color.fromRGBO(40, 234, 240, 1),
                              fontWeight: FontWeight.w700,
                              fontSize: 32,
                            ),
                          ),
                        ),
                        Container(
                            width: 500,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 16.0),
                              child: Text(
                                AppLocalizations.of(context).translate('what_is_three_text'),
                                style: GoogleFonts.montserrat(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w200,
                                  fontSize: 20,
                                ),
                              ),
                            ))
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 100,
                  ),
                  Container(
                    height: 400,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          AppLocalizations.of(context).translate('what_is_four'),
                          style: GoogleFonts.montserrat(
                            color: Color.fromRGBO(40, 234, 240, 1),
                            fontWeight: FontWeight.w700,
                            fontSize: 32,
                          ),
                        ),
                        Container(
                            width: 700,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 16.0),
                              child: Text(
                                AppLocalizations.of(context).translate('what_is_four_text'),
                                style: GoogleFonts.montserrat(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w200,
                                  fontSize: 20,
                                ),
                              ),
                            ))
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        );
      } else {
        return Container(
          width: 2000,
          child: Column(
            children: [
              Container(
                height: 300,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      AppLocalizations.of(context).translate('what_is_one'),
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(
                        color: Color.fromRGBO(40, 234, 240, 1),
                        fontWeight: FontWeight.w700,
                        fontSize: 32,
                      ),
                    ),
                    Container(
                      width: 700,
                      height: 200,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: Text(
                          AppLocalizations.of(context).translate('what_is_one_text'),
                          textAlign: TextAlign.center,
                          style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontWeight: FontWeight.w200,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),

              Container(
                height: 500,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      AppLocalizations.of(context).translate('what_is_two'),
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(
                        color: Color.fromRGBO(40, 234, 240, 1),
                        fontWeight: FontWeight.w700,
                        fontSize: 32,
                      ),
                    ),
                    Container(
                      width: 700,
                      height: 400,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: Text(
                         AppLocalizations.of(context).translate('what_is_two_text'),
                          textAlign: TextAlign.center,
                          style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontWeight: FontWeight.w200,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),

              Container(
                height: 300,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      AppLocalizations.of(context).translate('what_is_three'),
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(
                        color: Color.fromRGBO(40, 234, 240, 1),
                        fontWeight: FontWeight.w700,
                        fontSize: 32,
                      ),
                    ),
                    Container(
                      width: 700,
                      height: 150,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: Text(
                         AppLocalizations.of(context).translate('what_is_three_text'),
                          textAlign: TextAlign.center,
                          style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontWeight: FontWeight.w200,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 100,
              ),
              Container(
                height: 300,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      AppLocalizations.of(context).translate('what_is_four'),
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(
                        color: Color.fromRGBO(40, 234, 240, 1),
                        fontWeight: FontWeight.w700,
                        fontSize: 32,
                      ),
                    ),
                    Container(
                      width: 700,
                      height: 150,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: Text(
                          AppLocalizations.of(context).translate('what_is_four_text'),
                          textAlign: TextAlign.center,
                          style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontWeight: FontWeight.w200,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        );
      }
    });
  }
}

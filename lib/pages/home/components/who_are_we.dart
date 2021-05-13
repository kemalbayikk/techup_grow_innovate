import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:techup/utils/app_localizations.dart';
import 'package:techup/utils/constants.dart';

class WhoAreWe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 1000) {
        return Container(
            child: Column(
          children: [
            Text(
              AppLocalizations.of(context).translate('who_are_we_big'),
              style: GoogleFonts.montserrat(
                color: kCaptionColor,
                fontWeight: FontWeight.w700,
                fontSize: MediaQuery.of(context).size.width / 32,
              ),
            ),
            SizedBox(height: 100),

            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 1.8,
                  child: Text(
                    AppLocalizations.of(context).translate('who_are_we_text'),
                    style: GoogleFonts.montserrat(
                      color: kCaptionColor,
                      fontWeight: FontWeight.w700,
                      fontSize: MediaQuery.of(context).size.width / 80,
                    ),
                    maxLines: 4,
                    textAlign: TextAlign.justify,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),

            SizedBox(height: 100),
            /*Row(
              children: [
                SizedBox(
                  width: 50,
                ),
                Text(
                  "VİZYONUMUZ ",
                  style: GoogleFonts.montserrat(
                    color: kDangerColor,
                    fontWeight: FontWeight.w700,
                    fontSize: MediaQuery.of(context).size.width / 32,
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 15,
                ),
                Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width / 1.8,
                      child: Text(
                        "TechUp Grow & Innovate ile, başta TOBB ETÜ öğrencileri olmak üzere genç girişimcilerde farkındalık yaratarak değişime öncülük etmeyi, TOBB ETÜ’yü girişimcilik ekosisteminin değerli bir destekçisi olarak güçlendirmeyi hedefliyoruz.",
                        style: GoogleFonts.montserrat(
                          color: kCaptionColor,
                          fontWeight: FontWeight.w700,
                          fontSize: MediaQuery.of(context).size.width / 80,
                        ),
                        maxLines: 4,
                        textAlign: TextAlign.justify,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ],
            ),*/
            SizedBox(height: 100),
          ],
        ));
      } else {
        return Container(
            child: Column(
          children: [
            Text(
              AppLocalizations.of(context).translate('who_are_we_big'),
              style: GoogleFonts.montserrat(
                color: kCaptionColor,
                fontWeight: FontWeight.w700,
                fontSize: MediaQuery.of(context).size.width / 12,
              ),
            ),
            SizedBox(height: 100),
            Column(
              children: [
                SizedBox(
                  width: 50,
                ),

                Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width / 1.2,
                      child: Text(
                        AppLocalizations.of(context).translate('who_are_we_text'),
                        style: GoogleFonts.montserrat(
                          color: kCaptionColor,
                          fontWeight: FontWeight.w700,
                          fontSize: MediaQuery.of(context).size.width / 32,
                        ),
                        maxLines: 8,
                        textAlign: TextAlign.justify,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ],
            ), 

           /* SizedBox(height: 100),
            Column(
              children: [
                SizedBox(
                  width: 50,
                ),
                Text(
                  "VİZYONUMUZ ",
                  style: GoogleFonts.montserrat(
                    color: kDangerColor,
                    fontWeight: FontWeight.w700,
                    fontSize: MediaQuery.of(context).size.width / 16,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 25,
                ),
                Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width / 1.2,
                      child: Text(
                        "TechUp Grow & Innovate ile, başta TOBB ETÜ öğrencileri olmak üzere genç girişimcilerde farkındalık yaratarak değişime öncülük etmeyi, TOBB ETÜ’yü girişimcilik ekosisteminin değerli bir destekçisi olarak güçlendirmeyi hedefliyoruz.",
                        style: GoogleFonts.montserrat(
                          color: kCaptionColor,
                          fontWeight: FontWeight.w700,
                          fontSize: MediaQuery.of(context).size.width / 32,
                        ),
                        maxLines: 8,
                        textAlign: TextAlign.justify,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ],
            ),*/
            SizedBox(height: 100),
          ],
        ));
      }
    });
  }
}

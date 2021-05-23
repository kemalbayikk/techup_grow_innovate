import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:techup/models/sponsor.dart';
import 'package:techup/pages/home/components/sponsor_card.dart';
import 'package:techup/utils/app_localizations.dart';
import 'package:techup/utils/constants.dart';

class Sponsors extends StatelessWidget {
  var sponsorsList = [
    new Sponsor(
        "https://developers.google.com/", "assets/google_developers.png", 700, 700),
    new Sponsor(
        "https://www.webtekno.com/", "assets/webtekno-logo.png", 1200, 500),
    new Sponsor("https://www.rovenma.com/", "assets/rovenma.jpeg", 1500, 1000),
    new Sponsor("http://newyorkbusinessexcellence.com/",
        "assets/newyork_business.jpg", 600, 500),
    new Sponsor("https://www.etu.edu.tr/tr", "assets/tobb_etu.png", 600, 500),
    new Sponsor("https://ogrencikariyeri.com/", "assets/ogrenci_kariyeri.png",
        1000, 400),
    new Sponsor("https://paycell.com.tr/", "assets/paycell.png", 400, 500),
    new Sponsor("https://etugaraj.org/#", "assets/garaj.png", 1000, 500),
    new Sponsor(
        "https://www.bthaber.com/", "assets/bthaber_logo-min.png", 400, 150),
        new Sponsor(
        "https://teknoki.net/", "assets/teknoki.jpeg", 500, 500),
  ];

  var sponsorsListSecond = [
    new Sponsor("https://www.coffeeproject.com.tr/",
        "assets/coffee_project.png", 700, 100),
    new Sponsor("https://www.cozumpark.com/", "assets/cozumpark.png", 700, 100),
    new Sponsor("https://www.instagram.com/endustrimuhendisligi/?hl=tr",
        "assets/endustri_muhendisligi.jpg", 500, 500),
    new Sponsor("https://www.instagram.com/industrialstudent/?hl=tr",
        "assets/industrial_student.png", 500, 500),
    new Sponsor("https://uni-path.com/", "assets/unipath.png", 500, 500),
    new Sponsor(
        "https://www.redbull.com/tr-tr/energydrink?utm_source=google&utm_medium=cpc&utm_campaign=33173_V2_P_2021_TUR_BRAND_TOTSEM&utm_content=redbull_search_brand&rbcid=11966864787&utm_source=Adwords&utm_medium=g&utm_campaign=11966864787&utm_content=515656545117&gclid=CjwKCAjw7diEBhB-EiwAskVi1wP-OJR0N8OhFyp-J_U6HLW63-SoolNto65ItQ15dcfw9oZtIq70zBoCQ74QAvD_BwE",
        "assets/redbull.png",
        800,
        500),
    new Sponsor("https://cengturkey.com/", "assets/ceng.png", 500, 500),
    new Sponsor("https://www.aybaklar.com/", "assets/aybaklar.png", 1200, 500),
    new Sponsor("https://www.bilimsenligi.com/", "assets/bilimsenligi.png", 1200, 500),
  ];
  @override
  Widget build(BuildContext context) => Column(
        children: [
          Container(
            child: Text(
              AppLocalizations.of(context).translate('our_sponsors_big'),
              style: GoogleFonts.montserrat(
                color: kCaptionColor,
                fontWeight: FontWeight.w700,
                fontSize: MediaQuery.of(context).size.width < 1000
                    ? MediaQuery.of(context).size.width / 12
                    : MediaQuery.of(context).size.width / 32,
              ),
            ),
          ),
          SizedBox(height: 100),
          Container(
            child: CarouselSlider(
              options: CarouselOptions(
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 2),
                enableInfiniteScroll: true,
                initialPage: 1,
                height: 200,
                viewportFraction:
                    MediaQuery.of(context).size.width < 1200 ? 0.7 : 0.4,
                disableCenter: true,
                aspectRatio: 16 / 16,
              ),
              items: sponsorsList
                  .map((sponsor) => SponsorCard(sponsor: sponsor))
                  .toList(growable: false),
            ),
          ),
          SizedBox(height: 100),
          Container(
            child: CarouselSlider(
              options: CarouselOptions(
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 2),
                enableInfiniteScroll: true,
                initialPage: 1,
                height: 200,
                viewportFraction:
                    MediaQuery.of(context).size.width < 1200 ? 0.7 : 0.4,
                disableCenter: true,
                aspectRatio: 16 / 16,
              ),
              items: sponsorsListSecond
                  .map((sponsor) => SponsorCard(sponsor: sponsor))
                  .toList(growable: false),
            ),
          ),
          SizedBox(height: 100),
        ],
      );
}

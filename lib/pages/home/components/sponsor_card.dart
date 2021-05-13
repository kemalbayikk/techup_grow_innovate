import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:techup/models/sponsor.dart';

class SponsorCard extends StatelessWidget {
  const SponsorCard({
    @required this.sponsor,
    Key key,
  })  : assert(sponsor != null),
        super(key: key);

  final Sponsor sponsor;

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(5),
        child: Container(
          width: sponsor.containerWidth,
          child: Card(
            elevation: 5,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
            child: InkWell(
              borderRadius: const BorderRadius.all(Radius.circular(15)),
              onTap: _onTapCard,
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Center(
                  child:FittedBox(
                                    child: Container(
                        height: sponsor.containerHeight,
                        width: sponsor.containerWidth,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(sponsor.sponsorLogo),
                            fit: BoxFit.fill,
                          ),
                        ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      );

  Future<void> _onTapCard() async {
    print(sponsor.sponsorWebsite);
    if (await canLaunch(sponsor.sponsorWebsite)) {
      print("can launch");
      await launch(sponsor.sponsorWebsite);
    }
  }
}
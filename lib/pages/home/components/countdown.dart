import 'package:flutter/material.dart';
import 'package:flutter_countdown_timer/current_remaining_time.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:techup/utils/app_localizations.dart';
import 'package:techup/utils/constants.dart';

class Countdown extends StatefulWidget {
  @override
  _CountdownState createState() => _CountdownState();
}

class _CountdownState extends State<Countdown> {
  int remainingDays;
  int remainingHours;
  int remainingMinutes;
  int remainingSeconds;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 1200) {
        return Container(
          alignment: Alignment.bottomCenter,
          child: CountdownTimer(
            endTime: DateTime(2021, 5, 22, 12, 30).millisecondsSinceEpoch,
            widgetBuilder: (_, CurrentRemainingTime time) {
              if (time == null) {
                return countDownCard(0, 0, 0, 0);
              } else {
                if (time.days == null) {
                  remainingDays = 0;
                } else {
                  remainingDays = time.days;
                }
                if (time.hours == null) {
                  remainingHours = 0;
                } else {
                  remainingHours = time.hours;
                }
                if (time.min == null) {
                  remainingMinutes = 0;
                } else {
                  remainingMinutes = time.min;
                }
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    countDownCard(remainingDays, remainingHours, remainingMinutes, time.sec),
                  ],
                );

                /*countDownWidget(
                    remainingDays, remainingHours, remainingMinutes, time.sec);*/
              }
              /*Text(
                'days: [ ${time.days} ], hours: [ ${time.hours} ], min: [ ${time.min} ], sec: [ ${time.sec} ]',
                style: TextStyle(color: Colors.white),
              );*/
            },
          ),
        );
      } else {
        return Container(
          alignment: Alignment.bottomCenter,
          child: CountdownTimer(
            endTime: DateTime(2021, 5, 22, 12, 30).millisecondsSinceEpoch,
            widgetBuilder: (_, CurrentRemainingTime time) {
              if (time == null) {
                return countDownCardSmaller(0, 0, 0, 0);
              } else {
                if (time.days == null) {
                  remainingDays = 0;
                } else {
                  remainingDays = time.days;
                }
                if (time.hours == null) {
                  remainingHours = 0;
                } else {
                  remainingHours = time.hours;
                }
                if (time.min == null) {
                  remainingMinutes = 0;
                } else {
                  remainingMinutes = time.min;
                }
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    countDownCardSmaller(remainingDays, remainingHours, remainingMinutes, time.sec),
                  ],
                );

                /*countDownWidget(
                    remainingDays, remainingHours, remainingMinutes, time.sec);*/
              }
              /*Text(
                'days: [ ${time.days} ], hours: [ ${time.hours} ], min: [ ${time.min} ], sec: [ ${time.sec} ]',
                style: TextStyle(color: Colors.white),
              );*/
            },
          ),
        );
      }
    });
  }

  Widget countDownCard(int day, int hour, int minute, int second) {
    /*return  CircularPercentIndicator(
          radius: MediaQuery.of(context).size.width / 10,
          lineWidth: 10,
          //percent: ((20 - days) * 1) / 20,
          center: new Text(
            "$count $time",
            style: GoogleFonts.montserrat(
              color: Colors.white,
              fontWeight: FontWeight.w700,
              fontSize: MediaQuery.of(context).size.width / 72,
            ),
          ),
          progressColor: Colors.green,
        );*/
    return Container(
      alignment: Alignment.centerRight,
        width: MediaQuery.of(context).size.width / 2,
        height: 130,
        decoration: BoxDecoration(
            color: Colors.black),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Text(
                  " $day",
                  style: GoogleFonts.montserrat(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: MediaQuery.of(context).size.width / 32,
                  ),
                ),
                Text(
                  AppLocalizations.of(context).translate('day'),
                  style: GoogleFonts.montserrat(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: MediaQuery.of(context).size.width / 48,
                  ),
                )
              ],
            ),
            Column(
              children: [
                Text(
                  " $hour",
                  style: GoogleFonts.montserrat(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: MediaQuery.of(context).size.width / 32,
                  ),
                ),
                Text(
                  AppLocalizations.of(context).translate('hour'),
                  style: GoogleFonts.montserrat(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: MediaQuery.of(context).size.width / 48,
                  ),
                )
              ],
            ),
            Column(
              children: [
                Text(
                  " $minute",
                  style: GoogleFonts.montserrat(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: MediaQuery.of(context).size.width / 32,
                  ),
                ),
                Text(
                  AppLocalizations.of(context).translate('minute'),
                  style: GoogleFonts.montserrat(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: MediaQuery.of(context).size.width / 48,
                  ),
                )
              ],
            ),
            Column(
              children: [
                Text(
                  " $second",
                  style: GoogleFonts.montserrat(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: MediaQuery.of(context).size.width / 32,
                  ),
                ),
                Text(
                 AppLocalizations.of(context).translate('second'),
                  style: GoogleFonts.montserrat(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: MediaQuery.of(context).size.width / 48,
                  ),
                )
              ],
            ),
          ],
        ),
      
    );
  }

  Widget countDownCardSmaller(int day, int hour, int minute, int second) {
 return Container(
   alignment: Alignment.center,
   width: 400,
   height: 70,
   decoration: BoxDecoration(
       color: Colors.black),
   child: Center(
     child: Row(
       crossAxisAlignment: CrossAxisAlignment.stretch,
       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
       children: [
         Column(
           children: [
             Text(
               " $day",
               style: GoogleFonts.montserrat(
                 color: Colors.white,
                 fontWeight: FontWeight.w700,
                 fontSize: 32,
               ),
             ),
             Text(
               AppLocalizations.of(context).translate('day'),
               style: GoogleFonts.montserrat(
                 color: Colors.white,
                 fontWeight: FontWeight.w700,
                 fontSize:16,
               ),
             )
           ],
         ),
         Column(
           children: [
             Text(
               " $hour",
               style: GoogleFonts.montserrat(
                 color: Colors.white,
                 fontWeight: FontWeight.w700,
                 fontSize: 32,
               ),
             ),
             Text(
               AppLocalizations.of(context).translate('hour'),
               style: GoogleFonts.montserrat(
                 color: Colors.white,
                 fontWeight: FontWeight.w700,
                 fontSize:16,
               ),
             )
           ],
         ),
         Column(
           children: [
             Text(
               " $minute",
               style: GoogleFonts.montserrat(
                 color: Colors.white,
                 fontWeight: FontWeight.w700,
                 fontSize: 32,
               ),
             ),
             Text(
               AppLocalizations.of(context).translate('minute'),
               style: GoogleFonts.montserrat(
                 color: Colors.white,
                 fontWeight: FontWeight.w700,
                 fontSize:16,
               ),
             )
           ],
         ),
         Column(
           children: [
             Text(
               " $second",
               style: GoogleFonts.montserrat(
                 color: Colors.white,
                 fontWeight: FontWeight.w700,
                 fontSize: 32,
               ),
             ),
             Text(
               AppLocalizations.of(context).translate('second'),
               style: GoogleFonts.montserrat(
                 color: Colors.white,
                 fontWeight: FontWeight.w700,
                 fontSize: 16,
               ),
             )
           ],
         ),
       ],
     ),
   ),
 );
  }


}

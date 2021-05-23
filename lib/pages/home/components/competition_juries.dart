import 'package:flip_card/flip_card.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../utils/constants.dart';

class CompetitionJuries extends StatefulWidget {
  @override
  _CompetitionJuriesState createState() => _CompetitionJuriesState();
}

class _CompetitionJuriesState extends State<CompetitionJuries> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 1000) {
        return Container(
          width: MediaQuery.of(context).size.width / 1.25,
          child: Column(
            children: [
              Text(
                "YARIŞMA VE JÜRİLERİMİZ",
                style: GoogleFonts.montserrat(
                  color: kCaptionColor,
                  fontWeight: FontWeight.w700,
                  fontSize: MediaQuery.of(context).size.width / 32,
                ),
              ),
              SizedBox(height: 30),
              whatIsCompetition(),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  jurieCard(
                      "baris_yesugey.jpg",
                      "Barış Yesugey",
                      "https://www.linkedin.com/in/barisyesugey/",
                      "Barış Yesugey, 2008 Yılında University of Hertfordshire'dan mezun oldu. 2013 yılına kadar Facebookta çalıştı. 2013 - 2014 yılları arasında Paypal'de Sales Engineer olarak görev aldı. Google'da 2014-2018 yılları arasında Developer Relations Program Manager olarak çalıştı. Şu anda hala Google'da Developer Ecosystem Region Lead olarak görev almakta."),
                  SizedBox(
                    width: 100,
                  ),
                  jurieCard(
                      "omer_erkmen.jpg",
                      "Ömer Erkmen",
                      "https://www.linkedin.com/in/omererkmen/",
                      "Ömer Erkmen, 1979 İTÜ Elektrik Elektronik lisans ve 1981 aynı bölümde yüksek lisansının ardından, 1984 yılında ABD’de UCSB  Üniversitesi’nde Bilgisayar Mühendisliği yüksek lisansı yapmıştır.  CRM konusunda eğitmen ve danışman olarak yer aldığı Microsoft’taki kurumsal iş hayatından sonra Mekanist’e geçip yönetim kurulu üyeliği yaptı. 2015 yılında şirketin Zomato tarafından satın alınması ile daha aktif bir şekilde girişimcilik ve yatırım alanlarında rol almaya başladı. Kurucu, mentor ve yatırımcı olarak birçok projeye dahil olup ve şu an halen  girişimcilik alanında çalışmalar yapmaktadır. Dahil olduğu girişimler: Flightrecorder, Ideasoft, Blesh, Temizlikyolda, Bionluk, Kolay Randevu, Connected2me ve Erasmusinn. Kurucusu ve yatırımcısı olduğu scorpapp.com ve TeamSQL’de aktif danışmanlığa devam etmektedir."),
                ],
              ),
              SizedBox(
                height: 100,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  jurieCard(
                      "sonat_kaymaz.jpg",
                      "Sonat Kaymaz",
                      "https://www.linkedin.com/in/sonatkaymaz/",
                      """Sonat Kaymaz, Dogma Alares'te İnovasyon Başkanı olarak görev yapmaktadır. Dogma Alares'tan önce, 2019 yılında Dogma Alares tarafından satın alınan inValue'nun kurucusuydu.

Tarlamvar'ın (küçük ölçekli çiftçi pazarı) Kurucu Ortağı olarak büyüme, kurumsal satışlar ve operasyonlar üzerinde çalıştı. Scorp'un Kurucu Üyesi ve Büyüme Başkanı olarak, ilk topluluğun geliştirilmesine, kullanıcı edinmeye, içerik yaratmaya, büyümeye ve küresel genişlemeye öncülük etti. İnValue'nun kurucusu olarak, yüksek ölçekli kurumsal inovasyon projeleri için benzersiz bir çerçeve oluşturdu.

Ayrıca, Türkiye'deki startup ekosistemini genişletmeyi amaçlayan Yeni Nesil Kafası adlı bir topluluk kurdu."""),
                  SizedBox(
                    width: 100,
                  ),
                  jurieCard(
                      "beyza_sunay_guler.jpg",
                      "Beyza Sunay Güler",
                      "https://www.linkedin.com/in/beyzasunayguler/",
                      "Beyza Sunay Güler, 2019 yılında Hacettepe Üniversitesi Arkeoloji bölümünden mezun oldu. KodLoca'da eğitmen olarak görev aldı. Arneca Technologies'de Flutter Consultant olarak çalıştı. Şu anda Google'da Google Developer Relations Coordinator olarak görev almakta."),
                ],
              ),
              SizedBox(
                height: 100,
              ),
              jurieCard(
                  "merve_isler.jpg",
                  "Merve İşler",
                  "https://www.linkedin.com/in/misslers/",
                  "Merve İşler, 2019 yılında Bilkent Üniversitesi Computer Science bölümünden mezun oldu. Quick Extension'da Developer Relations ve Digital Marketing alanlarında çalıştı. Siyah Yazılım'da Software Developer olarak ve Insider'da Software Quality Assurance Test Engineer olarak çalıştı. Şu anda Google'da Google Developer Relations Coordinator olarak görev almakta."),
            ],
          ),
        );
      } else {
        return Container(
          width: MediaQuery.of(context).size.width / 1.25,
          child: Column(
            children: [
              Text(
                "YARIŞMA VE JÜRİLERİMİZ",
                textAlign: TextAlign.center,
                style: GoogleFonts.montserrat(
                  color: kCaptionColor,
                  fontWeight: FontWeight.w700,
                  fontSize: MediaQuery.of(context).size.width / 12,
                ),
              ),
              SizedBox(height: 30),
              whatIsCompetitionSmaller(),
              SizedBox(height: 30),
              jurieCardSmaller(
                  "baris_yesugey.jpg",
                  "Barış Yesugey",
                  "https://www.linkedin.com/in/barisyesugey/",
                  "Barış Yesugey, 2008 Yılında University of Hertfordshire'dan mezun oldu. 2013 yılına kadar Facebookta çalıştı. 2013 - 2014 yılları arasında Paypal'de Sales Engineer olarak görev aldı. Google'da 2014-2018 yılları arasında Developer Relations Program Manager olarak çalıştı. Şu anda hala Google'da Developer Ecosystem Region Lead olarak görev almakta."),
              SizedBox(
                height: 100,
              ),
              jurieCardSmaller(
                  "omer_erkmen.jpg",
                  "Ömer Erkmen",
                  "https://www.linkedin.com/in/omererkmen/",
                  "Ömer Erkmen, 1979 İTÜ Elektrik Elektronik lisans ve 1981 aynı bölümde yüksek lisansının ardından, 1984 yılında ABD’de UCSB  Üniversitesi’nde Bilgisayar Mühendisliği yüksek lisansı yapmıştır.  CRM konusunda eğitmen ve danışman olarak yer aldığı Microsoft’taki kurumsal iş hayatından sonra Mekanist’e geçip yönetim kurulu üyeliği yaptı. 2015 yılında şirketin Zomato tarafından satın alınması ile daha aktif bir şekilde girişimcilik ve yatırım alanlarında rol almaya başladı. Kurucu, mentor ve yatırımcı olarak birçok projeye dahil olup ve şu an halen  girişimcilik alanında çalışmalar yapmaktadır. Dahil olduğu girişimler: Flightrecorder, Ideasoft, Blesh, Temizlikyolda, Bionluk, Kolay Randevu, Connected2me ve Erasmusinn. Kurucusu ve yatırımcısı olduğu scorpapp.com ve TeamSQL’de aktif danışmanlığa devam etmektedir."),
              SizedBox(
                height: 100,
              ),
              jurieCardSmaller(
                  "sonat_kaymaz.jpg",
                  "Sonat Kaymaz",
                  "https://www.linkedin.com/in/sonatkaymaz/",
                  """Sonat Kaymaz, Dogma Alares'te İnovasyon Başkanı olarak görev yapmaktadır. Dogma Alares'tan önce, 2019 yılında Dogma Alares tarafından satın alınan inValue'nun kurucusuydu.

Tarlamvar'ın (küçük ölçekli çiftçi pazarı) Kurucu Ortağı olarak büyüme, kurumsal satışlar ve operasyonlar üzerinde çalıştı. Scorp'un Kurucu Üyesi ve Büyüme Başkanı olarak, ilk topluluğun geliştirilmesine, kullanıcı edinmeye, içerik yaratmaya, büyümeye ve küresel genişlemeye öncülük etti. İnValue'nun kurucusu olarak, yüksek ölçekli kurumsal inovasyon projeleri için benzersiz bir çerçeve oluşturdu.

Ayrıca, Türkiye'deki startup ekosistemini genişletmeyi amaçlayan Yeni Nesil Kafası adlı bir topluluk kurdu."""),
              SizedBox(
                height: 100,
              ),
              jurieCardSmaller(
                  "beyza_sunay_guler.jpg",
                  "Beyza Sunay Güler",
                  "https://www.linkedin.com/in/beyzasunayguler/",
                  "Beyza Sunay Güler, 2019 yılında Hacettepe Üniversitesi Arkeoloji bölümünden mezun oldu. KodLoca'da eğitmen olarak görev aldı. Arneca Technologies'de Flutter Consultant olarak çalıştı. Şu anda Google'da Google Developer Relations Coordinator olarak görev almakta."),
              SizedBox(
                height: 100,
              ),
              jurieCardSmaller(
                  "merve_isler.jpg",
                  "Merve İşler",
                  "https://www.linkedin.com/in/misslers/",
                  "Merve İşler, 2019 yılında Bilkent Üniversitesi Computer Science bölümünden mezun oldu. Quick Extension'da Developer Relations ve Digital Marketing alanlarında çalıştı. Siyah Yazılım'da Software Developer olarak ve Insider'da Software Quality Assurance Test Engineer olarak çalıştı. Şu anda Google'da Google Developer Relations Coordinator olarak görev almakta."),
            ],
          ),
        );
      }
    });
  }

  jurieCard(String imageUrl, String name, String linkedin, String bio) {
    return Container(
      height: 500,
      width: 600,
      decoration: BoxDecoration(
        color: kBackgroundColor,
        borderRadius: BorderRadius.circular(32.0),
      ),
      child: Card(
        elevation: 100,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    width: 150,
                    height: 150,
                    child: ClipOval(
                      child: Image.asset(
                        'assets/$imageUrl',
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: [
                      Container(
                        width: 400,
                        child: Text(
                          name,
                          textAlign: TextAlign.center,
                          style: GoogleFonts.montserrat(
                            color: Colors.orange,
                            fontWeight: FontWeight.w400,
                            fontSize: 36,
                          ),
                        ),
                      ),
                      MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: Container(
                          height: 50,
                          child: GestureDetector(
                            onTap: () async {
                              if (await canLaunch(linkedin)) {
                                await launch(linkedin);
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
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Text(
                    bio,
                    //textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  jurieCardSmaller(String imageUrl, String name, String linkedin, String bio) {
    return Container(
      height: 500,
      width: 600,
      decoration: BoxDecoration(
        color: kBackgroundColor,
        borderRadius: BorderRadius.circular(32.0),
      ),
      child: Card(
        elevation: 100,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Container(
                width: 150,
                height: 150,
                child: ClipOval(
                  child: Image.asset(
                    'assets/$imageUrl',
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 400,
                child: Text(
                  name,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.montserrat(
                    color: Colors.orange,
                    fontWeight: FontWeight.w400,
                    fontSize: 36,
                  ),
                ),
              ),
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: Container(
                  height: 40,
                  child: GestureDetector(
                    onTap: () async {
                      if (await canLaunch(linkedin)) {
                        await launch(linkedin);
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
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Text(
                    bio,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  whatIsCompetition() {
    return Container(
      width: 2000,
      child: Column(
        children: [
          Container(
            height: 400,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Girişimcilik Yarışması ve Katılımcılardan Beklenilenler",
                  style: GoogleFonts.montserrat(
                    color: Color.fromRGBO(40, 234, 240, 1),
                    fontWeight: FontWeight.w700,
                    fontSize: 32,
                  ),
                ),
                Container(
                  width: 900,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: RichText(
                      text: TextSpan(
                        text:
                            """“TechUp: Grow & Innovate” teknoloji ve girişim zirvesi etkinliğimiz kapsamında düzenlediğimiz Girişimcilik Yarışması için katılımcılar, bir iş fikri ortaya koymalıdır.

Yarışmada katılımcılardan istenilen,  bir problem belirlemeleri ve bu problemi çözmek için teknoloji odaklı olacak şekilde bir iş fikri ortaya koymalarıdır. Bu çalışmalarını 5-10 dakika aralığında, 10 dakikayı geçmeyecek şekilde bir sunum haline getirmeleri gerekmektedir. Katılımcıların, sunumlarını aşağıda belirtilen link ile tarafımıza teslim etmeleri beklenmektedir. 

Yarışma için gerekli belgenin en geç 23 Mayıs 2021 Pazar günü saat 22.00’ye kadar teslim edilmesi gerekmektedir. Bu tarihten sonra form kapatılacak, geç teslim edilen belgeler kabul edilmeyecektir.

*Yarışma belgesi teslim linki: """,
                        style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontWeight: FontWeight.w200,
                          fontSize: 20,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: "https://forms.gle/wSKRWhwQECsEKBVC7",
                            recognizer: TapGestureRecognizer()
                              ..onTap = () async {
                                if (await canLaunch(
                                    "https://forms.gle/wSKRWhwQECsEKBVC7")) {
                                  print("can launch");
                                  await launch(
                                      "https://forms.gle/wSKRWhwQECsEKBVC7");
                                }
                              },
                            style: GoogleFonts.montserrat(
                              color: kDangerColor,
                              fontWeight: FontWeight.w200,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ), /*Text(
                        """“TechUp: Grow & Innovate” teknoloji ve girişim zirvesi etkinliğimiz kapsamında düzenlediğimiz İş Vakası Yarışması için katılımcılara case verilecektir.

Yarışmada katılımcılardan istenilen, katılımcıların verilen konuya uygun olarak bir girişim fikri ortaya koymaları ve bu çalışmalarını 5-10 dakika aralığında, 10 dakikayı geçmeyecek şekilde bir sunum haline getirmeleridir. Katılımcıların, sunumlarını aşağıda belirtilen link ile tarafımıza teslim etmeleri beklenmektedir. 

Yarışma için gerekli belgenin en geç 23 Mayıs 2021 Pazar günü saat 23.00’a kadar teslim edilmesi gerekmektedir. Bu tarihten sonra form kapatılacak, geç teslim edilen belgeler kabul edilmeyecektir.

*Yarışma belgesi teslim linki: https://forms.gle/wSKRWhwQECsEKBVC7""",

                        style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontWeight: FontWeight.w200,
                          fontSize: 20,
                        ),*/
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            height: 400,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Teslim Edilen Belgelerin Değerlendirilmesi",
                  style: GoogleFonts.montserrat(
                    color: Color.fromRGBO(40, 234, 240, 1),
                    fontWeight: FontWeight.w700,
                    fontSize: 32,
                  ),
                ),
                Container(
                    width: 900,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 16.0),
                      child: Text(
                        """Katılımcıların teslim ettiği belgelerden değerlendirmeler sonucunda 5 tanesi seçilecek olup seçilen katılımcıların 24 Mayıs Pazartesi günü saat 14.00 - 15.00 aralığında sunumlarını jürilere sunması beklenmektedir. Sunum sonrası jüriler istedikleri takdirde katılımcılara çeşitli sorular yöneltebilirler.

Katılımcıların sunumlarının 5-10 dakika aralığında sürmesi gerekmektedir. Bu süre aralığı dışına çıkılmaması önemle rica olunur.

Katılımcıların sunum yapacakları saat onlara uygun olarak belirlenmeye çalışılacak olup formu daha önce doldurmuş olan kişilere, saat belirlenmesi konusunda öncelik tanınacaktır. Yarışma değerlendirmesinin sonuçları, sunumların yapılacağı 24 Mayıs Pazartesi günü belli olacak olup aynı gün sunumlardan sonra yapılacak ödül töreni ile dereceye girenler açıklanacaktır.

""",
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
            height: 50,
          ),
          Container(
            height: 400,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 900,
                  child: Text(
                    "Ödüller",
                    style: GoogleFonts.montserrat(
                      color: Color.fromRGBO(40, 234, 240, 1),
                      fontWeight: FontWeight.w700,
                      fontSize: 32,
                    ),
                  ),
                ),
                Container(
                    width: 900,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 16.0),
                      child: Text(
                        """Yarışma sonucunda,

- Birinci olan katılımcıya/katılımcılara Google Home Mini,

- İkinci olan katılımcıya/katılımcılara Huawei Band (akıllı saat),

- Üçüncü olan katılımcıya/katılımcılara Xiaomi Bluetooth Kulaklık hediye edilecektir.

- Jürilere sunum yapması için seçilen 5 katılımcımıza TOBB ETU GARAJ’da ücretsiz yer, ofis altyapı desteği, ücretsiz mentorluk, iş planı yazma desteği, ücretsiz eğitimler, network, yatırımcı ve destek programlarına erişim desteği sağlanacaktır
""",
                        style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontWeight: FontWeight.w200,
                          fontSize: 20,
                        ),
                      ),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }

  whatIsCompetitionSmaller() {
    return Container(
      width: 2000,
      child: Column(
        children: [
          Container(

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Girişimcilik Yarışması ve Katılımcılardan Beklenilenler",
                  style: GoogleFonts.montserrat(
                    color: Color.fromRGBO(40, 234, 240, 1),
                    fontWeight: FontWeight.w700,
                    fontSize: 24,
                  ),
                ),
                Container(
                    width: 900,
                    height: 500,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 16.0),
                      child: RichText(
                        text: TextSpan(
                          text:
                              """“TechUp: Grow & Innovate” teknoloji ve girişim zirvesi etkinliğimiz kapsamında düzenlediğimiz Girişimcilik Yarışması için katılımcılar, bir iş fikri ortaya koymalıdır.

Yarışmada katılımcılardan istenilen,  bir problem belirlemeleri ve bu problemi çözmek için teknoloji odaklı olacak şekilde bir iş fikri ortaya koymalarıdır. Bu çalışmalarını 5-10 dakika aralığında, 10 dakikayı geçmeyecek şekilde bir sunum haline getirmeleri gerekmektedir. Katılımcıların, sunumlarını aşağıda belirtilen link ile tarafımıza teslim etmeleri beklenmektedir. 

Yarışma için gerekli belgenin en geç 23 Mayıs 2021 Pazar günü saat 22.00’ye kadar teslim edilmesi gerekmektedir. Bu tarihten sonra form kapatılacak, geç teslim edilen belgeler kabul edilmeyecektir.

*Yarışma belgesi teslim linki: """,
                          style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontWeight: FontWeight.w200,
                            fontSize: 16,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: "https://forms.gle/wSKRWhwQECsEKBVC7",
                              recognizer: TapGestureRecognizer()
                                ..onTap = () async {
                                  if (await canLaunch(
                                      "https://forms.gle/wSKRWhwQECsEKBVC7")) {
                                    print("can launch");
                                    await launch(
                                        "https://forms.gle/wSKRWhwQECsEKBVC7");
                                  }
                                },
                              style: GoogleFonts.montserrat(
                                color: kDangerColor,
                                fontWeight: FontWeight.w200,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ))
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
          
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Teslim Edilen Belgelerin Değerlendirilmesi",
                  style: GoogleFonts.montserrat(
                    color: Color.fromRGBO(40, 234, 240, 1),
                    fontWeight: FontWeight.w700,
                    fontSize: 24,
                  ),
                ),
                Container(
                    width: 900,
                    height: 500,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 16.0),
                      child: Text(
                        """Katılımcıların teslim ettiği belgelerden değerlendirmeler sonucunda 5 tanesi seçilecek olup seçilen katılımcıların 24 Mayıs Pazartesi günü saat 14.00 - 15.00 aralığında sunumlarını jürilere sunması beklenmektedir. Sunum sonrası jüriler istedikleri takdirde katılımcılara çeşitli sorular yöneltebilirler.

Katılımcıların sunumlarının 5-10 dakika aralığında sürmesi gerekmektedir. Bu süre aralığı dışına çıkılmaması önemle rica olunur.

Katılımcıların sunum yapacakları saat onlara uygun olarak belirlenmeye çalışılacak olup formu daha önce doldurmuş olan kişilere, saat belirlenmesi konusunda öncelik tanınacaktır. Yarışma değerlendirmesinin sonuçları, sunumların yapılacağı 24 Mayıs Pazartesi günü belli olacak olup aynı gün sunumlardan sonra yapılacak ödül töreni ile dereceye girenler açıklanacaktır.
""",
                        style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontWeight: FontWeight.w200,
                          fontSize: 16,
                        ),
                      ),
                    ))
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 900,
                  child: Text(
                    "Ödüller",
                    style: GoogleFonts.montserrat(
                      color: Color.fromRGBO(40, 234, 240, 1),
                      fontWeight: FontWeight.w700,
                      fontSize: 24,
                    ),
                  ),
                ),
                Container(
                    width: 900,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 16.0),
                      child: Text(
                        """Yarışma sonucunda,

- Birinci olan katılımcıya/katılımcılara Google Home Mini,

- İkinci olan katılımcıya/katılımcılara Huawei Band (akıllı saat),

- Üçüncü olan katılımcıya/katılımcılara Xiaomi Bluetooth Kulaklık hediye edilecektir.

- Jürilere sunum yapması için seçilen 5 katılımcımıza TOBB ETU GARAJ’da ücretsiz yer, ofis altyapı desteği, ücretsiz mentorluk, iş planı yazma desteği, ücretsiz eğitimler, network, yatırımcı ve destek programlarına erişim desteği sağlanacaktır
""",
                        style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontWeight: FontWeight.w200,
                          fontSize: 16,
                        ),
                      ),
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}

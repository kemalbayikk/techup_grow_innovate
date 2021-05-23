import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:techup/utils/app_localizations.dart';
import 'package:techup/utils/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class EventProgram extends StatefulWidget {
  Function callback;

  EventProgram(this.callback);

  @override
  _EventProgramState createState() => _EventProgramState();
}

class _EventProgramState extends State<EventProgram> {
  int selectedButton = 0;
  Color buttonZeroColor = kCaptionColor;
  Color buttonOneColor = Colors.white;
  Color buttonTwoColor = Colors.white;

  Color buttonZeroTextColor = Colors.white;
  Color buttonOneTextColor = kCaptionColor;
  Color buttonTwoTextColor = kCaptionColor;

  Color dividerColor = Color.fromRGBO(40, 234, 240, 1);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 1000) {
        return Container(
          width: MediaQuery.of(context).size.width / 1.25,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                AppLocalizations.of(context).translate('event_program_big'),
                style: GoogleFonts.montserrat(
                  color: kCaptionColor,
                  fontWeight: FontWeight.w700,
                  fontSize: MediaQuery.of(context).size.width / 32,
                ),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 5,
                    height: MediaQuery.of(context).size.height / 5,
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          this.widget.callback(3000, 3800);
                          selectedButton = 0;
                          buttonZeroColor = kCaptionColor;
                          buttonZeroTextColor = Colors.white;
                          buttonOneColor = Colors.white;
                          buttonTwoColor = Colors.white;
                          buttonOneTextColor = kCaptionColor;
                          buttonTwoTextColor = kCaptionColor;
                        });
                      },
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(buttonZeroColor)),
                      child: Text(
                        "22 ${AppLocalizations.of(context).translate('may')}",
                        style: GoogleFonts.montserrat(
                          color: buttonZeroTextColor,
                          fontWeight: FontWeight.w700,
                          fontSize: MediaQuery.of(context).size.width / 48,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 5,
                    height: MediaQuery.of(context).size.height / 5,
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          this.widget.callback(2700, 5500);
                          selectedButton = 1;
                          buttonZeroColor = Colors.white;
                          buttonZeroTextColor = kCaptionColor;
                          buttonOneColor = kCaptionColor;
                          buttonTwoColor = Colors.white;
                          buttonOneTextColor = Colors.white;
                          buttonTwoTextColor = kCaptionColor;
                        });
                      },
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(buttonOneColor)),
                      child: Text(
                        "23 ${AppLocalizations.of(context).translate('may')}",
                        style: GoogleFonts.montserrat(
                          color: buttonOneTextColor,
                          fontWeight: FontWeight.w700,
                          fontSize: MediaQuery.of(context).size.width / 48,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 5,
                    height: MediaQuery.of(context).size.height / 5,
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          this.widget.callback(1450, 3450);
                          selectedButton = 2;
                          buttonZeroColor = Colors.white;
                          buttonZeroTextColor = kCaptionColor;
                          buttonOneColor = Colors.white;
                          buttonTwoColor = kCaptionColor;
                          buttonOneTextColor = kCaptionColor;
                          buttonTwoTextColor = Colors.white;
                        });
                      },
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(buttonTwoColor)),
                      child: Text(
                        "24 ${AppLocalizations.of(context).translate('may')}",
                        style: GoogleFonts.montserrat(
                          color: buttonTwoTextColor,
                          fontWeight: FontWeight.w700,
                          fontSize: MediaQuery.of(context).size.width / 48,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              eventListContainer(),
            ],
          ),
        );
      } else {
        return Container(
          width: MediaQuery.of(context).size.width / 1.25,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                AppLocalizations.of(context).translate('event_program_big'),
                style: GoogleFonts.montserrat(
                  color: kCaptionColor,
                  fontWeight: FontWeight.w700,
                  fontSize: MediaQuery.of(context).size.width / 12,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 4,
                    height: MediaQuery.of(context).size.height / 8,
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          this.widget.callback(1450.0, 3800.0);
                          selectedButton = 0;
                          buttonZeroColor = kCaptionColor;
                          buttonZeroTextColor = Colors.white;
                          buttonOneColor = Colors.white;
                          buttonTwoColor = Colors.white;
                          buttonOneTextColor = kCaptionColor;
                          buttonTwoTextColor = kCaptionColor;
                        });
                      },
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(buttonZeroColor)),
                      child: Text(
                        "22 ${AppLocalizations.of(context).translate('may')}",
                        style: GoogleFonts.montserrat(
                          color: buttonZeroTextColor,
                          fontWeight: FontWeight.w700,
                          fontSize: MediaQuery.of(context).size.width / 24,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 4,
                    height: MediaQuery.of(context).size.height / 8,
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          this.widget.callback(500.0, 3500.0);
                          selectedButton = 1;
                          buttonZeroColor = Colors.white;
                          buttonZeroTextColor = kCaptionColor;
                          buttonOneColor = kCaptionColor;
                          buttonTwoColor = Colors.white;
                          buttonOneTextColor = Colors.white;
                          buttonTwoTextColor = kCaptionColor;
                        });
                      },
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(buttonOneColor)),
                      child: Text(
                        "23 ${AppLocalizations.of(context).translate('may')}",
                        style: GoogleFonts.montserrat(
                          color: buttonOneTextColor,
                          fontWeight: FontWeight.w700,
                          fontSize: MediaQuery.of(context).size.width / 24,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 4,
                    height: MediaQuery.of(context).size.height / 8,
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          this.widget.callback(1110.0, 1200.0);
                          selectedButton = 2;
                          buttonZeroColor = Colors.white;
                          buttonZeroTextColor = kCaptionColor;
                          buttonOneColor = Colors.white;
                          buttonTwoColor = kCaptionColor;
                          buttonOneTextColor = kCaptionColor;
                          buttonTwoTextColor = Colors.white;
                        });
                      },
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(buttonTwoColor)),
                      child: Text(
                        "24 ${AppLocalizations.of(context).translate('may')}",
                        style: GoogleFonts.montserrat(
                          color: buttonTwoTextColor,
                          fontWeight: FontWeight.w700,
                          fontSize: MediaQuery.of(context).size.width / 24,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              eventListSmallerContainer(),
            ],
          ),
        );
      }
    });
  }

  Widget eventCard(
      String title,
      String speaker,
      String speakerTitle,
      String time,
      String imageUrl,
      bool isSpeakerTitleSmall,
      bool isTwoSpeakers,
      String secondSpeaker,
      String secondSpeakerTitle,
      String secondSpeakerImageUrl,
      String linkedinFirst,
      String aboutFirst,
      String linkedinSecond,
      String aboutSecond) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            Text(
              time,
              style: GoogleFonts.montserrat(
                color: Colors.white,
                fontSize: MediaQuery.of(context).size.width / 72,
              ),
            ),
            SizedBox(
              width: 30,
            ),
            Container(
              width: MediaQuery.of(context).size.width / 4,
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: GoogleFonts.montserrat(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: MediaQuery.of(context).size.width / 72,
                ),
              ),
            )
          ],
        ),
        SizedBox(width: 20),
        Container(
          width: MediaQuery.of(context).size.width / 2.8,
          height: isTwoSpeakers ? 350 : 250,
          child: Column(
            children: [
              SizedBox(height: 80),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    imageUrl != ""
                        ? Container(
                            width: 80,
                            height: 80,
                            child: MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                onTap: () {
                                  showDialog(
                                    context: context,
                                    builder: (dialogContext) => AlertDialog(
                                      backgroundColor: Colors.white,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(16)),
                                      content: speakerDetail(imageUrl, speaker,
                                          aboutFirst, linkedinFirst),
                                    ),
                                  );
                                },
                                child: ClipOval(
                                  child: Image.asset(
                                    'assets/$imageUrl',
                                    fit: BoxFit.fitHeight,
                                  ),
                                ),
                              ),
                            ),
                          )
                        : Container(),
                    SizedBox(width: 20),
                    Column(
                      children: [
                        MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: GestureDetector(
                            onTap: () {
                              showDialog(
                                context: context,
                                builder: (dialogContext) => Container(
                                  width: 500,
                                  child: AlertDialog(
                                    backgroundColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(16)),
                                    content: speakerDetail(imageUrl, speaker,
                                        aboutFirst, linkedinFirst),
                                  ),
                                ),
                              );
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width / 3.5,
                              child: Text(
                                speaker,
                                style: GoogleFonts.montserrat(
                                  color: Colors.orange,
                                  fontWeight: FontWeight.w400,
                                  fontSize: isSpeakerTitleSmall == false
                                      ? MediaQuery.of(context).size.width / 88
                                      : MediaQuery.of(context).size.width / 92,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width / 3.5,
                          child: Text(
                            speakerTitle,
                            style: GoogleFonts.montserrat(
                              color: Colors.white,
                              fontWeight: FontWeight.w200,
                              fontSize: isSpeakerTitleSmall == false
                                  ? MediaQuery.of(context).size.width / 88
                                  : MediaQuery.of(context).size.width / 92,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              isTwoSpeakers
                  ? SizedBox(
                      height: 50,
                    )
                  : SizedBox(height: 0),
              isTwoSpeakers
                  ? Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          secondSpeakerImageUrl != ""
                              ? Container(
                                  width: 80,
                                  height: 80,
                                  child: MouseRegion(
                                    cursor: SystemMouseCursors.click,
                                    child: GestureDetector(
                                      onTap: () {
                                        showDialog(
                                          context: context,
                                          builder: (dialogContext) => Container(
                                            width: 500,
                                            child: AlertDialog(
                                              backgroundColor: Colors.white,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          16)),
                                              content: speakerDetail(
                                                  secondSpeakerImageUrl,
                                                  secondSpeaker,
                                                  aboutSecond,
                                                  linkedinSecond),
                                            ),
                                          ),
                                        );
                                      },
                                      child: ClipOval(
                                        child: Image.asset(
                                          'assets/$secondSpeakerImageUrl',
                                          fit: BoxFit.fitHeight,
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              : Container(),
                          SizedBox(width: 20),
                          Column(
                            children: [
                              MouseRegion(
                                cursor: SystemMouseCursors.click,
                                child: GestureDetector(
                                  onTap: () {
                                    showDialog(
                                      context: context,
                                      builder: (dialogContext) => Container(
                                        width: 500,
                                        child: AlertDialog(
                                          backgroundColor: Colors.white,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(16)),
                                          content: speakerDetail(
                                              secondSpeakerImageUrl,
                                              secondSpeaker,
                                              aboutSecond,
                                              linkedinSecond),
                                        ),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    width:
                                        MediaQuery.of(context).size.width / 3.5,
                                    child: Text(
                                      secondSpeaker,
                                      style: GoogleFonts.montserrat(
                                        color: Colors.orange,
                                        fontWeight: FontWeight.w400,
                                        fontSize: isSpeakerTitleSmall == false
                                            ? MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                88
                                            : MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                92,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width / 3.5,
                                child: Text(
                                  secondSpeakerTitle,
                                  style: GoogleFonts.montserrat(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w200,
                                    fontSize: isSpeakerTitleSmall == false
                                        ? MediaQuery.of(context).size.width / 88
                                        : MediaQuery.of(context).size.width /
                                            92,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  : Container(),
            ],
          ),
        ),
      ],
    );
  }

  Container eventListContainer() {
    if (selectedButton == 0) {
      return Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            eventCard(
              AppLocalizations.of(context).translate('opening_speech'),
              "Hakan Kızıltoprak",
              "Director of TOBB ETU Technology Transfer Office",
              "12:30-12.45",
              "hakan_kiziltoprak.jpg",
              false,
              true,
              "Doç. Dr. Göknur Büke",
              "Ar-Ge ve İnovasyondan Sorumlu Rektör Danışmanı",
              "goknur_buke.jpg",
              "https://www.linkedin.com/in/hakankiziltoprak/?originalSubdomain=tr",
              "Special Advisor to President - TOBB Director,Technology Transfer Office - TOBB ETU Member of the Board of Directors, Turkish Accelerator Radiation Laboratory - TARLA Finance Committee Delegate & Chair of ILO Forum - CERN",
              "https://www.linkedin.com/in/g%C3%B6knur-b%C3%BCke-490a1749/?originalSubdomain=tr",
              "",
            ),
            Divider(
              thickness: 5,
              color: dividerColor,
              height: 1,
            ),
            eventCard(
              AppLocalizations.of(context).translate('fintech_ecosystem'),
              "Deniz Güven",
              "CEO and Executive Board of Director at Mox Bank",
              "12:50-13:40",
              "deniz_guven.jpg",
              false,
              false,
              "",
              "",
              "",
              "https://www.linkedin.com/in/denizguven/",
              """Deniz Güven is an internationally recognized leader in driving digital transformations and bringing new digital banking experiences to audiences globally.

At Standard Chartered, he oversees a great number of initiatives, ranging from global digital insights & strategies, client journeys, and optimizations, digital wealth initiatives to collaborations with leading tech firms and emerging start-ups. His aim is to transform the Bank into a digital business and to create fresh and exciting digital experiences. Deniz believes that by integrating banking to client’s lives seamlessly, the Bank adds the human touch that compliments people’s active and fast-paced lifestyles.

Prior to joining Standard Chartered, Deniz served as the Senior Vice President at BBVA Group’s Garanti Bank, Turkey’s most valuable company by market capitalization. His role included the management and oversight of mobile and online banking channels, ATM and voice technologies including call center, along with user experience and service design, digital marketing and communications, partnering, corporately owned websites, and social media channels.""",
              "",
              "",
            ),
            Divider(
              thickness: 5,
              color: dividerColor,
              height: 1,
            ),
            eventCard(
              AppLocalizations.of(context).translate('world_wants'),
              "Mustafa Can",
              "Yaratıcı Marka Danışmanı",
              "13:45-14:25",
              "mustafa_can.jpeg",
              false,
              false,
              "",
              "",
              "",
              "",
              """70’li yılların başında Türkiye’nin tam da nedenini anlamadan birbirine sağcı solcu diyerek ötekileştirdikleri zamanlarda doğdu.

Çocukluğunu eski bir başkent olma havasını henüz kaybetmemiş Trabzon’da –çoğunlukla hayal kurarak ve hayat ansiklopedisi okuyarak – geçirdi.

80’li yılların ortalarında “Hayalle peynir gemisi yürümüyor” lafını öğrendiği Samsuna taşındı. Kaos teorisine uygun şekilde, lisedeki öğretmeninin itinasıyla, Resim Bölümünü kazandı ve okudu.

Değişik ve ilgisini çeken hemen her şeyi öğrenmek hobisiydi. Üniversiteyi bitirene kadar, çocuk yuvasında resim öğretmenliğinden, otopark bekçiliğine kadar yirmiye yakın işte çalıştı. Türkiye’nin büyük bir bölümünü dolaştı.

Bir kaç yıl öğretmenlik yaptıktan sonra Milenyumla birlikte İstanbul’a yerleşti.

Birçok projede bağımsız art direktör ve yönetmen olarak çalıştı.

Farklı konulara ilgisini -ya da maymun iştahlılığını- en iyi gidereceği mesleğe yöneldi. 2007 yılında kendi reklam ajansını kurdu. On yıl kadar bu ajansın ajans başkanlığını yaptı. Kozmetikten sağlığa, hukuktan kuru yemişe birçok sektörde yerli ve uluslararası markalarla bütünleşik pazarlama, markalaşma, iletişim fikirleri üzerine çeşitli projeler çalıştı.

www.gecmisgazete.com’u hayata geçirdi.

Marka yayıncılığı, kişisel markalaşma, yakın gelecekteki iletişim modelleri, yerel markalaşma, profesyonel fikir üreticisi olmak gibi konulara özel ilgi gösterdi.

Türkiye’de “fikir ajansı” olur mu diye sordu ve denedi.

Halen “Yaratıcı Marka Danışmanı” olarak birçok marka ve kişiye danışmanlık vermektedir.""",
              "",
              "",
            ),
            Divider(
              thickness: 5,
              color: dividerColor,
              height: 1,
            ),
            eventCard(
              AppLocalizations.of(context).translate('coffee_break'),
              "",
              "",
              "14:30-15:00",
              "",
              false,
              false,
              "",
              "",
              "",
              "",
              "",
              "",
              "",
            ),
            Divider(
              thickness: 5,
              color: dividerColor,
              height: 1,
            ),
            eventCard(
              AppLocalizations.of(context).translate('build_future'),
              "Mustafa Savaş",
              "Founder of Kimola",
              "15:00-15:40",
              "mustafa_savas.jpg",
              false,
              false,
              "",
              "",
              "",
              "https://www.linkedin.com/in/mustafasavas/",
              "He studied Mechanical Engineering at university and worked as a software developer and trainer for many years. Today, he leads the core technology development of Kimola and he is also responsible for company’s future plans and strategies.",
              "",
              "",
            ),
            Divider(
              thickness: 5,
              color: dividerColor,
              height: 1,
            ),
            eventCard(
              "Girişimcilikte Global Başarı Nasıl Yakalanır?",
              "Sezer Değirmenbaşı",
              "Industry Manager; Start-Ups, Apps & Gaming at Google",
              "15:45-16:25",
              "sezer_degirmenbasi.jpg",
              false,
              false,
              "",
              "",
              "",
              "https://www.linkedin.com/in/sezer/",
              "Sezer Değirmenbaşı İTÜ İşletme Mühendisliği bölümünden 2006 yılında mezun oldu. 2009 yılında Boğaziçi Üniversitesi'nde İşletme Bilişim Sistemleri bölümünde yüksek lisansını tamamladı. 2006 - 2007 yılları arasında GittiGidiyor.com'da Category & Marketing Specialist olarak çalıştı. Ardından 2007 - 2010 yılları arasında Sony'de Analytics & Communications Consultant olarak görev aldı. 2010 yılından beri çalışmakta olduğu şirket olan Google'da ise Account Strategist, Account Manager, Principal Account Manager olmak üzere birçok pozisyonda görev yaptı. Şu anda Industry Manager olarak Google'da çalışmaya devam etmekte.",
              "",
              "",
            ),
            Divider(
              thickness: 5,
              color: dividerColor,
              height: 1,
            ),
            eventCard(
              AppLocalizations.of(context).translate('coffee_break'),
              "",
              "",
              "16:30-17:00",
              "",
              false,
              false,
              "",
              "",
              "",
              "",
              "",
              "",
              "",
            ),
            Divider(
              thickness: 5,
              color: dividerColor,
              height: 1,
            ),
            eventCard(
              AppLocalizations.of(context).translate('evolving'),
              "Çiğdem Kayalı",
              "Microsoft MEA Teknoloji Direktörü, Teknolojide Kadın Derneği Yönetim Kurulu Üyesi",
              "17:00-17:55",
              "cigdem_kayali.jpg",
              true,
              true,
              "Zehra Öney",
              "Founding President of Teknolojide Kadın Derneği (Wtech)",
              "zehra_oney.jpg",
              "https://www.linkedin.com/in/cigdem-kayali-0b8555/",
              """Çiğdem Kayalı, kurumların dijital dönüşüm yolculuklarına ışık tutan, hızla gelişen teknoloji trendlerinin yaygınlaştırılmasında rol oynayan liderlerdendir. Son 5 yılını farklı sektörlerin bulut servislerinden yararlanmaları için çaba harcadı ve Microsoft’un Türkiye’de genel bulutta lider olarak yer almasında rol oynadı.

Kontollü riskler almayı seven, derin endüstri bilgisine sahip olan Kayalı, kurumların ve tüketicilerin bulut servisleri ile tanışması için öncülük etmiştir. Kayalı, başta Office 365 olmak üzere Microsoft bulut servislerinin pazar stratejisini tasarladı, geliştirdi ve yönetti. Microsoft’taki 20 yıllık görev süresi boyunca, Kayalı iş stratejileri geliştirerek ve yeni iş modellerini hayata geçirerek ün kazandı. Microsoft MEA, CEE ve EMEA bölge ofislerinde farklı yöneticilik pozisyonlarında görev aldı. Bölge ülkelerindeki dijital dönüşüm faliyetlerinde liderlik gösterdiği gibi, farklı sektörlerde bu ürün gruplarının uyarlamalarında rol almıştır.

Kayalı, İşletme alanında Yüksek Lisans derecesine sahip bir Bilgisayar Mühendisidir.""",
              "https://www.linkedin.com/in/zehraoney/",
              """Futurist, mobil dönüşüm uzmanı, yatırımcı, uygulamacı, konuşmacı, teknoloji markalaşma ve pazarlama uzmanı olan Zehra Öney 1964 yılında İstanbul’da doğdu, İstanbul Üniversitesi’nde Ekonomi eğitimi aldıktan sonra 10 yıl boyunca Turizm sektöründe Türkiye’nin sayılı acentelerinde üst düzey pozisyonlarda görev aldı. Son 16 yılda ise Telekomünikasyon, Mobil ve Dijital alanlarda profesyonel yönetici olarak kariyerine devam etti. 2002 – 2007 yılları arasında Turkcell’de Uluslararası İş Geliştirme, Avrupa Birliği ve Amerika İlişkilerinde Yönetici olarak görev yapan Zehra Öney, 2007 – 2011 yılları arasında Mobilera A.Ş. Genel Müdürlüğü ile Mobilera BV Genel Müdür Yardımcılığı görevlerini eşzamanlı olarak yürüttü. 

 

2011 yılında kendi ajansı 360+ Media Interactive’i kuran Zehra Öney, Ajans Başkanı olarak görevini sürdürmektedir. 2013 yılında Türkiye’yi artırılmış gerçeklik ile tanıştırmıştır. 2011 yılında Londra İngiltere’de kurulan ve günümüzde dünya çapında 65 milyondan fazla üyeye sahip olan artırılmış gerçeklik uygulaması Blippar’ın 2014-2017 yılları arasında Türkiye CEO’su ve aynı zamanda Blippar Global SMT (Senior Management Team) ve Blippar Türkiye Münhasır Temsilcisi olarak da görev yapmıştır.

 

Zehra Öney, Teknolojide Kadın Derneği Kurucu Başkanı, Dorçe Prefabrik Bağımsız Yönetim Kurulu ve İdare Meclisi Üyesi, Bahçeşehir Üniversitesi Graduate School of Business Yönetim Kurulu üyesi, MMA (Mobile Marketing Association) Türkiye Yönetim Kurulu ve İcra Kurulu üyesi, Türkiye Kadın Girişimciler Derneği (KAGİDER) üyesi, TAİK (Türkiye-ABD İş Konseyi) Dijital İletişim Danışmanı ve Startupbootcamp merkezli Türk Mentor Hareketi, Mentor Effect platformu Lead Mentor’ü olarak da çalışmalarına devam etmektedir. Öney aynı zamanda pazarlama ve reklam alanlarında artırılmış gerçeklik, yapay zeka, nesnelerin interneti ve sanal gerçeklik uygulamaları uzmanı ve uygulayıcısıdır. """,
            ),
            Divider(
              thickness: 5,
              color: dividerColor,
              height: 1,
            ),
            eventCard(
              AppLocalizations.of(context).translate('enterprise'),
              "Ceri Cukran",
              "Managing the startup investment process at StartersHub - Co-Founder at Insumo",
              "18:00-19:00",
              "ceri_cukran.jpg",
              false,
              true,
              "Haluk Nişli",
              "Director of Strategy and Finance at Thread In Motion",
              "haluk_nisli.jpg",
              "https://www.linkedin.com/in/ceri-cukran-67204960/",
              "Ceri Cukran, 2017 yılında istanbul Bilgi Üniversitesi İşletme Bölümü'nden mezun oldu. Insumo'nun kurucu ortağı ve San Francisco, California merkezli StartersHub'ın ortağıdır. Daha önce Gamer's Qube'da Business Development Manager ve Big Chefs'te Assistant Manager olarak görev yaptı.",
              "https://www.linkedin.com/in/haluk-ni%C5%9Fli-bb6aa692/",
              "Koç Üniversitesi Endüstri Mühendisliği bölümünden mezun olduktan sonra yine Koç Üniversitesi Uluslararası Yönetim Yüksek Lisansı’nı tamamlayan Haluk Nişli, erken aşama teknoloji yatırım fonu olan StartersHub’da Yatırım ve Hukuki İlişkiler Müdürü olarak görev almıştır. Risk sermayesi yatırım fonlarından sonra girişimcilik konusunda da kendini geliştirmeyi amaçlayan Haluk Nişli, an itibariyle giyilebilir teknoloji platformu üreten Thread in Motion şirketinde Strateji ve Finans Direktörü olarak görev yapmaktadır.",
            ),
            Divider(
              thickness: 5,
              color: dividerColor,
              height: 1,
            ),
          ],
        ),
      );
    }
    if (selectedButton == 1) {
      return Container(
        child: Column(
          children: [
            eventCard(
              "Yarının Dünyasında Girişimcilik",
              "Yasin Oral",
              "Founder, CEO / Paribu",
              "12:30-13:10",
              "yasin_oral.jpg",
              false,
              false,
              "",
              "",
              "",
              "https://www.linkedin.com/in/yasinoral/",
              """1985 yılında Ankara’da doğan Yasin Oral, yazılım çalışmalarına lise döneminde başladı. 2001’de, henüz lise öğrencisiyken TÜBİTAK’ın bir yarışmasına katıldı ve TÜBİTAK web sitesi geliştirmelerine dışarıdan destek sağladı.

Üniversite yıllarında taşımacılık sektöründe faaliyet gösteren bir internet sitesi kurdu ve site kısa süre içinde nakliyeciler arasındaki koordinasyonu sağlayan tek platform haline geldi.

2009’da Gazi Üniversitesi İktisadi ve İdari Bilimler Fakültesi’nden mezun olan Oral, 2010’da Türkiye’nin ilk online matbaası matbuu.com’u hayata geçirdi.

Bu girişimlerinin yanı sıra tüm dünyada hizmet veren birçok mesafe hesaplama ve rota görüntüleme projesi yaratarak günlük 250 binin üzerinde kullanıcıya hizmet vermeye başladı. 2015’te online bilet satın alım platformu Biletgo’yu kurdu.

2015’te Paribu’nun ön hazırlık çalışmalarına başladı. Paribu, 2016’da kuruldu, 14 Şubat 2017’de kullanıma açıldı.

Halen Paribu CEO’su olan Oral, Blockchain Türkiye Platformu Yürütme Kurulu üyesi ve Türkiye Genç İş Adamları Derneği üyesidir.""",
              "",
              "",
            ),
            Divider(
              thickness: 5,
              color: dividerColor,
              height: 1,
            ),
            eventCard(
              AppLocalizations.of(context).translate('measuring'),
              "Beril Kocadereli",
              "MSc Innovation at KTH I Norrsken Impact Accelerator | Startup Grind Stockholm",
              "13:10-13:55",
              "beril_kocadereli.jpg",
              false,
              false,
              "",
              "",
              "",
              "https://www.linkedin.com/in/berilkocadereli/",
              "Beril Kocadereli Bilkent Üniversitesi Endüstri Mühendisliğinden 2019 yılında mezun oldu. 2021 yılında KTH Royal Institute of Technology'de Entrepreneurship and Innovation Management bölümünde master'ını tamamladı. \"Social impact measurement from an investor perspective: Impact investments\" konusunda master tezi hazırladı. Şu anda Startup Grind Stockholm'de Parnerships Lead ve Norrsken Foundation'da Impact Accelerator Intern olarak görev almakta.",
              "",
              "",
            ),
            Divider(
              thickness: 5,
              color: dividerColor,
              height: 1,
            ),
            Divider(
              thickness: 5,
              color: dividerColor,
              height: 1,
            ),
            eventCard(
              AppLocalizations.of(context).translate('osman_baytaroglu'),
              "Osman Baytaroğlu",
              "Co Founder and CEO at Agcurate, Accurate Rural Intelligence for Agribusiness.",
              "14:00-14:55",
              "osman_baytaroglu.jpg",
              false,
              false,
              "",
              "",
              "",
              "https://www.linkedin.com/in/osmanbaytaroglu/",
              """He has gathered teams for high impact projects and built a couple of great products:

>He has fundraised an amount of \$15.000 for LÖSEV (the Foundation for Children with Leukemia) as Vice President of Fine Arts Society at METU (2009)

>Between 2010 and 2013 he has led a student team of engineers, architects, designers, and marketers that succeeded to be selected to compete in Solar Decathlon China 2013, a student competition about designing and building solar powered houses.

>In 2014, he founded Innomotive, and they released global-first single sensor solution for intelligent intersection management. They exited the company later.

>In 2017, he founded Agrovisio and they delivered first "soil yield potential map of Turkey" which constitutes the baseline of drought insurance products of TARSIM, Agriculture Insurance Pool of Turkey.""",
              "",
              "",
            ),
            Divider(
              thickness: 5,
              color: dividerColor,
              height: 1,
            ),
            eventCard(
              AppLocalizations.of(context).translate('mustafa_namoglu'),
              "Mustafa Namoğlu",
              "CEO at ikas.com",
              "15:00-15:45",
              "mustafa_namoglu.jpeg",
              false,
              false,
              "",
              "",
              "",
              "https://www.linkedin.com/in/namoglu/",
              """1989 yılında Girne / KKTC’de dünyaya geldi.

2010 yılında Bilkent Üniversitesi CTIS bölümünden mezun olmuştur.

2011 yılında kurduğu MUGO, dünyaca ünlü markaların distribütörlüklerini
yapmakta aynı zamanda perakende sektöründe
faaliyet göstermektedir.

2017 yılında kurduğu ikas, KOBİ’lerin mağaza, pazar yerleri ve e-ticaret
sitelerini tek bir yönetebilmelerini sağlayan bir SaaS şirketidir.

2020 yılında başlattığı Kolay Değil YouTube kanalı ile tecrübelerini tekrar
tekrar kendisine hatırlatmayı ve başkalarına naçizane faydalı olmayı
hedefliyor.""",
              "",
              "",
            ),
            Divider(
              thickness: 5,
              color: dividerColor,
              height: 1,
            ),
            eventCard(
              AppLocalizations.of(context).translate('coffee_break'),
              "",
              "",
              "15:45-16:15",
              "",
              false,
              false,
              "",
              "",
              "",
              "",
              "",
              "",
              "",
            ),
            Divider(
              thickness: 5,
              color: dividerColor,
              height: 1,
            ),
            eventCard(
              "Akıllı Şehirlerde Dijital Reklamcılık",
              "Onur Kardeşler",
              "Co-founder of Firefly",
              "16:15-17:00",
              "onur_kardesler.jpg",
              false,
              false,
              "",
              "",
              "",
              "https://www.linkedin.com/in/onurkardesler/",
              "Koç Üniversitesi,Elektrik Elektronik Mühendisliği Bölümü’nden mezun oldu. INSEAD’dan MBA diploması aldı. Girişimcilik hayatına Londra’da kurduğu teknoloji şirketi ile başladı. Silikon Vadisi’nde çeşitli teknoloji şirketlerinde Ürün Yöneticisi pozisyonunda çalıştı. Firefly’ı Kaan Günay ile 2017 senesinde kurdu.",
              "",
              "",
            ),
            Divider(
              thickness: 5,
              color: dividerColor,
              height: 1,
            ),
            eventCard(
              AppLocalizations.of(context).translate('sahin_boydas'),
              "Şahin Boydaş",
              "Founder & CEO at RemoteTeam.com",
              "17:00-17:55",
              "sahin_boydas.jpg",
              false,
              false,
              "",
              "",
              "",
              "https://www.linkedin.com/in/sahinboydas/",
              """Sahin Boydas is a serial entrepreneur living in Silicon Valley.
Sahin has built and managed 100% remote teams for over a decade. As CEO and founder of RemoteTeam.com, he is working to solve HR and operational problems related to remote work.

Past,
He co-founded movie marketing platform MovieLaLa downloaded millions and reached 360M people with network partnerships. Movielala sold it to Gfycat.

Later he co-founded one of the most successful consumer-facing Augmented Reality apps: Leo AR.
Leo AR featured more than 100+ and selected as Apple's favorite app and App of the day many times.
MojiLaLa and Leo were part of 500 Startups Batch 19, Stanford StartX Batch S19, Betaworks Vision Camp, Quark Accerator.""",
              "",
              "",
            ),
            Divider(
              thickness: 5,
              color: dividerColor,
              height: 1,
            ),
            eventCard(
              AppLocalizations.of(context).translate('aytul_ercil'),
              "Aytül Erçil",
              "Partner and co-CEO/chair of the board at Vispera A.S.",
              "18:00-19:00",
              "aytul_ercil.jpg",
              false,
              false,
              "Aytül Erçil",
              "Partner and co-CEO/chair of the board at Vispera A.S.",
              "aytulercil.jpg",
              "https://www.linkedin.com/in/aytul-ercil-b833b43/",
              """Profesor Dr. Aytül Erçil Boğaziçi Universitesi Elektrik Mühendisliği ve Matematik Bölümlerinden 1979 yılında lisans, Brown Universitesi, uygulamalı matematik bölümünden 1980 yılında yüksek lisans, 1983 yılında ise Doktora derecesini almıştır. 5 yıl General Motors Araştırma Laboratuvarında çalıştıktan sonra 1988 - 2001 yılları arasında Boğaziçi Universitesinde öğretim üyeliği ve kurucusu olduğu BUPAM Yapay Görme Laboratuvarının direktörlüğünü yapmıştır. 2001 -2013 yıllarında ise Sabancı Üniversitesinde öğretim üyeliği ve kurucusu olduğu VPALAB yapay görme laboratuvarının direktörlüğünü yapmıştır. Çeşitli uluslararası projelerde (Nato, FP4, Eureka, NSF, FP6, Nedo, FP7) araştırmacı/proje yürütücüsü olarak görev yapmış olan Prof. Erçil, TÖTİAD – Türk Örüntü Tanıma ve İmge Analizi Derneğinin kurucu başkanı olup, IAPR ‘International Association of Pattern Recognition’ın yönetim kurulu üyesidir. 2006 yılında Prof. Erçil’in kurduğu Vistek ISRA Vision A.Ş. Aralık 2013’de yapay görme konusunda Avrupa’da 1 numara, dünyada 3. konumda olan Alman ISRA Vision firmasına satılmıştır. Prof. Erçil’in çalışmaları ‘Uluslararası Başarı Ödülü’, Eureka Başarı öyküsü, Endeavor girişimcisi, 2010 teknoloji ödülü finalisti, Veuve Clicquot ‘yılın en etkin kadın girişimcisi’ ödülü, Makina ve Aksesuarları Üretim Teknolojileri yarışmasında birincilik ödülü, ‘2013 Türkiye’nin kadın girişimcisi’, ‘Kristal Ağaç yılın kadın girişimcisi’, 2014 Ansiad ‘yılın kadın girişimcisi’, “Microsoft Bilişimde Fark Yaratan Kadın Lider’ ödülü gibi birçok ulusal ve uluslararası ödüle layık görülmüştür.

Prof. Erçil Arcelik Uluslararası Danışma Kurulu üyesi, Allianz Uluslararası Danışma Kurulu üyesi, Swiss Innovation valley danışma kurulu üyesi ve European Machine Vision Association Bilimsel ve Endüstiyel Danışma kurulu üyesi olarak görev yapmaktadır. Seri girişimci olarak çalışmalarına devam eden Prof. Erçil Vispera Bilgi Teknolojileri A.Ş.’nin ortağı ve CEO’sudur. Prof. Erçil sertifikalı melek yatırımcı ve Keiretsu Melek Yatırım ağı üyesidir.""",
              "https://www.linkedin.com/in/aytul-ercil-b833b43/",
              """Profesor Dr. Aytül Erçil Boğaziçi Universitesi Elektrik Mühendisliği ve Matematik Bölümlerinden 1979 yılında lisans, Brown Universitesi, uygulamalı matematik bölümünden 1980 yılında yüksek lisans, 1983 yılında ise Doktora derecesini almıştır. 5 yıl General Motors Araştırma Laboratuvarında çalıştıktan sonra 1988 - 2001 yılları arasında Boğaziçi Universitesinde öğretim üyeliği ve kurucusu olduğu BUPAM Yapay Görme Laboratuvarının direktörlüğünü yapmıştır. 2001 -2013 yıllarında ise Sabancı Üniversitesinde öğretim üyeliği ve kurucusu olduğu VPALAB yapay görme laboratuvarının direktörlüğünü yapmıştır. Çeşitli uluslararası projelerde (Nato, FP4, Eureka, NSF, FP6, Nedo, FP7) araştırmacı/proje yürütücüsü olarak görev yapmış olan Prof. Erçil, TÖTİAD – Türk Örüntü Tanıma ve İmge Analizi Derneğinin kurucu başkanı olup, IAPR ‘International Association of Pattern Recognition’ın yönetim kurulu üyesidir. 2006 yılında Prof. Erçil’in kurduğu Vistek ISRA Vision A.Ş. Aralık 2013’de yapay görme konusunda Avrupa’da 1 numara, dünyada 3. konumda olan Alman ISRA Vision firmasına satılmıştır. Prof. Erçil’in çalışmaları ‘Uluslararası Başarı Ödülü’, Eureka Başarı öyküsü, Endeavor girişimcisi, 2010 teknoloji ödülü finalisti, Veuve Clicquot ‘yılın en etkin kadın girişimcisi’ ödülü, Makina ve Aksesuarları Üretim Teknolojileri yarışmasında birincilik ödülü, ‘2013 Türkiye’nin kadın girişimcisi’, ‘Kristal Ağaç yılın kadın girişimcisi’, 2014 Ansiad ‘yılın kadın girişimcisi’, “Microsoft Bilişimde Fark Yaratan Kadın Lider’ ödülü gibi birçok ulusal ve uluslararası ödüle layık görülmüştür.

Prof. Erçil Arcelik Uluslararası Danışma Kurulu üyesi, Allianz Uluslararası Danışma Kurulu üyesi, Swiss Innovation valley danışma kurulu üyesi ve European Machine Vision Association Bilimsel ve Endüstiyel Danışma kurulu üyesi olarak görev yapmaktadır. Seri girişimci olarak çalışmalarına devam eden Prof. Erçil Vispera Bilgi Teknolojileri A.Ş.’nin ortağı ve CEO’sudur. Prof. Erçil sertifikalı melek yatırımcı ve Keiretsu Melek Yatırım ağı üyesidir.""",
            ),
            Divider(
              thickness: 5,
              color: dividerColor,
              height: 1,
            ),
            eventCard(
              "Kapanış Partisi (Çekiliş)",
              "",
              "",
              "19:00-19:30",
              "",
              false,
              false,
              "",
              "",
              "",
              "",
              "",
              "",
              "",
            ),
          ],
        ),
      );
    } else {
      return Container(
        child: Column(
          children: [
            eventCard(
              AppLocalizations.of(context).translate('opening'),
              "",
              "",
              "13:45-14:00",
              "",
              false,
              false,
              "",
              "",
              "",
              "",
              "",
              "",
              "",
            ),
            Divider(
              thickness: 5,
              color: dividerColor,
              height: 1,
            ),
            eventCard(
              AppLocalizations.of(context).translate('presentations'),
              "",
              "",
              "14:00-15:00",
              "",
              false,
              false,
              "",
              "",
              "",
              "",
              "",
              "",
              "",
            ),
            Divider(
              thickness: 5,
              color: dividerColor,
              height: 1,
            ),
            eventCard(
              AppLocalizations.of(context).translate('break'),
              "",
              "",
              "15:00-15:15",
              "",
              false,
              false,
              "",
              "",
              "",
              "",
              "",
              "",
              "",
            ),
            Divider(
              thickness: 5,
              color: dividerColor,
              height: 1,
            ),
            eventCard(
              AppLocalizations.of(context).translate('ceremony'),
              "",
              "",
              "15:20",
              "",
              false,
              false,
              "",
              "",
              "",
              "",
              "",
              "",
              "",
            ),
            Divider(
              thickness: 5,
              color: dividerColor,
              height: 1,
            ),
          ],
        ),
      );
    }
  }

  speakerDetail(
      String imageUrl, String speaker, String about, String linkedin) {
    return Container(
      height: 680,
      width: 1000,
      color: kBackgroundColor,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                Column(
                  children: [
                    Container(
                      height: 200,
                      child: ClipOval(
                        child: Image.asset(
                          "assets/$imageUrl",
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    linkedin != ""
                        ? MouseRegion(
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
                          )
                        : Container(),
                  ],
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  speaker,
                  style: GoogleFonts.montserrat(
                    color: Colors.white,
                    fontWeight: FontWeight.w200,
                    fontSize: MediaQuery.of(context).size.width / 32,
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Text(
                  about,
                  style: GoogleFonts.montserrat(
                    color: Colors.white,
                    fontWeight: FontWeight.w200,
                    fontSize: MediaQuery.of(context).size.width / 108,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget eventCardSmaller(
      String title,
      String speaker,
      String speakerTitle,
      String time,
      String imageUrl,
      bool isSpeakerTitleSmall,
      bool isTwoSpeakers,
      String secondSpeaker,
      String secondSpeakerTitle,
      String secondSpeakerImageUrl,
      String linkedinFirst,
      String aboutFirst,
      String linkedinSecond,
      String aboutSecond) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Text(
            time,
            style: GoogleFonts.montserrat(
              color: Colors.white,
              fontSize: MediaQuery.of(context).size.width / 32,
            ),
          ),
          SizedBox(height: 40),
          speaker == ""
              ? Container(
                  width: MediaQuery.of(context).size.width / 1.2,
                  height: 100,
                  child: Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width / 1.25,
                        child: Text(
                          title,
                          maxLines: 3,
                          textAlign: TextAlign.left,
                          style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            fontSize: 24,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              : Container(
                  width: MediaQuery.of(context).size.width / 1.2,
                  height: isTwoSpeakers ? 400 : 300,
                  child: Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width / 1.25,
                        child: Text(
                          title,
                          maxLines: 8,
                          textAlign: TextAlign.left,
                          style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            fontSize: 24,
                          ),
                        ),
                      ),
                      SizedBox(height: 40),
                      Container(
                        child: Row(
                          children: [
                            imageUrl != ""
                                ? Container(
                                    width: 80,
                                    height: 80,
                                    child: MouseRegion(
                                      cursor: SystemMouseCursors.click,
                                      child: GestureDetector(
                                        onTap: () {
                                          showDialog(
                                            context: context,
                                            builder: (dialogContext) =>
                                                AlertDialog(
                                              backgroundColor: Colors.white,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          16)),
                                              content: speakerDetailSmaller(
                                                  imageUrl,
                                                  speaker,
                                                  aboutFirst,
                                                  linkedinFirst),
                                            ),
                                          );
                                        },
                                        child: ClipOval(
                                          child: Image.asset(
                                            'assets/$imageUrl',
                                            fit: BoxFit.fitHeight,
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                : Container(),
                            SizedBox(width: 20),
                            Column(
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width / 1.8,
                                  child: Text(
                                    speaker,
                                    textAlign: TextAlign.left,
                                    maxLines: 2,
                                    style: GoogleFonts.montserrat(
                                      color: Colors.orange,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 24,
                                    ),
                                  ),
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width / 1.8,
                                  child: Text(
                                    speakerTitle,
                                    textAlign: TextAlign.left,
                                    maxLines: 5,
                                    style: GoogleFonts.montserrat(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      isTwoSpeakers
                          ? SizedBox(
                              height: 50,
                            )
                          : SizedBox(height: 0),
                      isTwoSpeakers
                          ? Container(
                              child: Row(
                                children: [
                                  secondSpeakerImageUrl != ""
                                      ? Container(
                                          width: 80,
                                          height: 80,
                                          child: MouseRegion(
                                            cursor: SystemMouseCursors.click,
                                            child: GestureDetector(
                                              onTap: () {
                                                showDialog(
                                                  context: context,
                                                  builder: (dialogContext) =>
                                                      AlertDialog(
                                                    backgroundColor:
                                                        Colors.white,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        16)),
                                                    content: speakerDetailSmaller(
                                                        secondSpeakerImageUrl,
                                                        secondSpeaker,
                                                        aboutSecond,
                                                        linkedinSecond),
                                                  ),
                                                );
                                              },
                                              child: ClipOval(
                                                child: Image.asset(
                                                  'assets/$secondSpeakerImageUrl',
                                                  fit: BoxFit.fitHeight,
                                                ),
                                              ),
                                            ),
                                          ),
                                        )
                                      : Container(),
                                  SizedBox(width: 20),
                                  Column(
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.8,
                                        child: Text(
                                          secondSpeaker,
                                          maxLines: 2,
                                          style: GoogleFonts.montserrat(
                                            color: Colors.orange,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 24,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.8,
                                        child: Text(
                                          secondSpeakerTitle,
                                          textAlign: TextAlign.left,
                                          maxLines: 4,
                                          style: GoogleFonts.montserrat(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 20,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          : Container(),
                    ],
                  ),
                ),
        ],
      ),
    );
  }

  Container eventListSmallerContainer() {
    if (selectedButton == 0) {
      return Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            eventCardSmaller(
              AppLocalizations.of(context).translate('opening_speech'),
              "Hakan Kızıltoprak",
              "Director of TOBB ETU Technology Transfer Office",
              "12:30-12.45",
              "hakan_kiziltoprak.jpg",
              false,
              true,
             "Doç. Dr. Göknur Büke",
              "Ar-Ge ve İnovasyondan Sorumlu Rektör Danışmanı",
              "goknur_buke.jpg",
              "https://www.linkedin.com/in/hakankiziltoprak/?originalSubdomain=tr",
              "Special Advisor to President - TOBB Director,Technology Transfer Office - TOBB ETU Member of the Board of Directors, Turkish Accelerator Radiation Laboratory - TARLA Finance Committee Delegate & Chair of ILO Forum - CERN",
              "https://www.linkedin.com/in/g%C3%B6knur-b%C3%BCke-490a1749/?originalSubdomain=tr",
              "",
            ),
            Divider(
              thickness: 5,
              color: dividerColor,
              height: 1,
            ),
            eventCardSmaller(
              AppLocalizations.of(context).translate('fintech_ecosystem'),
              "Deniz Güven",
              "CEO and Executive Board of Director at Mox Bank",
              "12:50-13:40",
              "deniz_guven.jpg",
              false,
              false,
              "",
              "",
              "",
              "https://www.linkedin.com/in/denizguven/",
              """Deniz Güven is an internationally recognized leader in driving digital transformations and bringing new digital banking experiences to audiences globally.

At Standard Chartered, he oversees a great number of initiatives, ranging from global digital insights & strategies, client journeys, and optimizations, digital wealth initiatives to collaborations with leading tech firms and emerging start-ups. His aim is to transform the Bank into a digital business and to create fresh and exciting digital experiences. Deniz believes that by integrating banking to client’s lives seamlessly, the Bank adds the human touch that compliments people’s active and fast-paced lifestyles.

Prior to joining Standard Chartered, Deniz served as the Senior Vice President at BBVA Group’s Garanti Bank, Turkey’s most valuable company by market capitalization. His role included the management and oversight of mobile and online banking channels, ATM and voice technologies including call center, along with user experience and service design, digital marketing and communications, partnering, corporately owned websites, and social media channels.""",
              "",
              "",
            ),
            Divider(
              thickness: 5,
              color: dividerColor,
              height: 1,
            ),
            eventCardSmaller(
              AppLocalizations.of(context).translate('world_wants'),
              "Mustafa Can",
              "Yaratıcı Marka Danışmanı",
              "13:45-14:25",
              "mustafa_can.jpeg",
              false,
              false,
              "",
              "",
              "",
              "",
              """70’li yılların başında Türkiye’nin tam da nedenini anlamadan birbirine sağcı solcu diyerek ötekileştirdikleri zamanlarda doğdu.

Çocukluğunu eski bir başkent olma havasını henüz kaybetmemiş Trabzon’da –çoğunlukla hayal kurarak ve hayat ansiklopedisi okuyarak – geçirdi.

80’li yılların ortalarında “Hayalle peynir gemisi yürümüyor” lafını öğrendiği Samsuna taşındı. Kaos teorisine uygun şekilde, lisedeki öğretmeninin itinasıyla, Resim Bölümünü kazandı ve okudu.

Değişik ve ilgisini çeken hemen her şeyi öğrenmek hobisiydi. Üniversiteyi bitirene kadar, çocuk yuvasında resim öğretmenliğinden, otopark bekçiliğine kadar yirmiye yakın işte çalıştı. Türkiye’nin büyük bir bölümünü dolaştı.

Bir kaç yıl öğretmenlik yaptıktan sonra Milenyumla birlikte İstanbul’a yerleşti.

Birçok projede bağımsız art direktör ve yönetmen olarak çalıştı.

Farklı konulara ilgisini -ya da maymun iştahlılığını- en iyi gidereceği mesleğe yöneldi. 2007 yılında kendi reklam ajansını kurdu. On yıl kadar bu ajansın ajans başkanlığını yaptı. Kozmetikten sağlığa, hukuktan kuru yemişe birçok sektörde yerli ve uluslararası markalarla bütünleşik pazarlama, markalaşma, iletişim fikirleri üzerine çeşitli projeler çalıştı.

www.gecmisgazete.com’u hayata geçirdi.

Marka yayıncılığı, kişisel markalaşma, yakın gelecekteki iletişim modelleri, yerel markalaşma, profesyonel fikir üreticisi olmak gibi konulara özel ilgi gösterdi.

Türkiye’de “fikir ajansı” olur mu diye sordu ve denedi.

Halen “Yaratıcı Marka Danışmanı” olarak birçok marka ve kişiye danışmanlık vermektedir.""",
              "",
              "",
            ),
            Divider(
              thickness: 5,
              color: dividerColor,
              height: 1,
            ),
            eventCardSmaller(
              AppLocalizations.of(context).translate('coffee_break'),
              "",
              "",
              "14:30-15:00",
              "",
              false,
              false,
              "",
              "",
              "",
              "",
              "",
              "",
              "",
            ),
            Divider(
              thickness: 5,
              color: dividerColor,
              height: 1,
            ),
            eventCardSmaller(
              AppLocalizations.of(context).translate('build_future'),
              "Mustafa Savaş",
              "Founder of Kimola",
              "15:00-15:40",
              "mustafa_savas.jpg",
              false,
              false,
              "",
              "",
              "",
              "https://www.linkedin.com/in/mustafasavas/",
              "He studied Mechanical Engineering at university and worked as a software developer and trainer for many years. Today, he leads the core technology development of Kimola and he is also responsible for company’s future plans and strategies.",
              "",
              "",
            ),
            Divider(
              thickness: 5,
              color: dividerColor,
              height: 1,
            ),
            eventCardSmaller(
              "Girişimcilikte Global Başarı Nasıl Yakalanır?",
              "Sezer Değirmenbaşı",
              "Industry Manager; Start-Ups, Apps & Gaming at Google",
              "15:45-16:25",
              "sezer_degirmenbasi.jpg",
              false,
              false,
              "",
              "",
              "",
              "https://www.linkedin.com/in/sezer/",
              "Sezer Değirmenbaşı İTÜ İşletme Mühendisliği bölümünden 2006 yılında mezun oldu. 2009 yılında Boğaziçi Üniversitesi'nde İşletme Bilişim Sistemleri bölümünde yüksek lisansını tamamladı. 2006 - 2007 yılları arasında GittiGidiyor.com'da Category & Marketing Specialist olarak çalıştı. Ardından 2007 - 2010 yılları arasında Sony'de Analytics & Communications Consultant olarak görev aldı. 2010 yılından beri çalışmakta olduğu şirket olan Google'da ise Account Strategist, Account Manager, Principal Account Manager olmak üzere birçok pozisyonda görev yaptı. Şu anda Industry Manager olarak Google'da çalışmaya devam etmekte.",
              "",
              "",
            ),
            Divider(
              thickness: 5,
              color: dividerColor,
              height: 1,
            ),
            eventCardSmaller(
              AppLocalizations.of(context).translate('coffee_break'),
              "",
              "",
              "16:30-17:00",
              "",
              false,
              false,
              "",
              "",
              "",
              "",
              "",
              "",
              "",
            ),
            Divider(
              thickness: 5,
              color: dividerColor,
              height: 1,
            ),
            eventCardSmaller(
              AppLocalizations.of(context).translate('evolving'),
              "Çiğdem Kayalı",
              "Microsoft MEA Teknoloji Direktörü, Teknolojide Kadın Derneği Yönetim Kurulu Üyesi",
              "17:00-17:55",
              "cigdem_kayali.jpg",
              true,
              true,
              "Zehra Öney",
              "Founding President of Teknolojide Kadın Derneği (Wtech)",
              "zehra_oney.jpg",
              "https://www.linkedin.com/in/cigdem-kayali-0b8555/",
              """Çiğdem Kayalı, kurumların dijital dönüşüm yolculuklarına ışık tutan, hızla gelişen teknoloji trendlerinin yaygınlaştırılmasında rol oynayan liderlerdendir. Son 5 yılını farklı sektörlerin bulut servislerinden yararlanmaları için çaba harcadı ve Microsoft’un Türkiye’de genel bulutta lider olarak yer almasında rol oynadı.

Kontollü riskler almayı seven, derin endüstri bilgisine sahip olan Kayalı, kurumların ve tüketicilerin bulut servisleri ile tanışması için öncülük etmiştir. Kayalı, başta Office 365 olmak üzere Microsoft bulut servislerinin pazar stratejisini tasarladı, geliştirdi ve yönetti. Microsoft’taki 20 yıllık görev süresi boyunca, Kayalı iş stratejileri geliştirerek ve yeni iş modellerini hayata geçirerek ün kazandı. Microsoft MEA, CEE ve EMEA bölge ofislerinde farklı yöneticilik pozisyonlarında görev aldı. Bölge ülkelerindeki dijital dönüşüm faliyetlerinde liderlik gösterdiği gibi, farklı sektörlerde bu ürün gruplarının uyarlamalarında rol almıştır.

Kayalı, İşletme alanında Yüksek Lisans derecesine sahip bir Bilgisayar Mühendisidir.""",
              "https://www.linkedin.com/in/zehraoney/",
              """Futurist, mobil dönüşüm uzmanı, yatırımcı, uygulamacı, konuşmacı, teknoloji markalaşma ve pazarlama uzmanı olan Zehra Öney 1964 yılında İstanbul’da doğdu, İstanbul Üniversitesi’nde Ekonomi eğitimi aldıktan sonra 10 yıl boyunca Turizm sektöründe Türkiye’nin sayılı acentelerinde üst düzey pozisyonlarda görev aldı. Son 16 yılda ise Telekomünikasyon, Mobil ve Dijital alanlarda profesyonel yönetici olarak kariyerine devam etti. 2002 – 2007 yılları arasında Turkcell’de Uluslararası İş Geliştirme, Avrupa Birliği ve Amerika İlişkilerinde Yönetici olarak görev yapan Zehra Öney, 2007 – 2011 yılları arasında Mobilera A.Ş. Genel Müdürlüğü ile Mobilera BV Genel Müdür Yardımcılığı görevlerini eşzamanlı olarak yürüttü. 

 

2011 yılında kendi ajansı 360+ Media Interactive’i kuran Zehra Öney, Ajans Başkanı olarak görevini sürdürmektedir. 2013 yılında Türkiye’yi artırılmış gerçeklik ile tanıştırmıştır. 2011 yılında Londra İngiltere’de kurulan ve günümüzde dünya çapında 65 milyondan fazla üyeye sahip olan artırılmış gerçeklik uygulaması Blippar’ın 2014-2017 yılları arasında Türkiye CEO’su ve aynı zamanda Blippar Global SMT (Senior Management Team) ve Blippar Türkiye Münhasır Temsilcisi olarak da görev yapmıştır.

 

Zehra Öney, Teknolojide Kadın Derneği Kurucu Başkanı, Dorçe Prefabrik Bağımsız Yönetim Kurulu ve İdare Meclisi Üyesi, Bahçeşehir Üniversitesi Graduate School of Business Yönetim Kurulu üyesi, MMA (Mobile Marketing Association) Türkiye Yönetim Kurulu ve İcra Kurulu üyesi, Türkiye Kadın Girişimciler Derneği (KAGİDER) üyesi, TAİK (Türkiye-ABD İş Konseyi) Dijital İletişim Danışmanı ve Startupbootcamp merkezli Türk Mentor Hareketi, Mentor Effect platformu Lead Mentor’ü olarak da çalışmalarına devam etmektedir. Öney aynı zamanda pazarlama ve reklam alanlarında artırılmış gerçeklik, yapay zeka, nesnelerin interneti ve sanal gerçeklik uygulamaları uzmanı ve uygulayıcısıdır. """,
            ),
            Divider(
              thickness: 5,
              color: dividerColor,
              height: 1,
            ),
            eventCardSmaller(
              AppLocalizations.of(context).translate('enterprise'),
              "Ceri Cukran",
              "Managing the startup investment process at StartersHub - Co-Founder at Insumo",
              "18:00-19:00",
              "ceri_cukran.jpg",
              false,
              true,
              "Haluk Nişli",
              "Director of Strategy and Finance at Thread In Motion",
              "haluk_nisli.jpg",
              "https://www.linkedin.com/in/ceri-cukran-67204960/",
              "Ceri Cukran, 2017 yılında istanbul Bilgi Üniversitesi İşletme Bölümü'nden mezun oldu. Insumo'nun kurucu ortağı ve San Francisco, California merkezli StartersHub'ın ortağıdır. Daha önce Gamer's Qube'da Business Development Manager ve Big Chefs'te Assistant Manager olarak görev yaptı.",
              "https://www.linkedin.com/in/haluk-ni%C5%9Fli-bb6aa692/",
              "Koç Üniversitesi Endüstri Mühendisliği bölümünden mezun olduktan sonra yine Koç Üniversitesi Uluslararası Yönetim Yüksek Lisansı’nı tamamlayan Haluk Nişli, erken aşama teknoloji yatırım fonu olan StartersHub’da Yatırım ve Hukuki İlişkiler Müdürü olarak görev almıştır. Risk sermayesi yatırım fonlarından sonra girişimcilik konusunda da kendini geliştirmeyi amaçlayan Haluk Nişli, an itibariyle giyilebilir teknoloji platformu üreten Thread in Motion şirketinde Strateji ve Finans Direktörü olarak görev yapmaktadır.",
            ),
            Divider(
              thickness: 5,
              color: dividerColor,
              height: 1,
            ),
          ],
        ),
      );
    }
    if (selectedButton == 1) {
      return Container(
        child: Column(
          children: [
            eventCardSmaller(
              "Yarının Dünyasında Girişimcilik",
              "Yasin Oral",
              "Founder, CEO / Paribu",
              "12:30-13:10",
              "yasin_oral.jpg",
              false,
              false,
              "",
              "",
              "",
              "https://www.linkedin.com/in/yasinoral/",
              """1985 yılında Ankara’da doğan Yasin Oral, yazılım çalışmalarına lise döneminde başladı. 2001’de, henüz lise öğrencisiyken TÜBİTAK’ın bir yarışmasına katıldı ve TÜBİTAK web sitesi geliştirmelerine dışarıdan destek sağladı.

Üniversite yıllarında taşımacılık sektöründe faaliyet gösteren bir internet sitesi kurdu ve site kısa süre içinde nakliyeciler arasındaki koordinasyonu sağlayan tek platform haline geldi.

2009’da Gazi Üniversitesi İktisadi ve İdari Bilimler Fakültesi’nden mezun olan Oral, 2010’da Türkiye’nin ilk online matbaası matbuu.com’u hayata geçirdi.

Bu girişimlerinin yanı sıra tüm dünyada hizmet veren birçok mesafe hesaplama ve rota görüntüleme projesi yaratarak günlük 250 binin üzerinde kullanıcıya hizmet vermeye başladı. 2015’te online bilet satın alım platformu Biletgo’yu kurdu.

2015’te Paribu’nun ön hazırlık çalışmalarına başladı. Paribu, 2016’da kuruldu, 14 Şubat 2017’de kullanıma açıldı.

Halen Paribu CEO’su olan Oral, Blockchain Türkiye Platformu Yürütme Kurulu üyesi ve Türkiye Genç İş Adamları Derneği üyesidir.""",
              "",
              "",
            ),
            Divider(
              thickness: 5,
              color: dividerColor,
              height: 1,
            ),
            eventCardSmaller(
              AppLocalizations.of(context).translate('measuring'),
              "Beril Kocadereli",
              "MSc Innovation at KTH I Norrsken Impact Accelerator | Startup Grind Stockholm",
              "13:10-13:55",
              "beril_kocadereli.jpg",
              false,
              false,
              "",
              "",
              "",
              "https://www.linkedin.com/in/berilkocadereli/",
              "Beril Kocadereli Bilkent Üniversitesi Endüstri Mühendisliğinden 2019 yılında mezun oldu. 2021 yılında KTH Royal Institute of Technology'de Entrepreneurship and Innovation Management bölümünde master'ını tamamladı. \"Social impact measurement from an investor perspective: Impact investments\" konusunda master tezi hazırladı. Şu anda Startup Grind Stockholm'de Parnerships Lead ve Norrsken Foundation'da Impact Accelerator Intern olarak görev almakta.",
              "",
              "",
            ),
            Divider(
              thickness: 5,
              color: dividerColor,
              height: 1,
            ),
            eventCardSmaller(
              AppLocalizations.of(context).translate('osman_baytaroglu'),
              "Osman Baytaroğlu",
              "Co Founder and CEO at Agcurate, Accurate Rural Intelligence for Agribusiness.",
              "14:00-14:55",
              "osman_baytaroglu.jpg",
              false,
              false,
              "",
              "",
              "",
              "https://www.linkedin.com/in/osmanbaytaroglu/",
              """He has gathered teams for high impact projects and built a couple of great products:

>He has fundraised an amount of \$15.000 for LÖSEV (the Foundation for Children with Leukemia) as Vice President of Fine Arts Society at METU (2009)

>Between 2010 and 2013 he has led a student team of engineers, architects, designers, and marketers that succeeded to be selected to compete in Solar Decathlon China 2013, a student competition about designing and building solar powered houses.

>In 2014, he founded Innomotive, and they released global-first single sensor solution for intelligent intersection management. They exited the company later.

>In 2017, he founded Agrovisio and they delivered first "soil yield potential map of Turkey" which constitutes the baseline of drought insurance products of TARSIM, Agriculture Insurance Pool of Turkey.""",
              "",
              "",
            ),
            Divider(
              thickness: 5,
              color: dividerColor,
              height: 1,
            ),
            eventCardSmaller(
              AppLocalizations.of(context).translate('mustafa_namoglu'),
              "Mustafa Namoğlu",
              "CEO at ikas.com",
              "15:00-15:45",
              "mustafa_namoglu.jpeg",
              false,
              false,
              "",
              "",
              "",
              "https://www.linkedin.com/in/namoglu/",
              """1989 yılında Girne / KKTC’de dünyaya geldi.

2010 yılında Bilkent Üniversitesi CTIS bölümünden mezun olmuştur.

2011 yılında kurduğu MUGO, dünyaca ünlü markaların distribütörlüklerini
yapmakta aynı zamanda perakende sektöründe
faaliyet göstermektedir.

2017 yılında kurduğu ikas, KOBİ’lerin mağaza, pazar yerleri ve e-ticaret
sitelerini tek bir yönetebilmelerini sağlayan bir SaaS şirketidir.

2020 yılında başlattığı Kolay Değil YouTube kanalı ile tecrübelerini tekrar
tekrar kendisine hatırlatmayı ve başkalarına naçizane faydalı olmayı
hedefliyor.""",
              "",
              "",
            ),
            Divider(
              thickness: 5,
              color: dividerColor,
              height: 1,
            ),
            eventCardSmaller(
              AppLocalizations.of(context).translate('coffee_break'),
              "",
              "",
              "15:45-16:15",
              "",
              false,
              false,
              "",
              "",
              "",
              "",
              "",
              "",
              "",
            ),
            Divider(
              thickness: 5,
              color: dividerColor,
              height: 1,
            ),
            eventCardSmaller(
              "Akıllı Şehirlerde Dijital Reklamcılık",
              "Onur Kardeşler",
              "Co-founder of Firefly",
              "16:15-17:00",
              "onur_kardesler.jpg",
              false,
              false,
              "",
              "",
              "",
              "https://www.linkedin.com/in/onurkardesler/",
              "Koç Üniversitesi,Elektrik Elektronik Mühendisliği Bölümü’nden mezun oldu. INSEAD’dan MBA diploması aldı. Girişimcilik hayatına Londra’da kurduğu teknoloji şirketi ile başladı. Silikon Vadisi’nde çeşitli teknoloji şirketlerinde Ürün Yöneticisi pozisyonunda çalıştı. Firefly’ı Kaan Günay ile 2017 senesinde kurdu.",
              "",
              "",
            ),
            Divider(
              thickness: 5,
              color: dividerColor,
              height: 1,
            ),
            eventCardSmaller(
              AppLocalizations.of(context).translate('sahin_boydas'),
              "Şahin Boydaş",
              "Founder & CEO at RemoteTeam.com",
              "17:00-17:55",
              "sahin_boydas.jpg",
              false,
              false,
              "",
              "",
              "",
              "https://www.linkedin.com/in/sahinboydas/",
              """Sahin Boydas is a serial entrepreneur living in Silicon Valley.
Sahin has built and managed 100% remote teams for over a decade. As CEO and founder of RemoteTeam.com, he is working to solve HR and operational problems related to remote work.

Past,
He co-founded movie marketing platform MovieLaLa downloaded millions and reached 360M people with network partnerships. Movielala sold it to Gfycat.

Later he co-founded one of the most successful consumer-facing Augmented Reality apps: Leo AR.
Leo AR featured more than 100+ and selected as Apple's favorite app and App of the day many times.
MojiLaLa and Leo were part of 500 Startups Batch 19, Stanford StartX Batch S19, Betaworks Vision Camp, Quark Accerator.""",
              "",
              "",
            ),
            Divider(
              thickness: 5,
              color: dividerColor,
              height: 1,
            ),
            eventCardSmaller(
              AppLocalizations.of(context).translate('aytul_ercil'),
              "Aytül Erçil",
              "Partner and co-CEO/chair of the board at Vispera A.S.",
              "18:00-19:00",
              "aytul_ercil.jpg",
              false,
              false,
              "Aytül Erçil",
              "Partner and co-CEO/chair of the board at Vispera A.S.",
              "aytulercil.jpg",
              "https://www.linkedin.com/in/aytul-ercil-b833b43/",
              """Profesor Dr. Aytül Erçil Boğaziçi Universitesi Elektrik Mühendisliği ve Matematik Bölümlerinden 1979 yılında lisans, Brown Universitesi, uygulamalı matematik bölümünden 1980 yılında yüksek lisans, 1983 yılında ise Doktora derecesini almıştır. 5 yıl General Motors Araştırma Laboratuvarında çalıştıktan sonra 1988 - 2001 yılları arasında Boğaziçi Universitesinde öğretim üyeliği ve kurucusu olduğu BUPAM Yapay Görme Laboratuvarının direktörlüğünü yapmıştır. 2001 -2013 yıllarında ise Sabancı Üniversitesinde öğretim üyeliği ve kurucusu olduğu VPALAB yapay görme laboratuvarının direktörlüğünü yapmıştır. Çeşitli uluslararası projelerde (Nato, FP4, Eureka, NSF, FP6, Nedo, FP7) araştırmacı/proje yürütücüsü olarak görev yapmış olan Prof. Erçil, TÖTİAD – Türk Örüntü Tanıma ve İmge Analizi Derneğinin kurucu başkanı olup, IAPR ‘International Association of Pattern Recognition’ın yönetim kurulu üyesidir. 2006 yılında Prof. Erçil’in kurduğu Vistek ISRA Vision A.Ş. Aralık 2013’de yapay görme konusunda Avrupa’da 1 numara, dünyada 3. konumda olan Alman ISRA Vision firmasına satılmıştır. Prof. Erçil’in çalışmaları ‘Uluslararası Başarı Ödülü’, Eureka Başarı öyküsü, Endeavor girişimcisi, 2010 teknoloji ödülü finalisti, Veuve Clicquot ‘yılın en etkin kadın girişimcisi’ ödülü, Makina ve Aksesuarları Üretim Teknolojileri yarışmasında birincilik ödülü, ‘2013 Türkiye’nin kadın girişimcisi’, ‘Kristal Ağaç yılın kadın girişimcisi’, 2014 Ansiad ‘yılın kadın girişimcisi’, “Microsoft Bilişimde Fark Yaratan Kadın Lider’ ödülü gibi birçok ulusal ve uluslararası ödüle layık görülmüştür.

Prof. Erçil Arcelik Uluslararası Danışma Kurulu üyesi, Allianz Uluslararası Danışma Kurulu üyesi, Swiss Innovation valley danışma kurulu üyesi ve European Machine Vision Association Bilimsel ve Endüstiyel Danışma kurulu üyesi olarak görev yapmaktadır. Seri girişimci olarak çalışmalarına devam eden Prof. Erçil Vispera Bilgi Teknolojileri A.Ş.’nin ortağı ve CEO’sudur. Prof. Erçil sertifikalı melek yatırımcı ve Keiretsu Melek Yatırım ağı üyesidir.""",
              "https://www.linkedin.com/in/aytul-ercil-b833b43/",
              """Profesor Dr. Aytül Erçil Boğaziçi Universitesi Elektrik Mühendisliği ve Matematik Bölümlerinden 1979 yılında lisans, Brown Universitesi, uygulamalı matematik bölümünden 1980 yılında yüksek lisans, 1983 yılında ise Doktora derecesini almıştır. 5 yıl General Motors Araştırma Laboratuvarında çalıştıktan sonra 1988 - 2001 yılları arasında Boğaziçi Universitesinde öğretim üyeliği ve kurucusu olduğu BUPAM Yapay Görme Laboratuvarının direktörlüğünü yapmıştır. 2001 -2013 yıllarında ise Sabancı Üniversitesinde öğretim üyeliği ve kurucusu olduğu VPALAB yapay görme laboratuvarının direktörlüğünü yapmıştır. Çeşitli uluslararası projelerde (Nato, FP4, Eureka, NSF, FP6, Nedo, FP7) araştırmacı/proje yürütücüsü olarak görev yapmış olan Prof. Erçil, TÖTİAD – Türk Örüntü Tanıma ve İmge Analizi Derneğinin kurucu başkanı olup, IAPR ‘International Association of Pattern Recognition’ın yönetim kurulu üyesidir. 2006 yılında Prof. Erçil’in kurduğu Vistek ISRA Vision A.Ş. Aralık 2013’de yapay görme konusunda Avrupa’da 1 numara, dünyada 3. konumda olan Alman ISRA Vision firmasına satılmıştır. Prof. Erçil’in çalışmaları ‘Uluslararası Başarı Ödülü’, Eureka Başarı öyküsü, Endeavor girişimcisi, 2010 teknoloji ödülü finalisti, Veuve Clicquot ‘yılın en etkin kadın girişimcisi’ ödülü, Makina ve Aksesuarları Üretim Teknolojileri yarışmasında birincilik ödülü, ‘2013 Türkiye’nin kadın girişimcisi’, ‘Kristal Ağaç yılın kadın girişimcisi’, 2014 Ansiad ‘yılın kadın girişimcisi’, “Microsoft Bilişimde Fark Yaratan Kadın Lider’ ödülü gibi birçok ulusal ve uluslararası ödüle layık görülmüştür.

Prof. Erçil Arcelik Uluslararası Danışma Kurulu üyesi, Allianz Uluslararası Danışma Kurulu üyesi, Swiss Innovation valley danışma kurulu üyesi ve European Machine Vision Association Bilimsel ve Endüstiyel Danışma kurulu üyesi olarak görev yapmaktadır. Seri girişimci olarak çalışmalarına devam eden Prof. Erçil Vispera Bilgi Teknolojileri A.Ş.’nin ortağı ve CEO’sudur. Prof. Erçil sertifikalı melek yatırımcı ve Keiretsu Melek Yatırım ağı üyesidir.""",
            ),
            Divider(
              thickness: 5,
              color: dividerColor,
              height: 1,
            ),
            eventCardSmaller(
              "Kapanış Partisi (Çekiliş)",
              "",
              "",
              "19:00-19:30",
              "",
              false,
              false,
              "",
              "",
              "",
              "",
              "",
              "",
              "",
            ),
          ],
        ),
      );
    } else {
      return Container(
        child: Column(
          children: [
            eventCardSmaller(
              AppLocalizations.of(context).translate('opening'),
              "",
              "",
              "13:45-14:00",
              "",
              false,
              false,
              "",
              "",
              "",
              "",
              "",
              "",
              "",
            ),
            Divider(
              thickness: 5,
              color: dividerColor,
              height: 1,
            ),
            eventCardSmaller(
              AppLocalizations.of(context).translate('presentations'),
              "",
              "",
              "14:00-15:00",
              "",
              false,
              false,
              "",
              "",
              "",
              "",
              "",
              "",
              "",
            ),
            Divider(
              thickness: 5,
              color: dividerColor,
              height: 1,
            ),
            eventCardSmaller(
              AppLocalizations.of(context).translate('break'),
              "",
              "",
              "15:00-15:15",
              "",
              false,
              false,
              "",
              "",
              "",
              "",
              "",
              "",
              "",
            ),
            Divider(
              thickness: 5,
              color: dividerColor,
              height: 1,
            ),
            eventCardSmaller(
              AppLocalizations.of(context).translate('ceremony'),
              "",
              "",
              "15:20",
              "",
              false,
              false,
              "",
              "",
              "",
              "",
              "",
              "",
              "",
            ),
            Divider(
              thickness: 5,
              color: dividerColor,
              height: 1,
            ),
          ],
        ),
      );
    }
  }

  speakerDetailSmaller(
      String imageUrl, String speaker, String about, String linkedin) {
    return Container(
      height: 580,
      width: 1000,
      color: kBackgroundColor,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 100,
                  child: ClipOval(
                    child: Image.asset(
                      "assets/$imageUrl",
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Column(
                  children: [
                    Container(
                      width: 200,
                      child: Text(
                        speaker,
                        style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontWeight: FontWeight.w200,
                          fontSize: MediaQuery.of(context).size.width / 24,
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    linkedin != ""
                        ? MouseRegion(
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
                          )
                        : Container(),
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
                  about,
                  style: GoogleFonts.montserrat(
                    color: Colors.white,
                    fontWeight: FontWeight.w200,
                    fontSize: MediaQuery.of(context).size.width / 32,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

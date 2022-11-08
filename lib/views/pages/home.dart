import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:perkantas/theme.dart';
import 'package:perkantas/views/widgets/card_tahap_ktb.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DateTime? currentBackPressTime;

    Future<bool> onWillPop() {
      DateTime now = DateTime.now();
      if (currentBackPressTime == null ||
          now.difference(currentBackPressTime!) > const Duration(seconds: 2)) {
        currentBackPressTime = now;
        Fluttertoast.showToast(
            backgroundColor: black2, textColor: white, msg: "Tekan Back 2x");
        return Future.value(false);
      }
      return Future.value(true);
    }

    Widget greeting() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Hi, Hengky", style: h3),
          SizedBox(height: sMargin),
          Text("Mari bertumbuh bersama Kristus", style: subtitleRegular)
        ],
      );
    }

    Widget ayatHafalan() {
      return Container(
        // height: 120,
        padding: EdgeInsets.symmetric(horizontal: mMargin),
        decoration: BoxDecoration(
            color: primary, borderRadius: BorderRadius.circular(5)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: lMargin),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AutoSizeText("Ayat hafalan hari ini",
                        minFontSize: 14,
                        maxLines: 1,
                        style: subtitleBold.copyWith(color: white)),
                    SizedBox(height: sMargin),
                    AutoSizeText(
                        "Ia tidak bersukacita karena ketidakadilan, tetapi ia bersukacita karena kebenaran.",
                        minFontSize: 6,
                        maxLines: 3,
                        style: captionRegular.copyWith(color: white)),
                    SizedBox(height: sMargin),
                    AutoSizeText("1 Korintus 13:6 TB",
                        minFontSize: 9,
                        style: captionExtraBold.copyWith(color: white))
                  ],
                ),
              ),
            ),
            SizedBox(width: lMargin),
            Image.asset(
              "assets/images/bible.png",
              height: 130,
              // width:
            )
          ],
        ),
      );
    }

    Widget tahapKTB() {
      return SizedBox(
        width: MediaQuery.of(context).size.width - (2 * screenPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Minggu ini kamu mau ngapain?", style: subtitleBold),
            SizedBox(height: mMargin),
            SizedBox(
              height: 320,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: lMargin),
                        child: CardKTB(
                          'Mengenal Diriku Lebih Dekat',
                          'Ayo kenali aku lebih dekat lagi, kamu akan tau lebih banyak tentang aku. Tak kenal maka tak sayang!',
                          'Kenali Aku Sekarang',
                          'assets/images/woman1.png',
                          danger,
                          '/pdkt',
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: lMargin),
                        child: CardKTB(
                          'Siapa sih DIA? Cari Tahu Yuk!',
                          'DIA itu siapa sih? Kok begitu, kok begini.. Ayo cari tahu lebih dalam lagi siapa si DIA.',
                          'Cari Tahu Sekarang',
                          'assets/images/woman2.png',
                          warning,
                          '/injil',
                        ),
                      ),
                      CardKTB(
                        'Aku Gak Sendirian. Aku, Kamu, Sefrekuensi',
                        'Kalo punya teman yang sefrekuensi itu asik ya... Tapi ada dimana ya? Hmm aku harus tau nih.',
                        'Lihat Teman Sefrekuensi',
                        'assets/images/woman3.png',
                        secondary,
                        '/pemuridan',
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: white,
      body: WillPopScope(
        onWillPop: onWillPop,
        child: SafeArea(
            child: Container(
          margin: EdgeInsets.only(
              left: screenPadding, right: screenPadding, top: xxlMargin),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              greeting(),
              SizedBox(height: xlMargin),
              ayatHafalan(),
              SizedBox(height: xlMargin),
              tahapKTB()
            ],
          ),
        )),
      ),
    );
  }
}

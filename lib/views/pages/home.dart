import 'package:flutter/material.dart';
import 'package:perkantas/theme.dart';
import 'package:perkantas/views/widgets/card_tahap_ktb.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
        padding: EdgeInsets.symmetric(horizontal: mMargin),
        decoration: BoxDecoration(
            color: primary, borderRadius: BorderRadius.circular(5)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: lMargin),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Ayat hafalan hari ini",
                        style: subtitleBold.copyWith(color: white)),
                    SizedBox(height: sMargin),
                    Text(
                        "Ia tidak bersukacita karena ketidakadilan, tetapi ia bersukacita karena kebenaran.",
                        style: captionRegular.copyWith(color: white)),
                    SizedBox(height: sMargin),
                    Text("1 Korintus 13:6 TB",
                        style: captionBold.copyWith(color: white))
                  ],
                ),
              ),
            ),
            SizedBox(width: lMargin),
            Container(
              height: 113,
              width: 84,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/bible.png"))),
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
                            danger),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: lMargin),
                        child: CardKTB(
                            'Siapa sih DIA? Cari Tahu Yuk!',
                            'DIA itu siapa sih? Kok begitu, kok begini.. Ayo cari tahu lebih dalam lagi siapa si DIA.',
                            'Cari Tahu Sekarang',
                            'assets/images/woman2.png',
                            warning),
                      ),
                      CardKTB(
                          'Aku Tidak Sendirian',
                          'Kalo punya teman yang sefrekuensi itu asik ya... Tapi ada dimana ya? Hmm aku harus tau nih.',
                          'Lihat Teman Sefrekuensi',
                          'assets/images/woman3.png',
                          secondary),
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
      body: SafeArea(
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
    );
  }
}

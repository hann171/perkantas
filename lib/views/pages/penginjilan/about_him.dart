import 'package:flutter/material.dart';
import 'package:perkantas/views/widgets/video_box.dart';

import '../../../theme.dart';

class AboutHim extends StatelessWidget {
  const AboutHim({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget pertanyaan1Input() {
      return Container(
          margin: EdgeInsets.only(top: xlMargin),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Apakah hatiku pernah terluka dan luka itu masih ada?',
                style: subtitleBold,
              ),
              const SizedBox(height: 12),
              Container(
                // height: 54,
                decoration: BoxDecoration(
                  color: const Color(0xffEFEFEF),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Center(
                  child: TextFormField(
                      // controller: usernameController,
                      maxLines: 8,
                      keyboardType: TextInputType.multiline,
                      style: subtitleRegular,
                      decoration: InputDecoration(
                          contentPadding: const EdgeInsets.all(16),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(4),
                              borderSide: BorderSide(color: primary)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  const BorderSide(color: Color(0xffEFEFEF))),
                          hintText: 'Ceritakan...',
                          hintStyle: subtitleRegular.copyWith(
                              color: const Color(0xffC0C0C0))),
                      textInputAction: TextInputAction.next),
                ),
              )
            ],
          ));
    }

    Widget pertanyaan2Input() {
      return Container(
          margin: EdgeInsets.only(top: xlMargin),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Apakah hatiku mau disembuhkan oleh Tuhan Yesus sehingga aku bisa mengampuni orang yang menyakiti hatiku?',
                style: subtitleBold,
              ),
              const SizedBox(height: 12),
              Container(
                // height: 54,
                decoration: BoxDecoration(
                  color: const Color(0xffEFEFEF),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Center(
                  child: TextFormField(
                      // controller: usernameController,
                      maxLines: 8,
                      keyboardType: TextInputType.multiline,
                      style: subtitleRegular,
                      decoration: InputDecoration(
                          contentPadding: const EdgeInsets.all(16),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(4),
                              borderSide: BorderSide(color: primary)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  const BorderSide(color: Color(0xffEFEFEF))),
                          hintText: 'Ceritakan...',
                          hintStyle: subtitleRegular.copyWith(
                              color: const Color(0xffC0C0C0))),
                      textInputAction: TextInputAction.next),
                ),
              )
            ],
          ));
    }

    Widget nextButton() {
      return Container(
          height: 52,
          width: double.infinity,
          margin: EdgeInsets.only(top: xlMargin),
          child: TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/injil/page/2');
              },
              style: TextButton.styleFrom(
                  backgroundColor: primary,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  )),
              child: Text(
                'Lanjut',
                style: bodyExtraBold.copyWith(color: white),
              )));
    }

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
              pinned: true,
              snap: false,
              floating: false,
              expandedHeight: 180.0,
              collapsedHeight: 120.0,
              flexibleSpace: Container(
                color: secondary,
                child: FlexibleSpaceBar(
                  centerTitle: false,
                  titlePadding:
                      EdgeInsets.only(left: mMargin, bottom: xsMargin),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Flexible(
                        flex: 7,
                        child: Container(),
                      ),
                      Flexible(
                        flex: 1,
                        child: Text("Siapa DIA?", style: subtitleBold),
                      ),
                      SizedBox(height: sMargin),
                      Flexible(
                        flex: 1,
                        child: Text(
                            "DIA itu siapa sih, apa yang bisa DIA perbuat.",
                            style: captionRegular),
                      ),
                    ],
                  ),
                  background: Container(color: secondary),
                ),
              )),
          SliverPadding(
            padding: EdgeInsets.fromLTRB(mMargin, sMargin, mMargin, xlMargin),
            sliver: SliverList(
              delegate: SliverChildListDelegate([
                SizedBox(height: lMargin),
                Text('Hai, Hengky...', style: bodyBold),
                SizedBox(height: sMargin),
                Text(
                    'Apa kabar nih, ketemu lagi kita. Kemarin akhirnya kita saling mengenal satu sama lain lebih dekat ya. ',
                    style: subtitleMedium),
                SizedBox(height: sMargin),
                Text(
                    'Aku sekarang mau ajak kamu cari tahu bareng-bareng siapa DIA nih. Siapa sih DIA, DIA itu ngapain, nah kita cari tahu sama-sama yuk, tapi sebelumnya kita nonton video dulu ya.',
                    style: subtitleMedium),
                SizedBox(height: mMargin),
                const SizedBox(
                    height: 240,
                    width: double.infinity,
                    child: VideoBox(
                        'https://www.youtube.com/watch?v=WOL5TKNWxsk')),
                SizedBox(height: mMargin),
                Text(
                    'Videonya gimana? aku udah nonton videonya nih, kalo gitu tolong bantu aku isi form dibawah ini ya!',
                    style: subtitleMedium),
                pertanyaan1Input(),
                pertanyaan2Input(),
                nextButton()
              ]),
            ),
          )
        ],
      ),
    );
  }
}

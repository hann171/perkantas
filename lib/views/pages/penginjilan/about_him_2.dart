import 'package:flutter/material.dart';

import '../../../theme.dart';
import '../../widgets/video_box.dart';

class AboutHim2 extends StatelessWidget {
  const AboutHim2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget pertanyaan1Input() {
      return Container(
          margin: EdgeInsets.only(top: xlMargin),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hidupku sudah baik belum ya seperti yang ada di video tadi?',
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
                'Apakah aku bertanya-tanya di mana damai sejahtera yang seharusnya dimiliki orang Kristen?',
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

    Widget pertanyaan3Input() {
      return Container(
          margin: EdgeInsets.only(top: xlMargin),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Aku mau ga ya bertobat dan terima Tuhan Yesus dalam hidupku?',
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
                Navigator.pushNamedAndRemoveUntil(
                    context, '/', (Route<dynamic> route) => false);
              },
              style: TextButton.styleFrom(
                  backgroundColor: primary,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  )),
              child: Text(
                'Kirim',
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
                Text(
                    'Waahh, ada video lagi, yuk tonton bareng-bareng lagi, kayaknya seru...',
                    style: subtitleMedium),
                SizedBox(height: mMargin),
                const SizedBox(
                    height: 240,
                    width: double.infinity,
                    child: VideoBox(
                        'https://www.youtube.com/watch?v=Upxc2rYV5bU')),
                SizedBox(height: mMargin),
                Text(
                    'Video yang ini gimana? aku udah nonton videonya nih, kalo gitu tolong bantu aku isi form dibawah ini ya!',
                    style: subtitleMedium),
                pertanyaan1Input(),
                pertanyaan2Input(),
                pertanyaan3Input(),
                nextButton()
              ]),
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../../theme.dart';
import '../../widgets/video_box.dart';

class Pemuridan extends StatelessWidget {
  const Pemuridan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget nextButton() {
      return Container(
          height: 52,
          width: double.infinity,
          margin: EdgeInsets.only(top: lMargin),
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
                'Kembali ke Beranda',
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
                        flex: 5,
                        child: Container(),
                      ),
                      Flexible(
                        flex: 1,
                        child:
                            Text("Aku Tidak Sendirian!", style: subtitleBold),
                      ),
                      SizedBox(height: sMargin),
                      Flexible(
                        flex: 1,
                        child: Text(
                            "Mana yang lain, Aku ingin kenal yang lainnya juga...",
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
                Padding(
                  padding: EdgeInsets.only(top: lMargin),
                  child: Text(
                      'Hai hai, wah udah lama ya kita ga ketemu, sekarang bagaimana kabarnya? Baik bukan? Sebelumnya kita udah saling kenal, juga sudah kenal DIA.',
                      style: subtitleMedium),
                ),
                Padding(
                  padding: EdgeInsets.only(top: sMargin),
                  child: Text(
                      'Sekarang ayo kita lihat teman-teman yang lain yang sama-sama bertumbuh, sefrekuensi, dan saling mendukung.',
                      style: subtitleMedium),
                ),
                Padding(
                  padding: EdgeInsets.only(top: mMargin),
                  child: const SizedBox(
                      height: 240,
                      width: double.infinity,
                      child: VideoBox(
                          'https://www.youtube.com/watch?v=WOL5TKNWxsk')),
                ),
                Padding(
                  padding: EdgeInsets.only(top: xsMargin),
                  child: Text(
                      'Macam kegiatan persekutuan siswa (FES, Persik Qerto, Persekutuan doa, ibadah padang)',
                      style: captionBold),
                ),
                Padding(
                  padding: EdgeInsets.only(top: lMargin),
                  child: Text(
                      'Seru ya melayani bersama teman-teman yang lain, saling mendukung satu sama lain, bisa kenal lebih banyak orang lagi.',
                      style: subtitleMedium),
                ),
                Padding(
                  padding: EdgeInsets.only(top: sMargin, bottom: mMargin),
                  child: Text(
                      'Disini kita bisa melayani siswa SMP hingga SMA. Mau lihat keseruan yang terjadi? Coba lihat foto-foto dibawah.',
                      style: subtitleMedium),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset('assets/images/foto_placeholder.png'),
                        SizedBox(height: sMargin),
                        Text('Persekutuan di SMP ###', style: captionBold)
                      ],
                    ),
                    SizedBox(height: xlMargin),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset('assets/images/foto_placeholder.png'),
                        SizedBox(height: sMargin),
                        Text('Persekutuan di SMA ###', style: captionBold)
                      ],
                    ),
                    SizedBox(height: xlMargin),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset('assets/images/foto_placeholder.png'),
                        SizedBox(height: sMargin),
                        Text('Persekutuan di SMA ###', style: captionBold)
                      ],
                    )
                  ],
                ),
                Padding(
                    padding: EdgeInsets.symmetric(vertical: lMargin),
                    child: Column(
                      children: [
                        Text(
                            'Itu sebagian dari kegiatan kami melayani teman-teman siswa ditingkat SMP dan SMA di SMP ### dan SMA ###. Masih banyak lagi teman-teman lainnya kok, jadi jangan khawatir ya.',
                            style: subtitleMedium),
                        SizedBox(height: sMargin),
                        Text(
                            'Selanjutnya kita liat yuk teman-teman, kakak-kakak yang sudah dimuridkan, lihat video dibawah ya.',
                            style: subtitleMedium),
                      ],
                    )),
                Padding(
                  padding: EdgeInsets.only(bottom: sMargin),
                  child: const SizedBox(
                      height: 240,
                      width: double.infinity,
                      child: VideoBox(
                          'https://www.youtube.com/watch?v=WOL5TKNWxsk')),
                ),
                Text(
                    'Gimana nih, kesan pesannya, ceritakan kepada kakak pendamping ya... Waktu kebersamaan kita sudah habis nih, sampai jumpa lagi.',
                    style: subtitleMedium),
                nextButton()
              ]),
            ),
          )
        ],
      ),
    );
  }
}

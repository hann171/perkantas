import 'package:flutter/material.dart';
import 'package:perkantas/theme.dart';

class AboutMe extends StatefulWidget {
  const AboutMe({Key? key}) : super(key: key);

  @override
  State<AboutMe> createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
  @override
  Widget build(BuildContext context) {
    Widget namaLengkapInput() {
      return Container(
          margin: EdgeInsets.only(top: xlMargin),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Nama lengkap',
                style: subtitleBold,
              ),
              const SizedBox(height: 12),
              Container(
                height: 54,
                decoration: BoxDecoration(
                  color: const Color(0xffEFEFEF),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Center(
                  child: TextFormField(
                      // controller: usernameController,
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
                          hintText: 'Nama lengkapku?',
                          hintStyle: subtitleRegular.copyWith(
                              color: const Color(0xffC0C0C0))),
                      textInputAction: TextInputAction.next),
                ),
              )
            ],
          ));
    }

    Widget artiNamaInput() {
      return Container(
          margin: EdgeInsets.only(top: xlMargin),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Arti Nama',
                style: subtitleBold,
              ),
              const SizedBox(height: 12),
              Container(
                height: 54,
                decoration: BoxDecoration(
                  color: const Color(0xffEFEFEF),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Center(
                  child: TextFormField(
                      // controller: usernameController,
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
                          hintText: 'Arti namaku?',
                          hintStyle: subtitleRegular.copyWith(
                              color: const Color(0xffC0C0C0))),
                      textInputAction: TextInputAction.next),
                ),
              )
            ],
          ));
    }

    Widget namaPaggilanInput() {
      return Container(
          margin: EdgeInsets.only(top: xlMargin),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Nama panggilan',
                style: subtitleBold,
              ),
              const SizedBox(height: 12),
              Container(
                height: 54,
                decoration: BoxDecoration(
                  color: const Color(0xffEFEFEF),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Center(
                  child: TextFormField(
                      // controller: usernameController,
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
                          hintText: 'Aku suka dipanggil...',
                          hintStyle: subtitleRegular.copyWith(
                              color: const Color(0xffC0C0C0))),
                      textInputAction: TextInputAction.next),
                ),
              )
            ],
          ));
    }

    Widget tempatTanggalLahirInput() {
      return Container(
          margin: EdgeInsets.only(top: xlMargin),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Tempat, tanggal lahir',
                style: subtitleBold,
              ),
              const SizedBox(height: 12),
              Container(
                height: 54,
                decoration: BoxDecoration(
                  color: const Color(0xffEFEFEF),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Center(
                  child: TextFormField(
                      // controller: usernameController,
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
                          hintText: 'Kapan aku lahir? Ct: 17 Januari 2000',
                          hintStyle: subtitleRegular.copyWith(
                              color: const Color(0xffC0C0C0))),
                      textInputAction: TextInputAction.next),
                ),
              )
            ],
          ));
    }

    Widget halYangDisukaiInput() {
      return Container(
          margin: EdgeInsets.only(top: xlMargin),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hal yang aku sukai',
                style: subtitleBold,
              ),
              const SizedBox(height: 12),
              Container(
                height: 54,
                decoration: BoxDecoration(
                  color: const Color(0xffEFEFEF),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Center(
                  child: TextFormField(
                      // controller: usernameController,
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
                          hintText: '3 hal yang aku sukai. Ct: A,B,C',
                          hintStyle: subtitleRegular.copyWith(
                              color: const Color(0xffC0C0C0))),
                      textInputAction: TextInputAction.next),
                ),
              )
            ],
          ));
    }

    Widget halYangTidakDisukaiInput() {
      return Container(
          margin: EdgeInsets.only(top: xlMargin),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hal yang tidak aku sukai',
                style: subtitleBold,
              ),
              const SizedBox(height: 12),
              Container(
                height: 54,
                decoration: BoxDecoration(
                  color: const Color(0xffEFEFEF),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Center(
                  child: TextFormField(
                      // controller: usernameController,
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
                          hintText: '3 hal yang tidak aku sukai. Ct: A,B,C',
                          hintStyle: subtitleRegular.copyWith(
                              color: const Color(0xffC0C0C0))),
                      textInputAction: TextInputAction.next),
                ),
              )
            ],
          ));
    }

    Widget genreYangDisukaiInput() {
      return Container(
          margin: EdgeInsets.only(top: xlMargin),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Genre musik yang aku sukai',
                style: subtitleBold,
              ),
              const SizedBox(height: 12),
              Container(
                height: 54,
                decoration: BoxDecoration(
                  color: const Color(0xffEFEFEF),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Center(
                  child: TextFormField(
                      // controller: usernameController,
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
                          hintText: 'Aku suka musik...',
                          hintStyle: subtitleRegular.copyWith(
                              color: const Color(0xffC0C0C0))),
                      textInputAction: TextInputAction.next),
                ),
              )
            ],
          ));
    }

    Widget hobiInput() {
      return Container(
          margin: EdgeInsets.only(top: xlMargin),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hobi',
                style: subtitleBold,
              ),
              const SizedBox(height: 12),
              Container(
                height: 54,
                decoration: BoxDecoration(
                  color: const Color(0xffEFEFEF),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Center(
                  child: TextFormField(
                      // controller: usernameController,
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
                          hintText: 'Kalo senggang aku...',
                          hintStyle: subtitleRegular.copyWith(
                              color: const Color(0xffC0C0C0))),
                      textInputAction: TextInputAction.next),
                ),
              )
            ],
          ));
    }

    Widget citaInput() {
      return Container(
          margin: EdgeInsets.only(top: xlMargin),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Cita-cita',
                style: subtitleBold,
              ),
              const SizedBox(height: 12),
              Container(
                height: 54,
                decoration: BoxDecoration(
                  color: const Color(0xffEFEFEF),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Center(
                  child: TextFormField(
                      // controller: usernameController,
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
                          hintText: 'Aku mau kerja jadi...',
                          hintStyle: subtitleRegular.copyWith(
                              color: const Color(0xffC0C0C0))),
                      textInputAction: TextInputAction.done),
                ),
              )
            ],
          ));
    }

    Widget sendButton() {
      return Container(
          height: 52,
          width: double.infinity,
          margin: EdgeInsets.only(top: xlMargin),
          child: TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pdkt/games');
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
                color: danger,
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
                            Text("Seberapa Aku Kenal Aku", style: subtitleBold),
                      ),
                      SizedBox(height: sMargin),
                      Flexible(
                        flex: 1,
                        child: Text(
                            "Aku siapa? Apa yang aku sukai? Apa yang aku tidak sukai?",
                            style: captionRegular),
                      ),
                    ],
                  ),
                  background: Container(color: danger),
                ),
              )),
          SliverPadding(
            padding: EdgeInsets.fromLTRB(mMargin, sMargin, mMargin, xlMargin),
            sliver: SliverList(
              delegate: SliverChildListDelegate([
                namaLengkapInput(),
                artiNamaInput(),
                namaPaggilanInput(),
                tempatTanggalLahirInput(),
                halYangDisukaiInput(),
                halYangTidakDisukaiInput(),
                genreYangDisukaiInput(),
                hobiInput(),
                citaInput(),
                sendButton()
              ]),
            ),
          )
        ],
      ),
    );
  }
}

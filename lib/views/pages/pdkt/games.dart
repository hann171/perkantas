import 'package:flutter/material.dart';
import 'package:perkantas/views/pages/pdkt/view_games.dart';
// import 'package:webview_flutter/webview_flutter.dart';
import '../../../theme.dart';

class Games extends StatelessWidget {
  const Games({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget game1() {
      return Container(
        height: 151,
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("TTS 101 - Yakin Bisa?",
                        style: subtitleBold.copyWith(color: white)),
                    SizedBox(height: sMargin),
                    Text(
                        "Gunakan petunjuk untuk memecahkan teka-teki silang. Ketuk kata dan ketik jawabannya.",
                        style: captionRegular.copyWith(color: white)),
                    SizedBox(height: sMargin),
                    SizedBox(
                      height: 36,
                      width: 120,
                      // margin: const EdgeInsets.only(top: 48),
                      child: TextButton(
                          onPressed: () {
                            // Navigator.pushNamed(context, '/pdkt/games/1');
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const ViewGames(
                                        'https://wordwall.net/id/resource/31893262')));
                          },
                          style: TextButton.styleFrom(
                              backgroundColor: white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              )),
                          child: Text('Main Sekarang',
                              style: captionBold.copyWith(color: black1))),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(width: lMargin),
            Container(
              // height: 141,
              width: 100,
              margin: EdgeInsets.only(right: mMargin),
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/woman4.png"))),
            )
          ],
        ),
      );
    }

    Widget game2() {
      return Container(
        height: 151,
        padding: EdgeInsets.symmetric(horizontal: mMargin),
        decoration: BoxDecoration(
            color: warning, borderRadius: BorderRadius.circular(5)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: lMargin),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Match - Pasanganku Mana Ya?",
                        style: subtitleBold.copyWith(color: white)),
                    SizedBox(height: sMargin),
                    Text(
                        "Ketuk sepasang kotak sekaligus, lihat apakah mereka sama.",
                        style: captionRegular.copyWith(color: white)),
                    SizedBox(height: sMargin),
                    SizedBox(
                      height: 36,
                      width: 120,
                      // margin: const EdgeInsets.only(top: 48),
                      child: TextButton(
                          onPressed: () {
                            // Navigator.pushNamed(context, '/pdkt/games/1');
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const ViewGames(
                                        'https://wordwall.net/id/resource/11642014')));
                          },
                          style: TextButton.styleFrom(
                              backgroundColor: white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              )),
                          child: Text('Main Sekarang',
                              style: captionBold.copyWith(color: black1))),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(width: lMargin),
            Container(
              // height: 151,
              width: 160,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/woman5.png"))),
            )
          ],
        ),
      );
    }

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
              pinned: true,
              snap: false,
              floating: false,
              expandedHeight: 200.0,
              collapsedHeight: 120.0,
              flexibleSpace: Container(
                color: danger,
                child: FlexibleSpaceBar(
                  centerTitle: false,
                  titlePadding: EdgeInsets.only(left: mMargin, bottom: mMargin),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Flexible(
                        flex: 6,
                        child: Container(),
                      ),
                      Flexible(
                        flex: 1,
                        child: Text("Main games yuk!", style: subtitleBold),
                      ),
                      SizedBox(height: sMargin),
                      Flexible(
                        flex: 1,
                        child: Text(
                            "Kita kan udah kenalan, sekarang kita main bareng yuk biar kita makin dekat lagi.",
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
                SizedBox(height: lMargin),
                game1(),
                SizedBox(height: lMargin),
                game2(),
              ]),
            ),
          )
        ],
      ),
    );
  }
}

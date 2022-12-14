import 'dart:ui';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:perkantas/theme.dart';

class CardKTB extends StatelessWidget {
  final String title;
  final String description;
  final String buttonText;
  final String imageUrl;
  final String pageRoute;
  final Color color;

  const CardKTB(this.title, this.description, this.buttonText, this.imageUrl,
      this.color, this.pageRoute,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, pageRoute);
        },
        child: Container(
          height: 320,
          width: 230,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(image: AssetImage(imageUrl)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(child: Container()),
              Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  width: 230.0,
                  child: ClipRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
                      child: Container(
                        // width: 230.0,
                        constraints: const BoxConstraints(
                          maxHeight: double.infinity,
                        ),
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                            color: Colors.grey.shade200.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AutoSizeText(title,
                                maxLines: 2,
                                minFontSize: 14,
                                style: bodyExtraBold.copyWith(color: white)),
                            SizedBox(height: xsMargin),
                            AutoSizeText(description,
                                maxLines: 3,
                                minFontSize: 9,
                                style: captionRegular.copyWith(color: white)),
                            SizedBox(height: sMargin),
                            SizedBox(
                              height: 36,
                              width: double.infinity,
                              // margin: const EdgeInsets.only(top: 48),
                              child: TextButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context, pageRoute);
                                  },
                                  style: TextButton.styleFrom(
                                      backgroundColor: white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5),
                                      )),
                                  child: Text(buttonText,
                                      style:
                                          captionBold.copyWith(color: black1))),
                            )
                          ],
                        ),
                      ),
                    ),
                  )),
            ],
          ),
        ));
  }
}

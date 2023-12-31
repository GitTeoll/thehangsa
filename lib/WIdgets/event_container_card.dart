import 'package:flutter/material.dart';

import '../const/colors.dart';
import '../const/fonts.dart';

class EventContCard extends StatelessWidget {
  final String eventName;
  final String price;
  final String img;
  final double textwidth;
  final double textheight;

  const EventContCard({
    super.key,
    required this.eventName,
    required this.price,
    required this.img,
    required this.textwidth,
    required this.textheight,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
      child: Container(
        width: 160,
        height: 160,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(img),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              cEventContainerCardColor, // 어둡게 만들려는 색상 및 투명도 조절
              BlendMode.darken, // 어둡게 만들기 모드 (다른 모드를 시도할 수도 있음)
            ),
          ),
          borderRadius: BorderRadius.circular(14),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 15, 0, 0),
                  child: SizedBox(
                    width: textwidth,
                    height: textheight,
                    child: Text(
                      eventName,
                      style: const TextStyle(
                        color: cEventContainerCardEventText,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        fontFamily: sMainTextStyle,
                      ),
                    ),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: 72,
                  height: 34,
                  decoration: const BoxDecoration(
                    color: cEventContainerCardPriceColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      price,
                      style: const TextStyle(
                        color: cEventContainerCardPriceText,
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        fontFamily: sMainTextStyle,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

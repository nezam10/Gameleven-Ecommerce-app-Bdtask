import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Skippage1 extends StatelessWidget {
  Skippage1({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Container(
            color: const Color(0xffffffff),
          ),
          // Pinned.fromPins(
          //   Pin(start: 0.0, end: 0.0),
          //   Pin(size: 486.0, start: 0.0),
          //   // child: Container(
          //   //   decoration: BoxDecoration(
          //   //     image: DecorationImage(
          //   //       image: const AssetImage(''),
          //   //       fit: BoxFit.cover,
          //   //     ),
          //   //     borderRadius: BorderRadius.circular(2.0),
          //   //   ),
          //   // ),
          // ),
          Pinned.fromPins(
            Pin(start: 51.0, end: 51.0),
            Pin(size: 109.0, middle: 0.7522),
            child: Stack(
              children: <Widget>[
                Align(
                  alignment: Alignment(0.102, -1.0),
                  child: SizedBox(
                    width: 165.0,
                    height: 26.0,
                    child: Text(
                      'Gaming Collection',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 20,
                        color: const Color(0xffd81d4c),
                        fontWeight: FontWeight.w700,
                      ),
                      softWrap: false,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(size: 67.0, end: 0.0),
                  child: Text(
                    'Zak can be customized and used for any niche. The vast possibilities of this template makes it \nmulti purpose.',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 14,
                      color: const Color(0xff646464),
                      height: 1.7142857142857142,
                    ),
                    textHeightBehavior:
                        TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 160.0, middle: 0.5),
            Pin(size: 3.0, end: 19.0),
            child: Container(
              color: const Color(0xff72142c),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 67.0, middle: 0.5014),
            Pin(size: 20.0, end: 109.0),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(size: 10.0, start: 5.0),
                  Pin(size: 10.0, middle: 0.5),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xffd81d4c),
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment(0.088, 0.0),
                  child: Container(
                    width: 10.0,
                    height: 10.0,
                    decoration: BoxDecoration(
                      color: const Color(0x4e021e65),
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    width: 10.0,
                    height: 10.0,
                    decoration: BoxDecoration(
                      color: const Color(0x4e021e65),
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 20.0, start: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                      border: Border.all(
                          width: 1.0, color: const Color(0xff021e65)),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 37.0, end: 50.0),
            Pin(size: 23.0, end: 38.0),
            child: Text(
              'SKIP',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 17,
                color: const Color(0xff2f2f2f),
                fontWeight: FontWeight.w500,
              ),
              softWrap: false,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 29.0, end: 23.4),
            Pin(size: 16.0, start: 20.0),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(size: 24.0, start: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: Text(
                    '9:40',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 12,
                      color: const Color(0xffffffff),
                      fontWeight: FontWeight.w500,
                    ),
                    softWrap: false,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 55.0, end: 0.0),
                  Pin(size: 10.1, end: 1.9),
                  child: Stack(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.bottomRight,
                        child: SizedBox(
                          width: 16.0,
                          height: 8.0,
                          child: Stack(
                            children: <Widget>[
                              Stack(
                                children: <Widget>[
                                  SizedBox.expand(
                                      child: SvgPicture.string(
                                    _svg_mom5tx,
                                    allowDrawingOutsideViewBox: true,
                                    fit: BoxFit.fill,
                                  )),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 10.0, middle: 0.4754),
                        Pin(start: 0.1, end: 0.0),
                        child: Stack(
                          children: <Widget>[
                            Stack(
                              children: <Widget>[
                                Align(
                                  alignment: Alignment(-0.333, 1.0),
                                  child: Container(
                                    width: 2.0,
                                    height: 5.0,
                                    color: const Color(0xffffffff),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment(0.333, 1.0),
                                  child: Container(
                                    width: 2.0,
                                    height: 8.0,
                                    color: const Color(0xffffffff),
                                  ),
                                ),
                                Pinned.fromPins(
                                  Pin(size: 1.8, end: 0.0),
                                  Pin(start: 0.0, end: 0.0),
                                  child: Container(
                                    color: const Color(0xffffffff),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Container(
                                    width: 2.0,
                                    height: 3.0,
                                    color: const Color(0xffffffff),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 14.1, start: 0.0),
                        Pin(start: 0.0, end: 0.1),
                        child: Stack(
                          children: <Widget>[
                            Stack(
                              children: <Widget>[
                                Stack(
                                  children: <Widget>[
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: SizedBox(
                                        width: 4.0,
                                        height: 3.0,
                                        child: SvgPicture.string(
                                          _svg_it4bg,
                                          allowDrawingOutsideViewBox: true,
                                        ),
                                      ),
                                    ),
                                    Pinned.fromPins(
                                      Pin(start: 2.6, end: 2.6),
                                      Pin(size: 3.1, middle: 0.5308),
                                      child: SvgPicture.string(
                                        _svg_br2z2q,
                                        allowDrawingOutsideViewBox: true,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Pinned.fromPins(
                                      Pin(start: 0.0, end: 0.0),
                                      Pin(size: 4.2, start: 0.0),
                                      child: SvgPicture.string(
                                        _svg_yhvoo9,
                                        allowDrawingOutsideViewBox: true,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_mom5tx =
    '<svg viewBox="0.0 0.0 16.4 8.2" ><path transform="translate(0.0, -128.0)" d="M 15.85386276245117 130.5570831298828 L 15.34244632720947 130.5570831298828 L 15.34244632720947 130.045654296875 C 15.34244632720947 129.7631988525391 15.11349391937256 129.5342254638672 14.83103179931641 129.5342254638672 L 14.31961631774902 129.5342254638672 L 14.31961631774902 129.0228271484375 C 14.31961631774902 128.4579315185547 13.86167621612549 128 13.29678630828857 128 L 1.02282989025116 128 C 0.4579400718212128 128 0 128.4579315185547 0 129.0228271484375 L 0 135.1598052978516 C 0 135.7247009277344 0.4579400718212128 136.1826324462891 1.02282989025116 136.1826324462891 L 13.29678630828857 136.1826324462891 C 13.86167621612549 136.1826324462891 14.31961631774902 135.7247009277344 14.31961631774902 135.1598052978516 L 14.31961631774902 134.6483917236328 L 14.83103179931641 134.6483917236328 C 15.11349391937256 134.6483917236328 15.34244632720947 134.41943359375 15.34244632720947 134.1369781494141 L 15.34244632720947 133.6255645751953 L 15.85386276245117 133.6255645751953 C 16.13632202148438 133.6255645751953 16.36527824401855 133.3965911865234 16.36527824401855 133.1141357421875 L 16.36527824401855 131.0684814453125 C 16.36527824401855 130.7860260009766 16.13632202148438 130.5570831298828 15.85386276245117 130.5570831298828 Z M 13.29678630828857 130.045654296875 L 13.29678630828857 135.1598052978516 L 11.76254272460938 135.1598052978516 L 11.76254272460938 129.0228271484375 L 13.29678630828857 129.0228271484375 L 13.29678630828857 130.045654296875 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_it4bg =
    '<svg viewBox="5.1 7.3 3.8 2.7" ><path transform="translate(-165.54, -302.86)" d="M 170.6670074462891 310.9158935546875 L 172.59130859375 312.8402099609375 L 174.5156097412109 310.9158935546875 C 173.4540252685547 309.8543090820312 171.7285614013672 309.8543090820312 170.6670074462891 310.9158935546875 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_br2z2q =
    '<svg viewBox="2.6 3.6 9.0 3.1" ><path transform="translate(-82.77, -185.8)" d="M 85.33300018310547 191.2858581542969 L 86.61588287353516 192.5687103271484 C 88.38623809814453 190.7983551025391 91.25984191894531 190.7983551025391 93.03021240234375 192.5687103271484 L 94.31308746337891 191.2858581542969 C 91.83395385742188 188.8067016601562 87.81216430664062 188.8067016601562 85.33300018310547 191.2858581542969 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_yhvoo9 =
    '<svg viewBox="0.0 0.0 14.1 4.2" ><path transform="translate(0.0, -68.73)" d="M 0 71.65554046630859 L 1.282877802848816 72.93841552734375 C 4.470814228057861 69.75048828125 9.640750885009766 69.75048828125 12.828688621521 72.93841552734375 L 14.1115665435791 71.65554046630859 C 10.21482467651367 67.75882720947266 3.896710872650146 67.75882720947266 0 71.65554046630859 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';

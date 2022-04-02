import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:flutter_carousel_slider/carousel_slider_indicators.dart';
import 'package:flutter_carousel_slider/carousel_slider_transforms.dart';

import '../class/brandList.dart';
import '../widgets/brand.dart';

class SkipPageView extends StatefulWidget {
  const SkipPageView({Key? key}) : super(key: key);

  @override
  State<SkipPageView> createState() => _SkipPageViewState();
}

class _SkipPageViewState extends State<SkipPageView> {
  final List<Color> colors = [
    Colors.black,
    Colors.green,
    Colors.blue,
    Colors.indigo,
    Colors.purple,
  ];
  bool _isPlaying = false;
  GlobalKey _sliderKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ListView(
            shrinkWrap: true,
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 1.2,
                child: CarouselSlider.builder(
                  key: _sliderKey,
                  itemCount: 3,
                  slideBuilder: (index) {
                    var showbanarimage = blist().banarimage[index];
                    var showbanarname = blist().banarname[index];
                    return Container(
                        alignment: Alignment.center,
                        //test background color
                        //color: Colors.red,
                        child: Column(
                          children: [
                            Expanded(
                              flex: 5,
                              child: Container(
                                child: Image.asset(
                                  "$showbanarimage",
                                  //fit: BoxFit.fitHeight,
                                  fit: BoxFit.cover,
                                  width: MediaQuery.of(context).size.width,
                                  height: MediaQuery.of(context).size.height,
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Container(
                                child: Column(
                                  children: [
                                    Container(
                                      height:
                                          MediaQuery.of(context).size.height /
                                              3.2,
                                      width: MediaQuery.of(context).size.width,
                                      //color: Colors.blue,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          SizedBox(
                                            width: 165.0,
                                            height: 26.0,
                                            child: Text(
                                              '$showbanarname',
                                              style: TextStyle(
                                                fontFamily: 'Roboto',
                                                fontSize: 20,
                                                color: Color(0xffd81d4c),
                                                fontWeight: FontWeight.w700,
                                              ),
                                              softWrap: false,
                                            ),
                                          ),
                                          const SizedBox(height: 10),
                                          const Padding(
                                            padding: EdgeInsets.only(
                                                left: 25.0, right: 25),
                                            child: Text(
                                              'Zak can be customized and used for any niche. The vast possibilities of this template makes it \nmulti purpose.',
                                              style: TextStyle(
                                                fontFamily: 'Roboto',
                                                fontSize: 14,
                                                color: Color(0xff646464),
                                                height: 1.7142857142857142,
                                              ),
                                              textHeightBehavior:
                                                  TextHeightBehavior(
                                                      applyHeightToFirstAscent:
                                                          false),
                                              textAlign: TextAlign.center,
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ));
                  },
                  slideTransform: CubeTransform(),
                  slideIndicator: CircularSlideIndicator(
                      padding: EdgeInsets.only(bottom: 10),
                      indicatorRadius: 4,
                      itemSpacing: 12,
                      currentIndicatorColor: Colors.red,
                      indicatorBackgroundColor: Colors.grey),
                ),
              ),
              //Text("data")
            ],
          ),
          // SizedBox(height: 15),
          // Container(
          //   height: 120,
          //   child: ListView.builder(
          //     scrollDirection: Axis.horizontal,
          //     itemCount: blist().brandList.length,
          //     itemBuilder: (context, index) {
          //       var show = blist().brandList[index];
          //       var showbrandicon = blist().brandimage[index];
          //       return BrandList(
          //         brandicon: "$showbrandicon",
          //         brandName: "$show",
          //       );
          //     },
          //   ),
          // ),
          // Text("Hello")
          SizedBox(
            height: MediaQuery.of(context).size.height / 7,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 15,
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding:
                              const EdgeInsets.only(right: 25.0, bottom: 20),
                          child: Text(
                            'SKIP',
                            style: TextStyle(
                              fontSize: 17.0,
                              color: const Color(0xFF2F2F2F),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        color: Color.fromARGB(255, 94, 3, 102),
                        height: 2,
                        width: MediaQuery.of(context).size.width / 2.2,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

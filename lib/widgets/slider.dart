import 'package:bdtask_ecommerce_apps/pages/detailsPage.dart';
import 'package:bdtask_ecommerce_apps/widgets/brand.dart';
import 'package:bdtask_ecommerce_apps/widgets/product_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:flutter_carousel_slider/carousel_slider_indicators.dart';
import 'package:flutter_carousel_slider/carousel_slider_transforms.dart';

import '../class/brandList.dart';

class Slider1 extends StatefulWidget {
  const Slider1({Key? key}) : super(key: key);

  @override
  State<Slider1> createState() => _Slider1State();
}

class _Slider1State extends State<Slider1> {
  String? img1 = "assets/cheir.png";
  String? img2 = "assets/mouse.png";
  String? img3 = "assets/ppc.png";
  String? img4 = "assets/headset.png";
  final List<Color> colors = [
    Colors.black,
    Colors.green,
    Colors.blue,
    Colors.indigo,
    Colors.purple,
  ];
  bool _isPlaying = false;
  GlobalKey _sliderKey = GlobalKey();

  Color color1 = Color(0xFFF7F7F7);

  bool _isVisible = false;
  void updateStatus() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  bool _isVisible2 = false;
  void updateStatus2() {
    setState(() {
      _isVisible2 = !_isVisible2;
    });
  }

  bool _isVisible3 = false;
  void updateStatus3() {
    setState(() {
      _isVisible3 = !_isVisible3;
    });
  }

  //pagination
  // final ScrollController _scrollController = ScrollController();
  // List<String> items = [];
  // bool loading = false, allLoaded = false;

  // mockFetch() async {
  //   if (allLoaded) {
  //     return;
  //   }
  //   setState(() {
  //     loading = true;
  //   });
  //   await Future.delayed(Duration(milliseconds: 500));
  //   List<String> newData = items.length >= 60
  //       ? []
  //       : List.generate(20, (index) => "List Item ${index + items.length}");
  //   if (newData.isNotEmpty) {
  //     items.addAll(newData);
  //   }
  //   setState(() {
  //     loading = false;
  //     allLoaded = newData.isEmpty;
  //   });
  // }

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   mockFetch();
  //   _scrollController.addListener(() {
  //     if (_scrollController.position.pixels >=
  //             _scrollController.position.maxScrollExtent &&
  //         !loading) {
  //       print("new data call");
  //       mockFetch();
  //     }
  //   });
  // }

  // @override
  // void dispose() {
  //   // TODO: implement dispose
  //   super.dispose();
  //   _scrollController.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            ListView(
              physics: ScrollPhysics(),
              shrinkWrap: true,
              children: [
                Container(
                  height: 191,
                  child: CarouselSlider.builder(
                    unlimitedMode: true,
                    key: _sliderKey,
                    itemCount: colors.length,
                    slideBuilder: (index) {
                      return Container(
                        alignment: Alignment.center,
                        color: colors[index],
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  // Group: Group 445

                                  SizedBox(
                                    width: 131.0,
                                    height: 99.0,
                                    child: Column(
                                      children: <Widget>[
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: SizedBox(
                                            width: 127.0,
                                            height: 45.0,
                                            child: Stack(
                                              children: const <Widget>[
                                                Positioned(
                                                  left: 1.0,
                                                  child: Text(
                                                    '2021 Newly',
                                                    style: TextStyle(
                                                      fontSize: 17.0,
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                  ),
                                                ),
                                                Positioned(
                                                  bottom: 0,
                                                  child: Text(
                                                    'Gaming Headset',
                                                    style: TextStyle(
                                                      fontSize: 17.0,
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Spacer(flex: 4),
                                        const Text(
                                          'Wirless or Customize Drive',
                                          style: TextStyle(
                                            fontSize: 11.0,
                                            color: Colors.white,
                                          ),
                                        ),
                                        const Spacer(flex: 9),
                                        Align(
                                          alignment: Alignment(-0.95, 0.0),
                                          child: Container(
                                            alignment: Alignment(0.0, -0.09),
                                            width: 88.0,
                                            height: 26.0,
                                            color: const Color(0xFFD81D4C),
                                            child: const Text(
                                              'Shop Now',
                                              style: TextStyle(
                                                fontSize: 11.0,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 12.0),
                                    child: Container(
                                      height: 160,
                                      width: 160,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(80)),
                                      child: Padding(
                                        padding: const EdgeInsets.all(15.0),
                                        child: Container(
                                          height: 150,
                                          width: 150,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(75)),
                                          child: Image.asset(
                                            "assets/headset.png",
                                            fit: BoxFit.fitHeight,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      );
                    },
                    slideTransform: CubeTransform(
                      rotationAngle: 0,
                    ),
                    autoSliderTransitionTime: Duration(seconds: 1),
                    enableAutoSlider: true,
                    autoSliderDelay: Duration(milliseconds: 500),
                    slideIndicator: CircularSlideIndicator(
                        padding: EdgeInsets.only(bottom: 10),
                        indicatorRadius: 4,
                        itemSpacing: 12,
                        currentIndicatorColor: Colors.red,
                        indicatorBackgroundColor: Colors.white),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),

            //Flash Deals

            Stack(
              overflow: Overflow.visible,
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  //height: 146,
                  height: 155,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 8.0, right: 8.0, top: 10.0, bottom: 0.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                                padding: const EdgeInsets.only(bottom: 4),
                                child: Text(
                                  'Flash Deals',
                                  style: TextStyle(
                                    fontSize: 13.0,
                                    color: const Color(0xFF434343),
                                    fontWeight: FontWeight.w500,
                                  ),
                                )),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 4),
                              child: Row(
                                children: [
                                  Container(
                                    width: 14.0,
                                    height: 14.0,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: const Color(0xFFD81D4C),
                                    ),
                                    child: Icon(
                                      Icons.battery_charging_full,
                                      size: 10,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    ' 68:45:15',
                                    style: TextStyle(
                                      fontSize: 13.0,
                                      color: const Color(0xFFD81D4C),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Stack(
                        overflow: Overflow.visible,
                        alignment: Alignment.bottomCenter,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                  flex: 1,
                                  child: GestureDetector(
                                    onTap: () => Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                DetailsPage(imagepath: img1))),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: const Color(0xFFF7F7F7),
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      margin:
                                          EdgeInsets.only(left: 8, right: 6),
                                      height: 90,
                                      child: Image.asset(img1!),
                                    ),
                                  )),
                              Expanded(
                                  flex: 1,
                                  child: GestureDetector(
                                    onTap: () => Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                DetailsPage(imagepath: img2))),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: const Color(0xFFF7F7F7),
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      margin: EdgeInsets.only(right: 6),
                                      height: 90,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Image.asset(img2!),
                                      ),
                                    ),
                                  )),
                              Expanded(
                                  flex: 1,
                                  child: GestureDetector(
                                    onTap: () => Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                DetailsPage(imagepath: img3))),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: const Color(0xFFF7F7F7),
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      margin: EdgeInsets.only(right: 6),
                                      height: 90,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Image.asset(img3!),
                                      ),
                                    ),
                                  )),
                              Expanded(
                                  flex: 1,
                                  child: GestureDetector(
                                    onTap: () => Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                DetailsPage(imagepath: img4))),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: const Color(0xFFF7F7F7),
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      margin: EdgeInsets.only(right: 8),
                                      height: 90,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Image.asset(
                                          img4!,
                                        ),
                                      ),
                                    ),
                                  )),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Positioned(
                    //top: -10,
                    child: Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Row(
                    children: [
                      Expanded(
                          flex: 1,
                          child: Container(
                            decoration: BoxDecoration(
                                color: const Color(0xFFD81D4C),
                                borderRadius: BorderRadius.circular(5)),
                            margin: EdgeInsets.only(right: 6, left: 8),
                            height: 30,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "550.00 SAR",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 10, color: Colors.white),
                              ),
                            ),
                          )),
                      Expanded(
                          flex: 1,
                          child: Container(
                            decoration: BoxDecoration(
                                color: const Color(0xFF68C037),
                                borderRadius: BorderRadius.circular(5)),
                            margin: EdgeInsets.only(right: 6),
                            height: 30,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "230.00 SAR",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 10, color: Colors.white),
                              ),
                            ),
                          )),
                      Expanded(
                          flex: 1,
                          child: Container(
                            decoration: BoxDecoration(
                                color: const Color(0xFF094D82),
                                borderRadius: BorderRadius.circular(5)),
                            margin: EdgeInsets.only(
                              right: 6,
                            ),
                            height: 30,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "1230.00 SAR",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 10, color: Colors.white),
                              ),
                            ),
                          )),
                      Expanded(
                          flex: 1,
                          child: Container(
                            decoration: BoxDecoration(
                                color: const Color(0xFF2B2B2B),
                                borderRadius: BorderRadius.circular(5)),
                            margin: EdgeInsets.only(right: 8),
                            height: 30,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "230.00 SAR",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 10, color: Colors.white),
                              ),
                            ),
                          )),
                    ],
                  ),
                ))
              ],
            ),
            SizedBox(height: 15),

            //Daily Features

            Stack(
              overflow: Overflow.visible,
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFFE4E4FC).withOpacity(0.59),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  //height: 146,
                  height: 155,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 8.0, right: 8.0, top: 10.0, bottom: 0.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                                padding: const EdgeInsets.only(bottom: 4),
                                child: Text(
                                  'Daily Features',
                                  style: TextStyle(
                                    fontSize: 13.0,
                                    color: const Color(0xFF434343),
                                    fontWeight: FontWeight.w500,
                                  ),
                                )),
                          ],
                        ),
                      ),
                      Stack(
                        overflow: Overflow.visible,
                        alignment: Alignment.bottomCenter,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                  flex: 1,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: const Color(0xFFD81D4C),
                                        borderRadius: BorderRadius.circular(5)),
                                    margin: EdgeInsets.only(left: 8, right: 6),
                                    height: 100,
                                    child: SizedBox(
                                      width: 50.0,
                                      height: 37.0,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text(
                                            'Hot Sales',
                                            style: TextStyle(
                                              fontSize: 12.0,
                                              color: Colors.white,
                                              fontStyle: FontStyle.italic,
                                              fontWeight: FontWeight.w300,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                          SizedBox(height: 6),
                                          Text(
                                            '50% OFF',
                                            style: TextStyle(
                                              fontSize: 13.0,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w500,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )),
                              // Group: Group 755

                              Expanded(
                                  flex: 1,
                                  child: InkWell(
                                    splashColor: Colors.lightGreenAccent,
                                    onTap: () {
                                      //print("click");
                                      updateStatus();
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: _isVisible
                                              ? Color.fromARGB(
                                                  255, 118, 188, 246)
                                              : Color(0xFFF7F7F7),
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      margin: EdgeInsets.only(right: 6),
                                      height: 90,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Image.asset("assets/mouse.png"),
                                      ),
                                    ),
                                  )),
                              Expanded(
                                  flex: 1,
                                  child: InkWell(
                                    onTap: () {
                                      updateStatus2();
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: _isVisible2
                                              ? Color.fromARGB(
                                                  255, 118, 188, 246)
                                              : Color(0xFFF7F7F7),
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      margin: EdgeInsets.only(right: 6),
                                      height: 90,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Image.asset("assets/ppc.png"),
                                      ),
                                    ),
                                  )),
                              Expanded(
                                  flex: 1,
                                  child: InkWell(
                                    onTap: () {
                                      updateStatus3();
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: _isVisible3
                                              ? Color.fromARGB(
                                                  255, 118, 188, 246)
                                              : Color(0xFFF7F7F7),
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      margin: EdgeInsets.only(right: 8),
                                      height: 90,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Image.asset(
                                          "assets/headset.png",
                                        ),
                                      ),
                                    ),
                                  )),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Positioned(
                    //bottom: -10,
                    child: Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(),
                      ),
                      Expanded(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.all(0.0),
                            child: Text(
                              '550.00 SAR',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 8.0,
                                color: const Color(0xFF2C2C2C),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          )),
                      Expanded(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              '1200.00 SAR',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 8.0,
                                color: const Color(0xFF2C2C2C),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          )),
                      Expanded(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              '550.00 SAR',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 8.0,
                                color: const Color(0xFF2C2C2C),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          )),
                    ],
                  ),
                ))
              ],
            ),
            SizedBox(height: 15),

            //Hot Categories

            Stack(
              overflow: Overflow.visible,
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFFFED3B9).withOpacity(0.59),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  //height: 146,
                  height: 155,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 8.0, right: 8.0, top: 10.0, bottom: 0.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                                padding: const EdgeInsets.only(bottom: 4),
                                child: Text(
                                  'Hot Categories',
                                  style: TextStyle(
                                    fontSize: 13.0,
                                    color: const Color(0xFF434343),
                                    fontWeight: FontWeight.w500,
                                  ),
                                )),
                          ],
                        ),
                      ),
                      Stack(
                        overflow: Overflow.visible,
                        alignment: Alignment.bottomCenter,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                  flex: 1,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: const Color(0xFFF7F7F7),
                                        borderRadius: BorderRadius.circular(5)),
                                    margin: EdgeInsets.only(left: 8, right: 6),
                                    height: 90,
                                    child: Image.asset("assets/cheir.png"),
                                  )),
                              Expanded(
                                  flex: 1,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: const Color(0xFFF7F7F7),
                                        borderRadius: BorderRadius.circular(5)),
                                    margin: EdgeInsets.only(right: 6),
                                    height: 90,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image.asset("assets/mouse.png"),
                                    ),
                                  )),
                              Expanded(
                                  flex: 1,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: const Color(0xFFF7F7F7),
                                        borderRadius: BorderRadius.circular(5)),
                                    margin: EdgeInsets.only(right: 6),
                                    height: 90,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image.asset("assets/ppc.png"),
                                    ),
                                  )),
                              Expanded(
                                  flex: 1,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: const Color(0xFFF7F7F7),
                                        borderRadius: BorderRadius.circular(5)),
                                    margin: EdgeInsets.only(right: 8),
                                    height: 90,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image.asset(
                                        "assets/headset.png",
                                      ),
                                    ),
                                  )),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Positioned(
                    //top: -10,
                    child: Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Row(
                    children: [
                      Expanded(
                          flex: 1,
                          child: Container(
                            decoration: BoxDecoration(
                                color: const Color(0xFFD81D4C),
                                borderRadius: BorderRadius.circular(5)),
                            margin: EdgeInsets.only(right: 6, left: 8),
                            height: 30,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'G11 Chair',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 8.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          )),
                      Expanded(
                          flex: 1,
                          child: Container(
                            decoration: BoxDecoration(
                                color: const Color(0xFF68C037),
                                borderRadius: BorderRadius.circular(5)),
                            margin: EdgeInsets.only(right: 6),
                            height: 30,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'G11 Mouse',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 8.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          )),
                      Expanded(
                          flex: 1,
                          child: Container(
                            decoration: BoxDecoration(
                                color: const Color(0xFF094D82),
                                borderRadius: BorderRadius.circular(5)),
                            margin: EdgeInsets.only(
                              right: 6,
                            ),
                            height: 30,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Gaming PC',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 8.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          )),
                      Expanded(
                          flex: 1,
                          child: Container(
                            decoration: BoxDecoration(
                                color: const Color(0xFF2B2B2B),
                                borderRadius: BorderRadius.circular(5)),
                            margin: EdgeInsets.only(right: 8),
                            height: 30,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'G11 Headphone',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 8.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          )),
                    ],
                  ),
                ))
              ],
            ),
            SizedBox(height: 15),

            // Brands

            Stack(
              overflow: Overflow.visible,
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF24CAAA).withOpacity(0.07),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  //height: 146,
                  height: 155,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 8.0, right: 8.0, top: 10.0, bottom: 0.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                                padding: const EdgeInsets.only(bottom: 4),
                                child: Text(
                                  'Brands',
                                  style: TextStyle(
                                    fontSize: 13.0,
                                    color: const Color(0xFF434343),
                                    fontWeight: FontWeight.w500,
                                  ),
                                )),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 4),
                              child: Row(
                                children: [
                                  Text(
                                    'View More',
                                    style: TextStyle(
                                      fontSize: 13.0,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Stack(
                        overflow: Overflow.visible,
                        alignment: Alignment.bottomCenter,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                  flex: 1,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: const Color(0xFFF7F7F7),
                                        borderRadius: BorderRadius.circular(5)),
                                    margin: EdgeInsets.only(left: 8, right: 6),
                                    height: 90,
                                    child: Image.asset("assets/cheir.png"),
                                  )),
                              Expanded(
                                  flex: 1,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: const Color(0xFFF7F7F7),
                                        borderRadius: BorderRadius.circular(5)),
                                    margin: EdgeInsets.only(right: 6),
                                    height: 90,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image.asset("assets/mouse.png"),
                                    ),
                                  )),
                              Expanded(
                                  flex: 1,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: const Color(0xFFF7F7F7),
                                        borderRadius: BorderRadius.circular(5)),
                                    margin: EdgeInsets.only(right: 6),
                                    height: 90,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image.asset("assets/ppc.png"),
                                    ),
                                  )),
                              Expanded(
                                  flex: 1,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: const Color(0xFFF7F7F7),
                                        borderRadius: BorderRadius.circular(5)),
                                    margin: EdgeInsets.only(right: 8),
                                    height: 90,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image.asset(
                                        "assets/headset.png",
                                      ),
                                    ),
                                  )),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Positioned(
                    //top: -10,
                    child: Padding(
                  padding: const EdgeInsets.only(bottom: 6),
                  child: Row(
                    children: [
                      Expanded(
                          flex: 1,
                          child: Container(
                            decoration: BoxDecoration(
                                //color: const Color(0xFFD81D4C),
                                borderRadius: BorderRadius.circular(5)),
                            margin: EdgeInsets.only(right: 6, left: 8),
                            height: 30,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                "assets/chairbrand.png",
                              ),
                            ),
                          )),
                      Expanded(
                          flex: 1,
                          child: Container(
                            decoration: BoxDecoration(
                                //color: const Color(0xFF68C037),
                                borderRadius: BorderRadius.circular(5)),
                            margin: EdgeInsets.only(right: 6),
                            height: 30,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                "assets/mousebrand.png",
                                fit: BoxFit.cover,
                              ),
                            ),
                          )),
                      Expanded(
                          flex: 1,
                          child: Container(
                            decoration: BoxDecoration(
                                //color: const Color(0xFF094D82),
                                borderRadius: BorderRadius.circular(5)),
                            margin: EdgeInsets.only(
                              right: 6,
                            ),
                            height: 30,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                "assets/pcbrand.png",
                                fit: BoxFit.cover,
                              ),
                            ),
                          )),
                      Expanded(
                          flex: 1,
                          child: Container(
                            decoration: BoxDecoration(
                                //color: const Color(0xFF2B2B2B),
                                borderRadius: BorderRadius.circular(5)),
                            margin: EdgeInsets.only(right: 8),
                            height: 30,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                "assets/headphonebrand.png",
                                fit: BoxFit.cover,
                              ),
                            ),
                          )),
                    ],
                  ),
                ))
              ],
            ),
            SizedBox(height: 15),

            // Best Sale Products

            ProductListView(),

            SizedBox(height: 225),

            // Column(
            //   children: [
            //     Container(
            //       color: Colors.red,
            //       height: 120,
            //       width: MediaQuery.of(context).size.width,
            //       child: ListView.builder(
            //         scrollDirection: Axis.horizontal,
            //         itemCount: blist().brandList.length,
            //         itemBuilder: (context, index) {
            //           var show = blist().brandList[index];
            //           var showbrandicon = blist().brandimage[index];
            //           return BrandList(
            //             brandicon: "$showbrandicon",
            //             brandName: "$show",
            //           );
            //         },
            //       ),
            //     ),
            //   ],
            // ),
            //Text("Hello")
          ],
        ),
      ],
    );
  }
}


// Container(
//     width: 415.0,
//     height: 1637.0,
//     color: const Color(0xFFF3F3F3),
//   );

//   Container(
//     width: 382.0,
//     height: 146.0,
//     decoration: BoxDecoration(
//       borderRadius: BorderRadius.circular(8.0),
//       color: Colors.white,
//     ),
//   );
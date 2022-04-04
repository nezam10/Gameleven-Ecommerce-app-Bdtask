import 'package:bdtask_ecommerce_apps/pages/home_page_1.dart';
import 'package:bdtask_ecommerce_apps/widgets/add_to_cart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:flutter_carousel_slider/carousel_slider_indicators.dart';
import 'package:flutter_carousel_slider/carousel_slider_transforms.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widgets/bottomNavigationBarPage.dart';
import '../widgets/product_view.dart';

class DetailsPage extends StatelessWidget {
  DetailsPage({Key? key, this.imagepath}) : super(key: key);
  String? imagepath;
  final List<Color> colors = [
    Colors.white,
    Colors.indigo,
    Colors.purple,
  ];
  bool _isPlaying = false;
  GlobalKey _sliderKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF3F3F3),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView(
              physics: ScrollPhysics(),
              shrinkWrap: true,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.16),
                        offset: Offset(0, 3.0),
                        blurRadius: 6.0,
                      ),
                    ],
                  ),
                  height: 309,
                  child: CarouselSlider.builder(
                    key: _sliderKey,
                    itemCount: colors.length,
                    slideBuilder: (index) {
                      return Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                IconButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                BottonNavigationBarPage()));
                                  },
                                  icon: Icon(Icons.arrow_back_rounded),
                                )
                              ],
                            ),
                            Container(
                              height: 200,
                              width: MediaQuery.of(context).size.width / 2,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(100)),
                              child: Image.asset(
                                imagepath!,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                    slideTransform: CubeTransform(),
                    slideIndicator: CircularSlideIndicator(
                        padding: EdgeInsets.only(bottom: 12),
                        indicatorRadius: 4,
                        itemSpacing: 12,
                        currentIndicatorColor: Colors.red,
                        indicatorBackgroundColor: Colors.grey),
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(left: 12.0, right: 12.0, top: 12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '500.00 SAR',
                        style: TextStyle(
                          fontSize: 21.0,
                          color: const Color(0xFFD81D4C),
                          fontWeight: FontWeight.w500,
                          height: 1.43,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.share, size: 22),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12.0, right: 12.0),
                  child: Row(
                    children: [
                      Text(
                        '46,0000.00 XAF',
                        style: TextStyle(
                          decoration: TextDecoration.lineThrough,
                          fontSize: 16.0,
                          color: const Color(0xFFCBCBCB),
                          fontWeight: FontWeight.w500,
                          height: .5,
                        ),
                      ),
                      Text(
                        ' -46%',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: const Color(0xFF868686),
                          fontWeight: FontWeight.w500,
                          height: .5,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.only(left: 12.0, right: 12.0),
                  child: Text(
                    'Strategies de Survie des Populations Africaines dans une Economie Mondialisée - L’expérience Camerounaise.',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: const Color(0xFF333333),
                      fontWeight: FontWeight.w500,
                      height: 1.44,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12.0, right: 12.0),
                  child: Row(
                    children: [
                      Icon(Icons.star, color: Colors.red, size: 18),
                      Icon(Icons.star, color: Colors.red, size: 18),
                      Icon(Icons.star, color: Colors.red, size: 18),
                      Icon(Icons.star, color: Colors.red, size: 18),
                      Icon(Icons.star, color: Colors.red, size: 18),
                      Text(
                        ' 4.6',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: const Color(0xFF868686),
                          fontWeight: FontWeight.w500,
                          height: 1.5,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 105.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.16),
                        offset: Offset(0, 3.0),
                        blurRadius: 6.0,
                      ),
                    ],
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 12.0, right: 12.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 92.0,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment(0.79, -0.41),
                            end: Alignment(-0.88, 0.12),
                            colors: [
                              const Color(0xFFA30D69),
                              const Color(0xFFD81D4C)
                            ],
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 45,
                                    width: 55,
                                    child: SvgPicture.string(
                                      // Path 195
                                      '<svg viewBox="0.0 59.41 49.93 37.44" ><path transform="translate(0.0, 0.0)" d="M 45.2450065612793 96.85529327392578 L 4.680572509765625 96.85529327392578 C 2.099594354629517 96.85529327392578 2.277413113915827e-05 94.75572204589844 2.277413113915827e-05 92.17475891113281 L 2.277413113915827e-05 84.37383270263672 C 2.277413113915827e-05 83.51144409179688 0.6978141665458679 82.81364440917969 1.560205936431885 82.81364440917969 C 4.141183853149414 82.81364440917969 6.240755081176758 80.71407318115234 6.240755081176758 78.13309478759766 C 6.240755081176758 75.5521240234375 4.141183853149414 73.45254516601562 1.560206055641174 73.45254516601562 C 0.6978143453598022 73.45265197753906 2.287430834257975e-05 72.75486755371094 2.287430834257975e-05 71.89247131347656 L 2.287430834257975e-05 64.09154510498047 C 2.287430834257975e-05 61.51057815551758 2.099594831466675 59.41100692749023 4.680572509765625 59.41100692749023 L 45.2451171875 59.41100692749023 C 47.82609939575195 59.41100692749023 49.9256706237793 61.51057815551758 49.9256706237793 64.09154510498047 L 49.9256706237793 71.89247131347656 C 49.9256706237793 72.75486755371094 49.22787475585938 73.45265197753906 48.36548614501953 73.45265197753906 C 45.78450775146484 73.45265197753906 43.6849365234375 75.55223083496094 43.6849365234375 78.13320922851562 C 43.6849365234375 80.71418762207031 45.78450775146484 82.81375122070312 48.36548614501953 82.81375122070312 C 49.22787475585938 82.81375122070312 49.9256706237793 83.51153564453125 49.9256706237793 84.37392425537109 L 49.9256706237793 92.17485046386719 C 49.92555999755859 94.75572204589844 47.82609176635742 96.85529327392578 45.2450065612793 96.85529327392578 Z M 3.120386362075806 85.77708435058594 L 3.120386362075806 92.17475891113281 C 3.120386362075806 93.03556060791016 3.819753408432007 93.73493194580078 4.680569171905518 93.73493194580078 L 45.24511337280273 93.73493194580078 C 46.10593414306641 93.73493194580078 46.8052978515625 93.03556060791016 46.8052978515625 92.17475891113281 L 46.8052978515625 85.77708435058594 C 43.24921798706055 85.05187225341797 40.5645637512207 81.90103912353516 40.5645637512207 78.13309478759766 C 40.5645637512207 74.36516571044922 43.24911117553711 71.21443176269531 46.8052978515625 70.48911285400391 L 46.8052978515625 64.09154510498047 C 46.8052978515625 63.23073196411133 46.10593414306641 62.53137588500977 45.24511337280273 62.53137588500977 L 4.680569171905518 62.53137588500977 C 3.819752931594849 62.53137588500977 3.120385885238647 63.23073196411133 3.120385885238647 64.09154510498047 L 3.120385885238647 70.48921966552734 C 6.676465034484863 71.21443176269531 9.361118316650391 74.36525726318359 9.361118316650391 78.13320922851562 C 9.361118316650391 81.90115356445312 6.676465034484863 85.05187225341797 3.120385885238647 85.77708435058594 Z" fill="#ffffff" fill-opacity="0.35" stroke="none" stroke-width="1" stroke-opacity="0.35" stroke-miterlimit="4" stroke-linecap="butt" /></svg>',
                                      width: 30,
                                      height: 30,
                                      //fit: BoxFit.fitWidth,
                                    ),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'First Order Voucher',
                                        style: TextStyle(
                                          fontSize: 12.0,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Text(
                                        '35% Off',
                                        style: TextStyle(
                                          fontSize: 22.0,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900,
                                          height: 1.2,
                                        ),
                                      )
                                    ],
                                  ),
                                  Container(
                                    width: 113.0,
                                    height: 34.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(7.0),
                                      gradient: LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [
                                          Colors.white,
                                          Colors.white,
                                        ],
                                      ),
                                    ),
                                    child: Text(
                                      'COLLECT',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        color: const Color(0xFF363636),
                                        fontWeight: FontWeight.w500,
                                        height: 1.88,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(height: 5),
                              Container(
                                //color: Colors.blue,
                                height: 2,
                                width: MediaQuery.of(context).size.width,
                                child: SvgPicture.string(
                                  // Path 245
                                  '<svg viewBox="16.5 570.5 381.85 1.0" ><path transform="translate(16.5, 570.5)" d="M 0 0 L 381.8505554199219 0" fill="none" stroke="#ffffff" stroke-width="1" stroke-dasharray="3 4" stroke-miterlimit="4" stroke-linecap="round" /></svg>',
                                  width: 381.85,
                                  height: 1.0,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    'Valid for 7 day(s) from collection',
                                    style: TextStyle(
                                      fontSize: 8.0,
                                      color: Colors.white,
                                      height: 2,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 12),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        alignment: Alignment.center,
                        width: MediaQuery.of(context).size.width,
                        height: 54.0,
                        color: const Color(0xFFD81D4C),
                        child: Text(
                          'Description',
                          //textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            //height: 1.88,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                        flex: 1,
                        child: Container(
                          alignment: Alignment.center,
                          //width: 414.0,
                          height: 54.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.16),
                                offset: Offset(0, 3.0),
                                blurRadius: 6.0,
                              ),
                            ],
                          ),
                          child: Text(
                            'Specifications',
                            style: TextStyle(
                              fontSize: 16.0,
                              color: const Color(0xFF7B7B7B),
                              fontWeight: FontWeight.w500,
                              //height: 1.88,
                            ),
                          ),
                        ))
                  ],
                ),
                //SizedBox(height: 12),
                Container(
                  //width: 414.0,
                  //height: 299.0,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 12.0, right: 12.0, top: 12.0, bottom: 12.0),
                    child: Column(
                      children: [
                        Text(
                          'Strategies de Survie des Populations Africaines dans une Economie Mondialisée - L’expérience Camerounaise.Strategies de Survie des Populaions Africaines dans une Economie Mondi- L’expérience Camero',
                          style: TextStyle(
                            fontSize: 16.0,
                            color: const Color(0xFF333333),
                            fontWeight: FontWeight.w300,
                            height: 1.5,
                          ),
                        ),
                        SizedBox(height: 12.0),
                        Text(
                          'Strategies de Survie des Populations Africaines dans une Economie Mondialisée - L’expérience Camerounaise.Strategies de Survie des Populaions Africaines dans une Economie Mondialisée -  L’expérience Camero',
                          style: TextStyle(
                            fontSize: 16.0,
                            color: const Color(0xFF333333),
                            fontWeight: FontWeight.w300,
                            height: 1.5,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                Padding(
                  padding: const EdgeInsets.only(left: 12.0, right: 12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Related Products',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: const Color(0xFF021E65),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        'View All',
                        style: TextStyle(
                          fontSize: 13.0,
                          color: const Color(0xFF021E65),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 12),
                Padding(
                  padding: const EdgeInsets.only(left: 12.0, right: 12.0),

                  // add widget

                  child: ProductListView(),
                ),
                const SizedBox(height: 25.0),
                // Group: Group 338
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 255.0,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 12.0, right: 12.0, top: 12.0, bottom: 2.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Reviews & Ratings',
                          style: TextStyle(
                            fontSize: 16.0,
                            color: const Color(0xFF021E65),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          //color: Colors.blue,
                          height: MediaQuery.of(context).size.height / 4.5,
                          width: MediaQuery.of(context).size.width / 1.1,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          '0',
                                          style: TextStyle(
                                            fontSize: 40.0,
                                            color: const Color(0xFF021E65),
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(Icons.star,
                                                color: Colors.grey, size: 15),
                                            Icon(Icons.star,
                                                color: Colors.grey, size: 15),
                                            Icon(Icons.star,
                                                color: Colors.grey, size: 15),
                                            Icon(Icons.star,
                                                color: Colors.grey, size: 15),
                                            Icon(Icons.star,
                                                color: Colors.grey, size: 15),
                                          ],
                                        ),
                                        Text(
                                          '0',
                                          style: TextStyle(
                                            fontSize: 16.0,
                                            color: const Color(0xFF021E65),
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Center(
                                    child: Container(
                                      height: 100,
                                      width: 1,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  SizedBox(width: 30),
                                  Expanded(
                                    flex: 1,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Icon(Icons.star,
                                                color: Colors.red, size: 15),
                                            Icon(Icons.star,
                                                color: Colors.red, size: 15),
                                            Icon(Icons.star,
                                                color: Colors.red, size: 15),
                                            Icon(Icons.star,
                                                color: Colors.red, size: 15),
                                            Icon(Icons.star,
                                                color: Colors.red, size: 15),
                                            Text(
                                              ' 5(10)',
                                              style: TextStyle(
                                                fontSize: 16.0,
                                                color: const Color(0xFF868686),
                                                fontWeight: FontWeight.w500,
                                                height: 1.5,
                                              ),
                                            )
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Icon(Icons.star,
                                                color: Colors.red, size: 15),
                                            Icon(Icons.star,
                                                color: Colors.red, size: 15),
                                            Icon(Icons.star,
                                                color: Colors.red, size: 15),
                                            Icon(Icons.star,
                                                color: Colors.red, size: 15),
                                            Icon(Icons.star,
                                                color: Colors.grey, size: 15),
                                            Text(
                                              ' 4(5)',
                                              style: TextStyle(
                                                fontSize: 16.0,
                                                color: const Color(0xFF868686),
                                                fontWeight: FontWeight.w500,
                                                height: 1.5,
                                              ),
                                            )
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Icon(Icons.star,
                                                color: Colors.red, size: 15),
                                            Icon(Icons.star,
                                                color: Colors.red, size: 15),
                                            Icon(Icons.star,
                                                color: Colors.red, size: 15),
                                            Icon(Icons.star,
                                                color: Colors.grey, size: 15),
                                            Icon(Icons.star,
                                                color: Colors.grey, size: 15),
                                            Text(
                                              ' 3(1)',
                                              style: TextStyle(
                                                fontSize: 16.0,
                                                color: const Color(0xFF868686),
                                                fontWeight: FontWeight.w500,
                                                height: 1.5,
                                              ),
                                            )
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Icon(Icons.star,
                                                color: Colors.red, size: 15),
                                            Icon(Icons.star,
                                                color: Colors.red, size: 15),
                                            Icon(Icons.star,
                                                color: Colors.grey, size: 15),
                                            Icon(Icons.star,
                                                color: Colors.grey, size: 15),
                                            Icon(Icons.star,
                                                color: Colors.grey, size: 15),
                                            Text(
                                              ' 2(1)',
                                              style: TextStyle(
                                                fontSize: 16.0,
                                                color: const Color(0xFF868686),
                                                fontWeight: FontWeight.w500,
                                                height: 1.5,
                                              ),
                                            )
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Icon(Icons.star,
                                                color: Colors.red, size: 15),
                                            Icon(Icons.star,
                                                color: Colors.grey, size: 15),
                                            Icon(Icons.star,
                                                color: Colors.grey, size: 15),
                                            Icon(Icons.star,
                                                color: Colors.grey, size: 15),
                                            Icon(Icons.star,
                                                color: Colors.grey, size: 15),
                                            Text(
                                              ' 1(1)',
                                              style: TextStyle(
                                                fontSize: 16.0,
                                                color: const Color(0xFF868686),
                                                fontWeight: FontWeight.w500,
                                                height: 1.5,
                                              ),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 8),
                              Container(
                                height: 1,
                                width: MediaQuery.of(context).size.width,
                                color: Colors.grey,
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 0.0),
                        Center(
                          child: const Text(
                            'View all or write a review',
                            style: TextStyle(
                              fontSize: 13.0,
                              color: Color(0xFFD81D4C),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 12.0),
                Container(
                    width: MediaQuery.of(context).size.width,
                    height: 67.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xFF9D9D9D).withOpacity(0.16),
                          offset: Offset(0, 0),
                          blurRadius: 6.0,
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Row(
                        children: <Widget>[
                          Align(
                            alignment: Alignment.center,
                            child: SvgPicture.string(
                              // heart (1)
                              '<svg viewBox="36.45 1834.92 24.6 21.89" ><path transform="translate(36.45, 1834.92)" d="M 12.30178546905518 21.88928031921387 C 11.95151901245117 21.88928031921387 11.6138277053833 21.76238822937012 11.35065746307373 21.53187942504883 C 10.35673046112061 20.66278076171875 9.398469924926758 19.8460521697998 8.553022384643555 19.1256217956543 L 8.548705101013184 19.12186622619629 C 6.069989681243896 17.00956153869629 3.929528951644897 15.18539333343506 2.440234422683716 13.38844108581543 C 0.7754315137863159 11.37956523895264 0 9.474867820739746 0 7.39409875869751 C 0 5.372457981109619 0.6932142972946167 3.507368326187134 1.951812148094177 2.142150640487671 C 3.225427150726318 0.7607901096343994 4.973010540008545 0 6.873202323913574 0 C 8.293418884277344 0 9.594064712524414 0.449003130197525 10.7389087677002 1.33443284034729 C 11.31668186187744 1.781371235847473 11.84039402008057 2.328359365463257 12.30178546905518 2.966386556625366 C 12.76336574554443 2.328359365463257 13.28689002990723 1.781371235847473 13.86485004425049 1.33443284034729 C 15.00969409942627 0.449003130197525 16.31034088134766 0 17.73055648803711 0 C 19.63056182861328 0 21.37833213806152 0.7607901096343994 22.65194702148438 2.142150640487671 C 23.91054534912109 3.507368326187134 24.60357093811035 5.372457981109619 24.60357093811035 7.39409875869751 C 24.60357093811035 9.474867820739746 23.82832908630371 11.37956523895264 22.16352272033691 13.3882532119751 C 20.67423248291016 15.18539333343506 18.53395652770996 17.00937461853027 16.05561828613281 19.12149047851562 C 15.20866775512695 19.84305000305176 14.24890518188477 20.66109085083008 13.25272655487061 21.53225517272949 C 12.98974418640137 21.76238822937012 12.65186500549316 21.88928031921387 12.30178546905518 21.88928031921387 Z M 6.873202323913574 1.441240191459656 C 5.380341529846191 1.441240191459656 4.008930206298828 2.037032842636108 3.011249542236328 3.118995428085327 C 1.998739838600159 4.217288970947266 1.441052436828613 5.735489845275879 1.441052436828613 7.39409875869751 C 1.441052436828613 9.144122123718262 2.091468811035156 10.70925140380859 3.549790382385254 12.46884822845459 C 4.959307670593262 14.16969299316406 7.055844306945801 15.95631885528564 9.483314514160156 18.02507591247559 L 9.487820625305176 18.02882766723633 C 10.33645915985107 18.75207710266113 11.29847431182861 19.57199668884277 12.29972267150879 20.44747734069824 C 13.30697536468506 19.5703067779541 14.27049350738525 18.74907493591309 15.12082004547119 18.02470016479492 C 17.54810333251953 15.9559440612793 19.64445114135742 14.16969299316406 21.05396842956543 12.46884822845459 C 22.51210403442383 10.70925140380859 23.16251754760742 9.144122123718262 23.16251754760742 7.39409875869751 C 23.16251754760742 5.735489845275879 22.60483360290527 4.217288970947266 21.59232330322266 3.118995428085327 C 20.59482955932617 2.037032842636108 19.22322845458984 1.441240191459656 17.73055648803711 1.441240191459656 C 16.6369571685791 1.441240191459656 15.63289260864258 1.788879871368408 14.746337890625 2.474397897720337 C 13.95626544952393 3.085582971572876 13.40589904785156 3.858198642730713 13.08322334289551 4.398804664611816 C 12.91728782653809 4.676803112030029 12.62521171569824 4.842739582061768 12.30178546905518 4.842739582061768 C 11.97836112976074 4.842739582061768 11.68628406524658 4.676803112030029 11.52034854888916 4.398804664611816 C 11.19786071777344 3.858198642730713 10.64749431610107 3.085582971572876 9.857234001159668 2.474397897720337 C 8.970677375793457 1.788879871368408 7.966615200042725 1.441240191459656 6.873202323913574 1.441240191459656 Z M 6.873202323913574 1.441240191459656" fill="#656567" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>',
                              width: 24.6,
                              height: 21.89,
                            ),
                          ),
                          Spacer(flex: 18),
                          GestureDetector(
                            //Add to Cart

                            onTap: () {
                              showModalBottomSheet(
                                  context: context,
                                  builder: (context) {
                                    return Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 250.0,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(10),
                                            topLeft: Radius.circular(10)),
                                        color: Colors.white,
                                      ),
                                      child: AddToCart(),
                                    );
                                  });
                            },
                            child: Container(
                              alignment: Alignment.topRight,
                              width: 124.0,
                              height: 36.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                                border: Border.all(
                                  width: 1.0,
                                  color: const Color(0xFFD81D4C),
                                ),
                              ),
                              child: SizedBox(
                                width: 124.0,
                                height: 36.0,
                                child: Row(
                                  children: <Widget>[
                                    Spacer(flex: 18),
                                    Align(
                                      alignment: Alignment(0.0, -0.06),
                                      child: Text(
                                        'My Cart',
                                        style: TextStyle(
                                          fontSize: 14.0,
                                          color: const Color(0xFFD81D4C),
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                    Spacer(flex: 12),
                                    Container(
                                      alignment: Alignment(0.0, -0.07),
                                      width: 45.0,
                                      height: 36.0,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(5.0),
                                        color: const Color(0xFFFC6600)
                                            .withOpacity(0.16),
                                      ),
                                      child: Text(
                                        '1',
                                        style: TextStyle(
                                          fontSize: 16.0,
                                          color: const Color(0xFF021E65),
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Spacer(flex: 20),
                          Container(
                            alignment: Alignment(0.01, -0.06),
                            width: 152.0,
                            height: 36.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0),
                              color: const Color(0xFFD81D4C),
                            ),
                            child: Text(
                              'Buy Now',
                              style: TextStyle(
                                fontSize: 14.0,
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}

import 'package:bdtask_ecommerce_apps/pages/home_page_1.dart';
import 'package:bdtask_ecommerce_apps/pages/signInPage.dart';
import 'package:flutter/material.dart';

import '../widgets/bottomNavigationBarPage.dart';

class SkipPage3 extends StatelessWidget {
  const SkipPage3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                child: Image.asset(
                  "assets/gameleven3.png",
                  fit: BoxFit.cover,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                child: Column(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(
                            width: 165.0,
                            height: 26.0,
                            child: Text(
                              'G11 Gaming zone',
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
                            padding: EdgeInsets.only(left: 25.0, right: 25),
                            child: Text(
                              'Zak can be customized and used for any niche. The vast possibilities of this template makes it \nmulti purpose.',
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 14,
                                color: Color(0xff646464),
                                height: 1.7142857142857142,
                              ),
                              textHeightBehavior: TextHeightBehavior(
                                  applyHeightToFirstAscent: false),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          SizedBox(height: 30),
                          SizedBox(
                            width: 62.0,
                            height: 20.0,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  width: 10.0,
                                  height: 10.0,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: const Color(0xFF021E65)
                                        .withOpacity(0.3),
                                  ),
                                ),
                                Container(
                                  width: 10.0,
                                  height: 10.0,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: const Color(0xFF021E65)
                                        .withOpacity(0.3),
                                  ),
                                ),
                                Container(
                                  width: 16.0,
                                  height: 16.0,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                        width: 1,
                                        color:
                                            Color.fromARGB(255, 125, 98, 141)),
                                    shape: BoxShape.circle,
                                  ),
                                  child: Center(
                                    child: FractionallySizedBox(
                                      heightFactor:
                                          .9, // Adjust those two for the white space
                                      widthFactor: .9,
                                      child: Container(
                                        margin: EdgeInsets.all(2),
                                        decoration: BoxDecoration(
                                          color: Colors.red,
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 25.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              GestureDetector(
                                onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SignInPage())),
                                child: Text(
                                  'SKIP',
                                  style: TextStyle(
                                    fontSize: 17.0,
                                    color: const Color(0xFF2F2F2F),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height / 30),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 25.0),
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              color: Color.fromARGB(255, 94, 3, 102),
                              height: 2,
                              width: MediaQuery.of(context).size.width / 2.2,
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}


// Container(
//     width: 20.0,
//     height: 20.0,
//     decoration: BoxDecoration(
//       shape: BoxShape.circle,
//       border: Border.all(
//         width: 1.0,
//         color: const Color(0xFF021E65),
//       ),
//     ),
//   );
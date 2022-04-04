import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rotated_corner_decoration/rotated_corner_decoration.dart';

import '../class/brandList.dart';

class WishlistPage extends StatelessWidget {
  WishlistPage({Key? key}) : super(key: key);

  final List<Color> colors = [
    Colors.black,
    Colors.green,
    Colors.blue,
    Colors.indigo,
    Colors.purple,
    Colors.purple,
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 75,
            color: Colors.grey[100],
            child: Row(
              children: [
                IconButton(
                    onPressed: () {}, icon: Icon(Icons.arrow_back_rounded)),
                Text(
                  'Wishlist',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: const Color(0xFF404040),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.all(0.0),
              shrinkWrap: true,
              itemCount: 6,
              itemBuilder: (context, index) {
                var show = blist().wishlistname[index];
                var showbrandicon = blist().wishlisticon[index];
                return Container(
                    margin: EdgeInsets.only(bottom: 5),
                    height: 110,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.white,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Container(
                            //color: Colors.blue,
                            height: MediaQuery.of(context).size.height,
                            width: 100,
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Image.asset(
                                "$showbrandicon",
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 5),
                        Expanded(
                          flex: 4,
                          child: Container(
                            //color: Colors.blue,
                            height: MediaQuery.of(context).size.height,
                            width: 100,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Power Bank Water Gold Sound Box',
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    color: const Color(0xFF7E7E7E),
                                    height: 1.06,
                                  ),
                                ),
                                SizedBox(height: 6),
                                Text(
                                  '$show',
                                  style: TextStyle(
                                    fontSize: 15.0,
                                    color: const Color(0xFFD81D4C),
                                    fontWeight: FontWeight.w500,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        //SizedBox(width: 5),
                        Expanded(
                          flex: 1,
                          child: Container(
                            alignment: Alignment.topCenter,
                            child: CustomPaint(
                              painter: Chevron(),
                              child: GestureDetector(
                                onTap: () {
                                  showDialog(
                                    context: context,
                                    barrierDismissible: true,
                                    builder: (param) {
                                      return AlertDialog(
                                        actions: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 8.0),
                                            child: FlatButton(
                                              minWidth: 100.0,
                                              color: Colors.red,
                                              onPressed: () =>
                                                  Navigator.pop(context),
                                              child: Text(
                                                'CANCEL',
                                                style: TextStyle(
                                                  fontSize: 14.0,
                                                  color: Colors.white,
                                                  height: 1.36,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: 8.0, bottom: 8.0),
                                            child: FlatButton(
                                              minWidth: 80.0,
                                              color: const Color(0xFF0A0A5A),
                                              onPressed: () {
                                                //Navigator.pop(context);
                                              },
                                              child: Text(
                                                'OK',
                                                style: TextStyle(
                                                  fontSize: 14.0,
                                                  color: Colors.white,
                                                  height: 1.36,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                        title: Text(
                                          'Are you sure you want to delete the selected Products from the cart?',
                                          style: TextStyle(
                                            fontSize: 14.0,
                                            color: const Color(0xFF1F1F1F),
                                            height: 1.36,
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                },
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 65.0,
                                  child: Align(
                                    alignment: Alignment.topRight,
                                    child: Image.asset(
                                      "assets/delete.png",
                                      fit: BoxFit.cover,
                                      height: 30,
                                      width: 30,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ));
              },
            ),
          ),
        ],
      )),
    );
  }
}

class Chevron extends CustomPainter {
  final List<Color> colors = [
    Colors.black,
    Colors.green,
    Colors.blue,
    Colors.indigo,
    Colors.purple,
    Colors.purple,
  ];
  @override
  void paint(Canvas canvas, Size size) {
    final Gradient gradient = new LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Color(0xFFF1EDED),
        Color.fromARGB(255, 247, 238, 238),
      ],
      tileMode: TileMode.clamp,
    );

    final Rect colorBounds = Rect.fromLTRB(0, 0, size.width, size.height);
    final Paint paint = new Paint()
      ..shader = gradient.createShader(colorBounds);

    Path path = Path();
    path.moveTo(0, 0);
    path.lineTo(0, 0);
    path.lineTo(size.width / 1, size.height - size.height / 12);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

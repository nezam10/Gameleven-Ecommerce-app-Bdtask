import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rotated_corner_decoration/rotated_corner_decoration.dart';

import '../class/brandList.dart';
import '../widgets/bottomNavigationBarPage.dart';

class CartPage extends StatefulWidget {
  CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  bool isChecked = false;
  bool _value = false;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Color.fromARGB(255, 210, 208, 208);
    }

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
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BottonNavigationBarPage()));
                    },
                    icon: Icon(Icons.arrow_back_rounded)),
                Text(
                  'Shopping Cart',
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
              itemCount: 5,
              itemBuilder: (context, index) {
                var show = blist().wishlistname[index];
                var show2 = blist().wishlistname2[index];
                var showbrandicon = blist().wishlisticon[index];
                return Slidable(
                  endActionPane: ActionPane(
                    extentRatio: 0.4,
                    motion: ScrollMotion(),
                    children: [
                      SlidableAction(
                        onPressed: (BuildContext) {},
                        backgroundColor: Colors.blue,
                        icon: Icons.edit,
                        label: 'Edit',
                      ),
                      SlidableAction(
                        onPressed: (BuildContext) {
                          showDialog(
                            context: context,
                            barrierDismissible: true,
                            builder: (param) {
                              return AlertDialog(
                                actions: [
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 8.0),
                                    child: FlatButton(
                                      minWidth: 100.0,
                                      color: Colors.red,
                                      onPressed: () => Navigator.pop(context),
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
                        backgroundColor: Colors.red,
                        icon: Icons.delete,
                        label: 'Delete',
                      )
                    ],
                  ),
                  child: Container(
                    margin: EdgeInsets.only(bottom: 5),
                    height: 120,
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
                          child: Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: Container(
                              //color: Colors.blue,
                              height: MediaQuery.of(context).size.height,
                              width: 100,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Power Bank Water Gold ',
                                            style: TextStyle(
                                              fontSize: 16.0,
                                              color: const Color(0xFF7E7E7E),
                                              height: 1.06,
                                            ),
                                          ),
                                          Text(
                                            'Sound Box',
                                            style: TextStyle(
                                              fontSize: 16.0,
                                              color: const Color(0xFF7E7E7E),
                                              height: 1.06,
                                            ),
                                          ),
                                        ],
                                      ),
                                      //Icon(Icons.favorite),
                                      Container(
                                        height: 20,
                                        width: 30,
                                        //color: Colors.red,
                                        child: Checkbox(
                                          checkColor: Colors.white,
                                          fillColor:
                                              MaterialStateProperty.resolveWith(
                                                  getColor),
                                          value: isChecked,
                                          shape: CircleBorder(),
                                          onChanged: (bool? value) {
                                            setState(() {
                                              isChecked = value!;
                                            });
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    '$show2',
                                    style: TextStyle(
                                      fontSize: 15.0,
                                      color: const Color(0xFFB2B2B2),
                                      fontWeight: FontWeight.w500,
                                      height: 1.5,
                                    ),
                                  ),
                                  SizedBox(height: 6),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 5.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          '$show',
                                          style: TextStyle(
                                            fontSize: 15.0,
                                            color: const Color(0xFFD81D4C),
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        // Group: Group 348

                                        SizedBox(
                                          width: 85.0,
                                          height: 28.0,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              Container(
                                                alignment:
                                                    Alignment(-0.05, -0.2),
                                                width: 25.0,
                                                height: 25.0,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          3.0),
                                                  color:
                                                      const Color(0xFFF0F0F0),
                                                ),
                                                child: Text(
                                                  '+',
                                                  style: TextStyle(
                                                    fontSize: 17.0,
                                                    color:
                                                        const Color(0xFF837A7A),
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                '01',
                                                style: TextStyle(
                                                  fontSize: 18.0,
                                                  color:
                                                      const Color(0xFF837A7A),
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                              Container(
                                                alignment: Alignment.center,
                                                width: 25.0,
                                                height: 25.0,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          3.0),
                                                  color:
                                                      const Color(0xFFF0F0F0),
                                                ),
                                                child: Text(
                                                  '-',
                                                  style: TextStyle(
                                                    fontSize: 18.0,
                                                    color:
                                                        const Color(0xFF837A7A),
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      )),
    );
  }
}

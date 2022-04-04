import 'package:bdtask_ecommerce_apps/pages/detailsPage.dart';
import 'package:bdtask_ecommerce_apps/pages/orderPage.dart';
import 'package:bdtask_ecommerce_apps/widgets/bottomNavigationBarPage.dart';
import 'package:flutter/material.dart';

import '../widgets/add_to_cart.dart';

class CheckOutPage extends StatefulWidget {
  const CheckOutPage({Key? key}) : super(key: key);

  @override
  State<CheckOutPage> createState() => _CheckOutPageState();
}

class _CheckOutPageState extends State<CheckOutPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffF5F5F5),
        body: SingleChildScrollView(
          child: Column(
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
                                  builder: (context) =>
                                      BottonNavigationBarPage()));
                        },
                        icon: Icon(Icons.arrow_back_rounded)),
                    Text(
                      'Checkout Information',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: const Color(0xFF414141),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 29.0,
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Text(
                        'Billing Address',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: const Color(0xFF414141),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 15.0),
                      child: Text(
                        'CHANGE',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: const Color(0xFFD81D4C),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color: Color(0xffF5F5F5),
                height: 75,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Ibrahim Khalil',
                            style: TextStyle(
                              fontSize: 16.0,
                              color: const Color(0xFF525252),
                              height: 1.06,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'No address  provide',
                            style: TextStyle(
                              fontSize: 14.0,
                              color: const Color(0xFF777777),
                              height: 1.21,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: 31.0,
                        height: 31.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: const Color(0xFFEAEAEA),
                        ),
                        child: Icon(Icons.edit, size: 20),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                width: MediaQuery.of(context).size.width,
                height: 29.0,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Text(
                    'Contact Number',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: const Color(0xFF414141),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              Container(
                color: Color(0xffF5F5F5),
                height: 55,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '+237 785 754 637',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: const Color(0xFF525252),
                          height: 1.06,
                        ),
                      ),
                      Container(
                        width: 31.0,
                        height: 31.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: const Color(0xFFEAEAEA),
                        ),
                        child: Icon(Icons.edit, size: 20),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                width: MediaQuery.of(context).size.width,
                height: 29.0,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Text(
                    'Products',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: const Color(0xFF414141),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 131.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 25, right: 15),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            width: 70.0,
                            height: 83.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/ppc.png'),
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10.0),
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
                                Text(
                                  '45000.OOXAF X 1',
                                  style: TextStyle(
                                    fontSize: 15.0,
                                    color: const Color(0xFFB2B2B2),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  '45000.OOXAF ',
                                  style: TextStyle(
                                    fontSize: 15.0,
                                    color: const Color(0xFFD81D4C),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 131.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 25, right: 15),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            width: 70.0,
                            height: 83.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/headset.png'),
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10.0),
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
                                Text(
                                  '45000.OOXAF X 1',
                                  style: TextStyle(
                                    fontSize: 15.0,
                                    color: const Color(0xFFB2B2B2),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  '45000.OOXAF ',
                                  style: TextStyle(
                                    fontSize: 15.0,
                                    color: const Color(0xFFD81D4C),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                alignment: Alignment.centerLeft,
                width: MediaQuery.of(context).size.width,
                height: 29.0,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Text(
                    'Order Summary',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: const Color(0xFF414141),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),

              SizedBox(height: 10),

              // Group: Group 367
              Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                child: Container(
                  alignment: Alignment(-0.02, 0.16),
                  width: 393.0,
                  height: 150.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: Colors.white,
                  ),
                  child: SizedBox(
                    width: 393.0,
                    height: 119.0,
                    child: Row(
                      children: <Widget>[
                        Spacer(flex: 27),
                        SizedBox(
                          width: 97.0,
                          height: 119.0,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Subtotal',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  color: const Color(0xFF7E7E7E),
                                ),
                              ),
                              Spacer(flex: 14),
                              Text(
                                'Delivery Charge',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  color: const Color(0xFF7E7E7E),
                                ),
                              ),
                              Spacer(flex: 14),
                              Text(
                                'Vat',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  color: const Color(0xFF7E7E7E),
                                ),
                              ),
                              Spacer(flex: 15),
                              Text(
                                'Total',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  color: const Color(0xFF484848),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Spacer(flex: 143),
                        SizedBox(
                          width: 98.0,
                          height: 119.0,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'SAR 450000.00',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  color: const Color(0xFF7E7E7E),
                                ),
                              ),
                              Spacer(flex: 14),
                              Text(
                                'SAR 500.00',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  color: const Color(0xFF7E7E7E),
                                ),
                              ),
                              Spacer(flex: 14),
                              Text(
                                'SAR 500.00',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  color: const Color(0xFF7E7E7E),
                                ),
                              ),
                              Spacer(flex: 15),
                              Text(
                                'SAR 500000.00',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  color: const Color(0xFF4D4D4D),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Spacer(flex: 28),
                      ],
                    ),
                  ),
                ),
              ),

              SizedBox(height: 10),

              Container(
                alignment: Alignment(-0.11, 0.14),
                width: 416.0,
                height: 106.0,
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
                child: SizedBox(
                  width: 333.06,
                  height: 106.0,
                  child: Column(
                    children: <Widget>[
                      Spacer(flex: 13),
                      SizedBox(
                        width: 333.06,
                        height: 19.0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              'Items :02',
                              style: TextStyle(
                                fontSize: 14.0,
                                color: const Color(0xFF5A5A5A),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text.rich(
                              TextSpan(
                                style: TextStyle(
                                  fontSize: 14.0,
                                  color: const Color(0xFF343434),
                                ),
                                children: [
                                  TextSpan(
                                    text: 'Total',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  TextSpan(
                                    text: ' : SAR 50000.00',
                                    style: TextStyle(
                                      color: const Color(0xFF5A5A5A),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Spacer(flex: 16),
                      GestureDetector(
                        //Add to Cart

                        onTap: () {
                          showModalBottomSheet(
                              context: context,
                              builder: (context) {
                                return Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 449.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(10),
                                        topLeft: Radius.circular(10)),
                                    color: Colors.white,
                                  ),
                                  child: OrderPage(),
                                );
                              });
                        },
                        child: Container(
                          alignment: Alignment(0.0, -0.08),
                          width: MediaQuery.of(context).size.width,
                          height: 48.21,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            color: const Color(0xFFD81D4C),
                          ),
                          child: Text(
                            'PLACE ORDER',
                            style: TextStyle(
                              fontSize: 15.0,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      // Container(
                      //   alignment: Alignment(0.0, -0.08),
                      //   width: 333.06,
                      //   height: 48.21,
                      //   decoration: BoxDecoration(
                      //     borderRadius: BorderRadius.circular(5.0),
                      //     color: const Color(0xFFD81D4C),
                      //   ),
                      //   child: Text(
                      //     'PLACE ORDER',
                      //     style: TextStyle(
                      //       fontSize: 15.0,
                      //       color: Colors.white,
                      //       fontWeight: FontWeight.w500,
                      //     ),
                      //   ),
                      // ),
                      Spacer(flex: 9),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

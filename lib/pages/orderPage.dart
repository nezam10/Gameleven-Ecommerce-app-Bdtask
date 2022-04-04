import 'package:bdtask_ecommerce_apps/pages/checkOutPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 25),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Amount to pay',
            style: TextStyle(
              fontSize: 16.0,
              color: const Color(0xFF414141),
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 8),

          Container(
            alignment: Alignment(-0.89, 0.0),
            width: MediaQuery.of(context).size.width,
            height: 50.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2.0),
              border: Border.all(
                width: 1.0,
                color: const Color(0xFFE8E8E8),
              ),
            ),
            child: Text(
              'XAF 50000.00',
              style: TextStyle(
                fontSize: 13.0,
                color: const Color(0xFF262626),
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(height: 15),
          Text(
            'Select Payment method',
            style: TextStyle(
              fontSize: 16.0,
              color: const Color(0xFF414141),
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 15),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 80.0,
            child: Stack(
              children: <Widget>[
                Positioned(
                  left: 40.0,
                  bottom: 16.0,
                  child: Text(
                    'Pay form bitcoin account using bitcoin\nPayment gateway',
                    style: TextStyle(
                      fontSize: 10.0,
                      color: const Color(0xFF8E8E8E),
                    ),
                  ),
                ),
                Positioned(
                  right: 10,
                  bottom: 20,
                  child: Container(
                    height: 25,
                    width: 80,
                    child: Image.asset(
                      "assets/payeer.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment(-0.74, -0.45),
                  width: MediaQuery.of(context).size.width,
                  height: 80.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2.0),
                    border: Border.all(
                      width: 1.0,
                      color: const Color(0xFFE8E8E8),
                    ),
                  ),
                  child: Text(
                    'Payeer',
                    style: TextStyle(
                      fontSize: 13.0,
                      color: const Color(0xFF262626),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Positioned(
                  left: 13.0,
                  top: 18.0,
                  child: Container(
                    width: 16.0,
                    height: 16.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      border: Border.all(
                        width: 1.0,
                        color: const Color(0xFF707070),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 12),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 80.0,
            child: Stack(
              children: <Widget>[
                Positioned(
                  left: 40.0,
                  bottom: 16.0,
                  child: Text(
                    'Pay form bitcoin account using bitcoin\nPayment gateway',
                    style: TextStyle(
                      fontSize: 10.0,
                      color: const Color(0xFF8E8E8E),
                    ),
                  ),
                ),
                Positioned(
                  right: 10,
                  bottom: 22,
                  child: Container(
                    height: 25,
                    width: 80,
                    child: Image.asset(
                      "assets/paypal.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment(-0.74, -0.45),
                  width: MediaQuery.of(context).size.width,
                  height: 80.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2.0),
                    border: Border.all(
                      width: 1.0,
                      color: const Color(0xFFE8E8E8),
                    ),
                  ),
                  child: Text(
                    'Paypal',
                    style: TextStyle(
                      fontSize: 13.0,
                      color: const Color(0xFF262626),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Positioned(
                  left: 13.0,
                  top: 18.0,
                  child: Container(
                    width: 16.0,
                    height: 16.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      border: Border.all(
                        width: 1.0,
                        color: const Color(0xFF707070),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Group: Group 365
          Container(
            alignment: Alignment(-0.11, 0.3),
            width: MediaQuery.of(context).size.width,
            height: 80.0,
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
            child: Container(
              alignment: Alignment(0.0, -0.08),
              width: MediaQuery.of(context).size.width,
              height: 48.21,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: const Color(0xFFD81D4C),
              ),
              child: Text(
                'Make Payment',
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

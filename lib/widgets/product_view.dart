import 'package:flutter/material.dart';

import '../class/brandList.dart';

class ProductListView extends StatelessWidget {
  String? pprice;
  ProductListView({Key? key, this.pprice}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      //scrollDirection: Axis.vertical,
      child: GridView.builder(
        physics: ScrollPhysics(),
        itemCount: blist().brandList2.length,
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            mainAxisExtent: 234),
        itemBuilder: (context, index) {
          var showbrandicon = blist().brandimage2[index];
          var showbrandetails = blist().brandList2[index];
          return Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 240, 235, 241),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      height: 130,
                      width: MediaQuery.of(context).size.width / 1.2,
                      //color: Colors.blue,
                      child: Image.asset("$showbrandicon"),
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "$showbrandetails",
                    style: TextStyle(
                      fontSize: 12.0,
                      color: const Color(0xFF434343),
                      height: 1.42,
                    ),
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '500.00 SAR',
                        style: TextStyle(
                          fontSize: 12.0,
                          color: const Color(0xFFD81D4C),
                          fontWeight: FontWeight.w500,
                          height: 1.42,
                        ),
                      ),
                      Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 231, 226, 226),
                            borderRadius: BorderRadius.circular(12.5)),
                        child: Icon(
                          Icons.shopping_cart_outlined,
                          size: 18,
                          color: Colors.black26,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

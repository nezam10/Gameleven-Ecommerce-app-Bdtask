import 'package:flutter/material.dart';

class CategoriesWidget extends StatelessWidget {
  var categoriesImage;

  CategoriesWidget({Key? key, this.categoriesImage}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      width: MediaQuery.of(context).size.width,
      color: Color(0xffE1E1E1),
      child: Padding(
        padding: const EdgeInsets.only(top: 10.0, bottom: 0.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //Text("data"),
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  width: 72.0,
                  height: 72.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(categoriesImage),
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 5),
            Expanded(
              flex: 2,
              child: Text(
                'Electronic \n   Device',
                style: TextStyle(
                  fontSize: 14.0,
                  color: const Color(0xFF797979),
                ),
              ),
            ),
            Container(
              height: 1,
              width: MediaQuery.of(context).size.width,
              color: Color.fromARGB(255, 198, 193, 193),
            ),
          ],
        ),
      ),
    );
  }
}

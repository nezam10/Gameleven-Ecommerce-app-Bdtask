import 'package:bdtask_ecommerce_apps/widgets/categories2.dart';
import 'package:bdtask_ecommerce_apps/widgets/categories3.dart';
import 'package:bdtask_ecommerce_apps/widgets/categoriesPadding.dart';
import 'package:flutter/material.dart';

import '../widgets/bottomNavigationBarPage.dart';
import '../widgets/categories.dart';
import '../widgets/rowCategories.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        physics: ScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 59.0,
              color: Colors.white,
              child: Row(
                children: [
                  SizedBox(width: 15),
                  // IconButton(
                  //     onPressed: () {
                  //       Navigator.push(
                  //           context,
                  //           MaterialPageRoute(
                  //               builder: (context) =>
                  //                   BottonNavigationBarPage()));
                  //     },
                  //     icon: Icon(Icons.arrow_back_rounded)),
                  Text(
                    'Categories',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: const Color(0xFF404040),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      CategoriesWidget(categoriesImage: "assets/headset.png"),
                      Container(
                        height: 130,
                        width: MediaQuery.of(context).size.width,
                        color: Colors.white,
                        child: Padding(
                          padding:
                              const EdgeInsets.only(top: 10.0, bottom: 0.0),
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
                                        image: AssetImage("assets/cheir.png"),
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
                      ),
                      CategoriesWidget(categoriesImage: "assets/ppc.png"),
                      CategoriesWidget(categoriesImage: "assets/mouse.png"),
                      CategoriesWidget(categoriesImage: "assets/pc2.png"),
                    ],
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Column(
                    children: [
                      Categories2(
                        categoriesName2: "Gaming Device",
                      ),
                      CategoriesPadding(),
                      Categories3(
                        categoriesname3: "Xbox",
                        children: [
                          //color: Colors.red,
                          RowCategories(),
                        ],
                      ),
                      CategoriesPadding(),
                      Categories3(
                        categoriesname3: 'Playstation 4',
                        children: [
                          RowCategories(),
                        ],
                      ),
                      CategoriesPadding(),
                      Categories3(
                        categoriesname3: 'Nintendo Switch',
                        children: [
                          RowCategories(),
                        ],
                      ),
                      CategoriesPadding(),
                      Categories3(
                        categoriesname3: 'Gaming Chairs',
                        children: [
                          Container(
                            height: 80,
                            color: Colors.red,
                          )
                        ],
                      ),
                      CategoriesPadding(),
                      Categories3(
                        categoriesname3: 'Gaming Headsets',
                        children: [
                          Container(
                            height: 80,
                            color: Colors.blue,
                          )
                        ],
                      ),
                      CategoriesPadding(),
                      Categories3(
                        categoriesname3: 'Gaming Setup',
                        children: [
                          Container(
                            height: 80,
                            color: Colors.blue,
                          )
                        ],
                      ),
                      CategoriesPadding(),
                      Categories3(
                        categoriesname3: 'TV & Audio',
                        children: [
                          Container(
                            height: 80,
                            color: Colors.blue,
                          )
                        ],
                      ),
                      CategoriesPadding(),
                      Categories3(
                        categoriesname3: 'Merchandise',
                        children: [
                          Container(
                            height: 80,
                            color: Colors.blue,
                          )
                        ],
                      ),
                      CategoriesPadding(),
                      Categories3(
                        categoriesname3: 'Retro Gaming Consoles',
                        children: [
                          Container(
                            height: 80,
                            color: Colors.blue,
                          )
                        ],
                      ),
                      CategoriesPadding(),
                      Categories3(
                        categoriesname3: 'Pre Owned (Bedel)',
                        children: [
                          Container(
                            height: 80,
                            color: Colors.blue,
                          )
                        ],
                      ),
                      CategoriesPadding(),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      )),
    );
  }
}

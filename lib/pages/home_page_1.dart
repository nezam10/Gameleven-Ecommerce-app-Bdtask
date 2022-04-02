import 'package:bdtask_ecommerce_apps/widgets/infoHomePage.dart';
import 'package:bdtask_ecommerce_apps/widgets/slider.dart';
import 'package:flutter/material.dart';

class HomePage1 extends StatefulWidget {
  const HomePage1({Key? key}) : super(key: key);

  @override
  State<HomePage1> createState() => _HomePage1State();
}

class _HomePage1State extends State<HomePage1> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(vsync: this, length: 5);
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(new FocusNode()),
      child: SafeArea(
        child: Scaffold(
          //extendBody: true,
          body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: const Color(0xFFF3F3F3),
            child: SingleChildScrollView(
              physics: ScrollPhysics(),
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 20.0, left: 8.0, right: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        IconButton(
                            onPressed: () {}, icon: Icon(Icons.menu, size: 28)),
                        SizedBox(width: 5),
                        Container(
                          width: MediaQuery.of(context).size.width / 1.27,
                          height: 46.0,
                          decoration: BoxDecoration(
                            color: const Color(0xFFE8E8E8),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: TextFormField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "What would you like to buy?",
                                hintStyle: TextStyle(color: Colors.grey),
                                prefixIcon: IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.search, size: 30),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: Container(
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: TabBar(
                            controller: _tabController,
                            isScrollable: true,
                            labelColor: Colors.red,
                            unselectedLabelColor:
                                Color.fromRGBO(158, 158, 158, 1),
                            indicatorColor: Colors.red,
                            labelStyle: TextStyle(fontSize: 15),
                            indicatorWeight: 4,
                            labelPadding: EdgeInsets.only(right: 14),
                            tabs: [
                              Tab(text: "Hot"),
                              Tab(text: "Computer & Office"),
                              Tab(text: "Phone Accessories"),
                              Tab(text: "Gaming PC"),
                              Tab(text: "Toys"),
                            ]),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                        left: 15, right: 15, top: 15, bottom: 15),
                    width: double.maxFinite,
                    height: MediaQuery.of(context).size.height,
                    child: TabBarView(
                      controller: _tabController,
                      children: [
                        Slider1(),
                        //InfoHomePage(),
                        Text("Computer & Office"),
                        Text("Phone Accessories"),
                        Text("Gaming PC"),
                        Text("Toys"),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

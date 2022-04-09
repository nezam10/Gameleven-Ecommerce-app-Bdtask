import 'dart:io';

import 'package:bdtask_ecommerce_apps/pages/checkOutPage.dart';
import 'package:bdtask_ecommerce_apps/pages/editPage.dart';
import 'package:bdtask_ecommerce_apps/pages/signInPage.dart';
import 'package:bdtask_ecommerce_apps/widgets/bottomNavigationBarPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  File? image;
  Future picImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image == null) return;

      final imageTemp = File(image.path);
      setState(() {
        this.image = imageTemp;
      });
    } on PlatformException catch (e) {
      print("Failed to pick image: $e");
    }
  }

  var selected = "Language";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.grey[100],
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
                        'Account',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: const Color(0xFF404040),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 186.0,
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
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // image != null
                      //     ? ClipOval(
                      //         child: Image.file(image!,
                      //             width: 120, height: 120, fit: BoxFit.cover),
                      //       )
                      //     : Center(child: const Text("Image not found")),
                      GestureDetector(
                        onTap: () {
                          //picImage();
                        },
                        child: GestureDetector(
                          onTap: () {
                            picImage();
                          },
                          child: Container(
                            height: 110,
                            width: 110,
                            decoration: BoxDecoration(
                                //color: Colors.red,
                                borderRadius: BorderRadius.circular(60),
                                image: DecorationImage(
                                    image: AssetImage('assets/gallery.png'),
                                    fit: BoxFit.cover)),
                            child: image != null
                                ? ClipOval(
                                    child: Image.file(image!,
                                        width: 120,
                                        height: 120,
                                        fit: BoxFit.cover),
                                  )
                                : Center(child: const Text("")),
                          ),
                        ),
                      ),
                      Text(
                        'Jonathan Smith',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: const Color(0xFF404040),
                          fontWeight: FontWeight.w700,
                          height: 1.5,
                        ),
                      ),
                      Text(
                        '018373636733',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: const Color(0xFF9F9F9F),
                          height: 1.5,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 12),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 280.0,
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
                    padding: const EdgeInsets.only(
                        left: 25.0, right: 10, top: 20, bottom: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Order Details

                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CheckOutPage()));
                          },
                          child: Container(
                            width: 416.0,
                            height: 52.0,
                            decoration: BoxDecoration(
                              color: Colors.white,
                            ),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      width: 50.0,
                                      height: 50.0,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),
                                        color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                            color: const Color(0xFF9D9D9D)
                                                .withOpacity(0.16),
                                            offset: Offset(0, 0),
                                            blurRadius: 6.0,
                                          ),
                                        ],
                                      ),
                                      child: Icon(
                                        Icons.home,
                                        color: const Color(0xFFD81D4C),
                                        size: 30,
                                      ),
                                    ),
                                    SizedBox(width: 15),
                                    Text(
                                      'Order Details',
                                      style: TextStyle(
                                        fontSize: 18.0,
                                        color: const Color(0xFFD81D4C),
                                      ),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20.0),
                                  child: Container(
                                    color: Color.fromARGB(255, 228, 225, 225),
                                    height: 1,
                                    width:
                                        MediaQuery.of(context).size.width / 1.5,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),

                        // Edit Profile

                        GestureDetector(
                          onTap: () {
                            //picImage();
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => EditProfile()));
                          },
                          child: Container(
                            width: 416.0,
                            height: 52.0,
                            decoration: BoxDecoration(
                              color: Colors.white,
                            ),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      width: 50.0,
                                      height: 50.0,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),
                                        color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                            color: const Color(0xFF9D9D9D)
                                                .withOpacity(0.16),
                                            offset: Offset(0, 0),
                                            blurRadius: 6.0,
                                          ),
                                        ],
                                      ),
                                      child: Icon(
                                        Icons.person_outline,
                                        size: 30,
                                        color: Color.fromARGB(255, 8, 134, 224),
                                      ),
                                    ),
                                    SizedBox(width: 15),
                                    Text(
                                      'Edit Profile',
                                      style: TextStyle(
                                        fontSize: 18.0,
                                        color: const Color(0xFF404040),
                                      ),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20.0),
                                  child: Container(
                                    color: Color.fromARGB(255, 228, 225, 225),
                                    height: 1,
                                    width:
                                        MediaQuery.of(context).size.width / 1.5,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),

                        // Address

                        Container(
                          width: 416.0,
                          height: 52.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 50.0,
                                    height: 50.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(25),
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          color: const Color(0xFF9D9D9D)
                                              .withOpacity(0.16),
                                          offset: Offset(0, 0),
                                          blurRadius: 6.0,
                                        ),
                                      ],
                                    ),
                                    child: Icon(
                                      Icons.location_on_outlined,
                                      color: Colors.green,
                                      size: 30,
                                    ),
                                  ),
                                  SizedBox(width: 15),
                                  Text(
                                    'Address',
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      color: const Color(0xFF404040),
                                    ),
                                  )
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20.0),
                                child: Container(
                                  color: Color.fromARGB(255, 228, 225, 225),
                                  height: 1,
                                  width:
                                      MediaQuery.of(context).size.width / 1.5,
                                ),
                              )
                            ],
                          ),
                        ),

                        // Change Language

                        Container(
                          width: 416.0,
                          height: 52.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 50.0,
                                    height: 50.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(25),
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          color: const Color(0xFF9D9D9D)
                                              .withOpacity(0.16),
                                          offset: Offset(0, 0),
                                          blurRadius: 6.0,
                                        ),
                                      ],
                                    ),
                                    child: Icon(
                                      Icons.change_circle,
                                      size: 30,
                                      color: Colors.orange,
                                    ),
                                  ),
                                  SizedBox(width: 15),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(
                                        selected,
                                        style: TextStyle(
                                          fontSize: 18.0,
                                          color: const Color(0xFF404040),
                                        ),
                                      ),
                                      DropdownButton(
                                        iconSize: 30,
                                        alignment: Alignment.centerRight,
                                        underline:
                                            Container(color: Colors.white),
                                        items: [
                                          DropdownMenuItem(
                                            value: "Language",
                                            child: Text("Language"),
                                          ),
                                          DropdownMenuItem(
                                            value: "Bangla",
                                            child: Text("Bangla"),
                                          ),
                                          DropdownMenuItem(
                                            value: "English",
                                            child: Text("English"),
                                          ),
                                        ],
                                        onChanged: (value) {
                                          setState(() {
                                            selected = "$value";
                                          });
                                        },
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20.0),
                                child: Container(
                                  color: Color.fromARGB(255, 228, 225, 225),
                                  height: 1,
                                  width:
                                      MediaQuery.of(context).size.width / 1.5,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                // Logout
                SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.only(left: 25.0, right: 10),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignInPage()));
                    },
                    child: Container(
                      width: 416.0,
                      height: 52.0,
                      decoration: BoxDecoration(
                          //color: Colors.blue,
                          ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 50.0,
                                height: 50.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: const Color(0xFF9D9D9D)
                                          .withOpacity(0.16),
                                      offset: Offset(0, 0),
                                      blurRadius: 6.0,
                                    ),
                                  ],
                                ),
                                child: Icon(
                                  Icons.logout,
                                  color: Colors.red,
                                ),
                              ),
                              SizedBox(width: 15),
                              Text(
                                'Logout',
                                style: TextStyle(
                                  fontSize: 18.0,
                                  color: const Color(0xFF404040),
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Container(
                              color: Color.fromARGB(255, 228, 225, 225),
                              height: 1,
                              width: MediaQuery.of(context).size.width / 1.5,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 25),
              ],
            ),
          )),
    );
  }
}

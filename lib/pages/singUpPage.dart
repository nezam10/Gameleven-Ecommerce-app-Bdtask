import 'package:bdtask_ecommerce_apps/pages/home_page_1.dart';
import 'package:bdtask_ecommerce_apps/pages/signInPage.dart';
import 'package:bdtask_ecommerce_apps/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../widgets/bottomNavigationBarPage.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool isChecked = false;
  var email, password;

  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  void checkValidation(var checkEmail, var checkPassword) {
    String a = '01835006682';
    String b = '12345678';
    if (_formkey.currentState!.validate()) {
      if (checkEmail == a) {
        if (checkPassword == b) {
          toastMessage('Login Successful');
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const BottonNavigationBarPage()),
          );
        } else {
          toastMessage('Wrong Password');
        }
      } else {
        //1st if-else
        toastMessage('Wrong Email Address');
      }
    }
  }

  //Toast Function
  void toastMessage(var toastText) {
    Fluttertoast.showToast(
        msg: toastText,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        textColor: Colors.white,
        backgroundColor: Colors.red[200],
        fontSize: 16.0);
  }

  //Password show & hide
  bool _isVisible = false;
  void updateStatus() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    //SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);

    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Color.fromARGB(255, 184, 182, 182);
    }

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(new FocusNode()),
      child: SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: SingleChildScrollView(
            child: Form(
              key: _formkey,
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 70.0,
                    color: const Color(0xFF72142C),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const SignInPage()),
                              );
                            },
                            icon: Icon(Icons.arrow_back,
                                color: Colors.white, size: 28),
                          ),
                          Text(
                            'Sign In',
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  //SizedBox(height: 20),
                  Container(
                    // color: Colors.blue,
                    //height: MediaQuery.of(context).size.height / 1.18,
                    width: MediaQuery.of(context).size.width,
                    child: Center(
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 25.0, bottom: 15),
                            child: Container(
                              //height: MediaQuery.of(context).size.height / 1.2,
                              width: MediaQuery.of(context).size.width / 1.15,
                              //color: Colors.red,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: 187.0,
                                    height: 65.17,
                                    child: Image.asset(
                                      "assets/gameleven.png",
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height /
                                              30),
                                  CustomTextField(
                                    controller: emailController,
                                    hintText: "First Name",
                                    validator: (valu) {
                                      if (valu!.isEmpty) {
                                        return "Please Enter Your Name";
                                      }
                                      return null;
                                    },
                                    onSaved: (value) {
                                      email = value;
                                    },
                                  ),
                                  SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height /
                                              70),
                                  CustomTextField(
                                    controller: passwordController,
                                    hintText: "Email",

                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return 'Please Enter Email';
                                      }
                                      return null;
                                    },
                                    onSaved: (value) {
                                      password = value;
                                    },
                                    //obscureText: _isVisible ? false : true,
                                  ),
                                  SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height /
                                              70),
                                  CustomTextField(hintText: "Password"),
                                  SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height /
                                              70),
                                  CustomTextField(
                                    hintText: "Phone Number",
                                    keyboardType: TextInputType.number,
                                  ),
                                  SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height /
                                              70),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Checkbox(
                                        checkColor: Colors.white,
                                        fillColor:
                                            MaterialStateProperty.resolveWith(
                                                getColor),
                                        value: isChecked,
                                        onChanged: (bool? value) {
                                          setState(() {
                                            isChecked = value!;
                                          });
                                        },
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                "I agree to the",
                                                style: TextStyle(
                                                  fontSize: 14.0,
                                                  color:
                                                      const Color(0xFF6E6E6E),
                                                ),
                                              ),
                                              GestureDetector(
                                                onTap: () {
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            const SignUpPage()),
                                                  );
                                                },
                                                child: Text(
                                                  " Privacy Policy",
                                                  style: TextStyle(
                                                    fontSize: 14.0,
                                                    color:
                                                        const Color(0xFFD81D4C),
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                " and terms &",
                                                style: TextStyle(
                                                  fontSize: 14.0,
                                                  color:
                                                      const Color(0xFF6E6E6E),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Text(
                                            "Conditions of Limarket",
                                            style: TextStyle(
                                              fontSize: 14.0,
                                              color: const Color(0xFF6E6E6E),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height /
                                              50),
                                  GestureDetector(
                                    onTap: () {
                                      checkValidation(emailController.text,
                                          passwordController.text);
                                    },
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 58.0,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(2.0),
                                        color: const Color(0xFFD81D4C),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'Create Account',
                                          style: TextStyle(
                                            fontSize: 17.0,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height /
                                              70),
                                  SizedBox(height: 25),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            child: Container(
                              height: 25,
                              //color: Colors.green,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Already Have An Account ?",
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      color: const Color(0xFF6E6E6E),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const SignInPage()),
                                      );
                                    },
                                    child: Text(
                                      " Sign In",
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        color: const Color(0xFFD81D4C),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
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

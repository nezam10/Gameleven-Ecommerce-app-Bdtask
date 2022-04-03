import 'package:bdtask_ecommerce_apps/pages/home_page_1.dart';
import 'package:bdtask_ecommerce_apps/pages/singUpPage.dart';
import 'package:bdtask_ecommerce_apps/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../widgets/bottomNavigationBarPage.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
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

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(new FocusNode()),
      child: SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: SingleChildScrollView(
            reverse: true,
            physics: ScrollPhysics(),
            child: Form(
              key: _formkey,
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 80.0,
                    color: const Color(0xFF72142C),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {},
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
                  //SizedBox(height: 20),
                  Container(
                    //color: Colors.blue,
                    height: MediaQuery.of(context).size.height / 1.18,
                    width: MediaQuery.of(context).size.width,
                    child: Center(
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height / 1.3,
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
                                    height: MediaQuery.of(context).size.height /
                                        25),
                                CustomTextField(
                                  controller: emailController,
                                  hintText: "Phone Number",
                                  prefixIcon: Icon(Icons.phone, size: 20),
                                  validator: (valu) {
                                    if (valu!.isEmpty) {
                                      return "Please Enter Your Number";
                                    }
                                    return null;
                                  },
                                  onSaved: (value) {
                                    email = value;
                                  },
                                ),
                                SizedBox(
                                    height: MediaQuery.of(context).size.height /
                                        58),
                                CustomTextField(
                                  controller: passwordController,
                                  hintText: "Password",
                                  prefixIcon:
                                      Icon(Icons.lock_outline, size: 20),
                                  suffixIcon: IconButton(
                                    iconSize: 20,
                                    onPressed: () {
                                      updateStatus();
                                    },
                                    icon: Icon(_isVisible
                                        ? Icons.visibility
                                        : Icons.visibility_off),
                                  ),
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Please Enter Password';
                                    }
                                    return value.length <= 6
                                        ? 'Password must be six characters'
                                        : null;
                                  },
                                  onSaved: (value) {
                                    password = value;
                                  },
                                  obscureText: _isVisible ? false : true,
                                ),
                                SizedBox(
                                    height: MediaQuery.of(context).size.height /
                                        65),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    'Forgot your password?',
                                    style: TextStyle(
                                      fontSize: 15.0,
                                      color: const Color(0xFF9A9A9A),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                    height: MediaQuery.of(context).size.height /
                                        65),
                                GestureDetector(
                                  onTap: () {
                                    checkValidation(emailController.text,
                                        passwordController.text);
                                  },
                                  child: Container(
                                    width: 331.0,
                                    height: 60.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(2.0),
                                      color: const Color(0xFFD81D4C),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Sign In',
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
                                    height: MediaQuery.of(context).size.height /
                                        65),
                                Row(
                                  children: [
                                    Expanded(
                                      flex: 2,
                                      child: Container(
                                        color: const Color(0xFF9A9A9A),
                                        height: 1,
                                        width:
                                            MediaQuery.of(context).size.width,
                                      ),
                                    ),
                                    Expanded(
                                        flex: 1,
                                        child: Text(
                                          'OR',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 15.0,
                                            color: const Color(0xFF9A9A9A),
                                          ),
                                        )),
                                    Expanded(
                                      flex: 2,
                                      child: Container(
                                        color: const Color(0xFF9A9A9A),
                                        height: 1,
                                        width:
                                            MediaQuery.of(context).size.width,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                    height: MediaQuery.of(context).size.height /
                                        55),
                                Container(
                                  height: 35,
                                  width:
                                      MediaQuery.of(context).size.width / 1.8,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        height: 33.95,
                                        width: 33.95,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        child: Image.asset(
                                          "assets/facebook.png",
                                          fit: BoxFit.fitHeight,
                                        ),
                                      ),
                                      Container(
                                        height: 33.95,
                                        width: 33.95,
                                        decoration: BoxDecoration(
                                          color:
                                              Color.fromARGB(255, 81, 172, 246),
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(6.0),
                                          child: Image.asset(
                                            "assets/google.png",
                                            fit: BoxFit.fitHeight,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 33.95,
                                        width: 33.95,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        child: Image.asset(
                                          "assets/instagram.png",
                                          fit: BoxFit.fitHeight,
                                        ),
                                      ),
                                      Container(
                                        height: 33.95,
                                        width: 33.95,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        child: Image.asset(
                                          "assets/linkedin.png",
                                          fit: BoxFit.fitHeight,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                    height: MediaQuery.of(context).size.height /
                                        50),
                                Text(
                                  'By clicking this button, you agree to our privacy Policy',
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    color: const Color(0xFF9A9A9A),
                                  ),
                                ),
                                SizedBox(height: 50),
                              ],
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
                                    "Don’t Have An Account ?",
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
                                                const SignUpPage()),
                                      );
                                    },
                                    child: Text(
                                      " Sign Up",
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

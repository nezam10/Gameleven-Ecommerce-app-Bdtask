import 'dart:io';

import 'package:bdtask_ecommerce_apps/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  File? image;
  Future chooseImage() async {
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

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(new FocusNode()),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Edit Profile"),
        ),
        body: Container(
          alignment: Alignment.center,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: const Color.fromARGB(255, 227, 220, 220),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 45, 179, 246),
                      borderRadius: BorderRadius.circular(75),
                      image: DecorationImage(
                          image: AssetImage("assets/gallery.png"),
                          fit: BoxFit.cover)),
                  child: image != null
                      ? ClipOval(
                          child: Image.file(
                            image!,
                            // fit: BoxFit.fitWidth,
                          ),
                        )
                      : const Center(child: Text("")),
                ),
                ElevatedButton(
                  onPressed: () {
                    chooseImage();
                  },
                  child: const Text("Select Image"),
                ),
                const SizedBox(height: 10),
                const Padding(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0),
                  child: const CustomTextField(
                    hintText: "Enter Your Name",
                    prefixIcon: Icon(Icons.person),
                  ),
                ),
                const SizedBox(height: 10),
                const Padding(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0),
                  child: const CustomTextField(
                    hintText: "Enter Your Number",
                    prefixIcon: Icon(Icons.add_ic_call_rounded),
                  ),
                ),
                const SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.only(right: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          alignment: Alignment.center,
                          height: 40,
                          width: 80,
                          decoration: BoxDecoration(
                              color: Colors.blue[300],
                              borderRadius: BorderRadius.circular(5)),
                          child: Text(
                            "Save",
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

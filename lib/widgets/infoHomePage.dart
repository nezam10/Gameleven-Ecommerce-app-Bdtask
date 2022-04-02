import 'package:bdtask_ecommerce_apps/widgets/slider.dart';
import 'package:flutter/material.dart';

class InfoHomePage extends StatefulWidget {
  const InfoHomePage({Key? key}) : super(key: key);

  @override
  State<InfoHomePage> createState() => _InfoHomePageState();
}

class _InfoHomePageState extends State<InfoHomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Slider1(),
        Text(
          "InfoHomePage",
          style: TextStyle(color: Colors.red),
        ),
      ],
    );
  }
}

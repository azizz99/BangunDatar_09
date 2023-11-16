import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page", style: TextStyle(color: Colors.black)),
        backgroundColor: Color(0xFF9EEA45),
        ),
        body: ListView(
          children: [
            Row(
              children: [
                Expanded(child: CustomMenu(imageAsset: "assets/img.png",title: "Persegi")), //CustomMenu,Expanded
              ],
            ),
            Row(
              children: [
                Expanded(child: CustomMenu(imageAsset: "assets/img_1.png",title: "Segitiga")), //CustomMenu,Expanded
              ],
            ),
            Row(
              children: [
                Expanded(child: CustomMenu(imageAsset: "assets/img_2.png",title: "Layang - Layang")), //CustomMenu,Expanded
              ],
            ),
            Row(
              children: [
                Expanded(child: CustomMenu(imageAsset: "assets/img_3.png",title: "Trapesium")), //CustomMenu,Expanded
              ],
            ),
                Expanded(child: CustomMenu(imageAsset: "assets/img_5.png",title: "Belah Ketupat")), //CustomMenu,Expanded
    ],
    ),
    );
  }
}

class CustomMenu extends StatelessWidget {
  const CustomMenu({
    super.key, required this.imageAsset, required this.title,
  });

  final String imageAsset;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 7,vertical: 8),
        color: Colors.blueGrey,
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 45),
        child: Column(
          children: [
            Image.asset(imageAsset, height: 220),
            Text(title, style: TextStyle(color: Colors.black),),
          ],
    ));
  }
}

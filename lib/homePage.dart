import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        automaticallyImplyLeading: false,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            )),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          myCard("image/aonImage.jpg"),
          myCard("image/secodImage.jpg"),
          myCard("image/aonImage.jpg"),
          myCard("image/secodImage.jpg"),
        ],
      ),
    );
  }

  Container myCard(String image) {
    return Container(
      margin: EdgeInsets.only(top: 30),
      padding: EdgeInsets.only(top: 30),
      height: 200,
      width: 350,
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              // image: NetworkImage("https://cdn.pixabay.com/photo/2014/06/03/19/38/board-361516_640.jpg")),
              image: AssetImage(image)),
          color: Colors.teal,
          // borderRadius: BorderRadius.circular(20),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50),
            bottomRight: Radius.circular(50),
            topRight: Radius.circular(50),
          ),
          border: Border.all(width: 1, color: Colors.grey),
          boxShadow: [
            BoxShadow(
                blurRadius: 20,
                spreadRadius: 15,
                color: Colors.grey,
                offset: Offset(2, 6)),
          ]),
      //  child: Text("FLUTTER lOVER"),
    );
  }
}
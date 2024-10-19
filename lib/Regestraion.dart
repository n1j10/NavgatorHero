
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:textfieldr/homePage.dart';
import 'package:textfieldr/navBar.dart';

class Regestraion extends StatefulWidget {
  const Regestraion({super.key});

  @override
  State<Regestraion> createState() => _RegestraionState();
}
class _RegestraionState extends State<Regestraion> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController ageController = TextEditingController();

bool visibilityOffOrNot =true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(onPressed: (){
          Navigator.of(context).pop();
        },
            icon: Icon(Icons.arrow_back_ios,color: Colors.pink,
            ),
        ),
      ),
      body: Container(
          padding: EdgeInsets.all(20),
        child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 50,),
          Text("Regestraion",style: TextStyle(color: Colors.pink,
          ),
          ),
          SizedBox(height: 20,),
          TextFormField(
            controller: nameController,
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Name"
            ),
          ),
          SizedBox(height: 25,),

          TextFormField(
            controller: emailController,
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Email"
            ),
          ),
          SizedBox(height: 25,),
          TextFormField(
            controller: ageController,
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Age"
            ),
          ),
          SizedBox(height: 25,),
          TextButton(onPressed: (){
            if(nameController.text=="rami"&& emailController.text=="ramia93@gmail.com"
                && ageController.text==ageController);
            {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BNB()),
              );
            }

          },
              child: Text("Sgin Up"),

          ),
        ],
      ),

    ),

    );
  }
}


/*
            obscureText: visibilityOffOrNot,

                suffixIcon: Icon(Icons.visibility_off),

 */
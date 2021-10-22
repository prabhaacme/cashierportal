
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:testproject/Screens/HomeScreen.dart';
class LoginPage extends StatefulWidget {
 final String ?date;
  final String ?time;

  LoginPage({
    this.date,
    this.time
  });
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right:8.0,top: 8.0, bottom:8.0),
            child: OutlinedButton(
           style:  ButtonStyle(
    shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))),
  ),
	
    child: Text('Help',style: TextStyle(color: Colors.black,)),
	
    onPressed: () {
	
      print('Pressed');
	
    },
	
  ),
          )
        ],
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text("Login", style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
        leading: Padding(
          padding: const EdgeInsets.only(left:18.0),
          child: Image.asset("assets/image5.png"),
        ),
      
      ),
      body: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width/2,
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top:38.0),
                  child: Image.asset("assets/Union26.png"),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:20.0, left: 38.0, right: 38.0),
                  child: TextFormField(
                  decoration: new InputDecoration(
                    labelText: "Username",
                    fillColor: Colors.white,
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(25.0),
                      borderSide: new BorderSide(),
                    ),
                    //fillColor: Colors.green
                  ),
                  validator: (val) {
                    if (val!.length == 0) {
                      return "Email cannot be empty";
                    } else {
                      return null;
                    }
                  },
                  keyboardType: TextInputType.emailAddress,
                  style: new TextStyle(
                    fontFamily: "Poppins",
                  ),
              ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:10.0, left: 38.0, right: 38.0),
                  child: TextFormField(
                  decoration: new InputDecoration(
                    labelText: "Password",
                    fillColor: Colors.white,
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(25.0),
                      borderSide: new BorderSide(),
                    ),
                    //fillColor: Colors.green
                  ),
                  validator: (val) {
                    if (val!.length == 0) {
                      return "Email cannot be empty";
                    } else {
                      return null;
                    }
                  },
                  keyboardType: TextInputType.emailAddress,
                  style: new TextStyle(
                    fontFamily: "Poppins",
                  ),
              ),
                ),
                 Padding(
                   padding: const EdgeInsets.only(top:10.0),
                   child: ElevatedButton(
      child: Text(
        "Login".toUpperCase(),
        style: TextStyle(fontSize: 14)
      ),
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
        backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
            side: BorderSide(color: Colors.black)
          )
        )
      ),
      onPressed: () {
        Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => HomeScreen()),
  );
      }
    ),
                 )
              ],
            ),
            
          ),
          Container(

            width: MediaQuery.of(context).size.width/2,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image:AssetImage("assets/Rectangle26.png"),
                fit: BoxFit.cover
                 )
            ),
            child: Padding(
              padding: const EdgeInsets.only(top:28.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left:18.0),
                        child: Text(widget.date!,style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 18.0),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right:18.0),
                        child: Text(widget.time!,style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 18.0),),
                      )
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height/2,
                  ),
                  Text("Cashier Portal",style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 30.0),)
                ],
              ),
            ),
          )
        ],
      ),
      
    );
  }
}
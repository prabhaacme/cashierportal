
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'dart:convert';
import 'package:testproject/Provider/LoginProvider.dart';
import 'package:testproject/Screens/HomeScreen.dart';
import 'package:testproject/Utils/AppColors.dart';
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
   final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  String ? email, password;
   late LoginProvider loginProvider;
  

 login() async {
    
    if (_formkey.currentState!.validate()) {
      _formkey.currentState!.save();
      

      Map loginData = {
        "email": email,
        "password": password
      };

     
      
      bool isLogin = await loginProvider.logIn(loginData);

      if (isLogin ) {
        Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => HomeScreen()),
  );
      }
    }
  }
    
  @override
  Widget build(BuildContext context) {
    loginProvider = Provider.of<LoginProvider>(context);
    var size = MediaQuery.of(context).size;
    return Scaffold(
       resizeToAvoidBottomInset: false,
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
      body: SingleChildScrollView(
              child: Column(
          children: [
            Container(
              width: size.width,
              height: size.height,
              child: Row(
                children: [
                  Form(
                    key: _formkey,
                              child: Container(
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
                              initialValue: "zoom@gmail.com",
                            decoration: new InputDecoration(
                              labelText: "Username",
                              fillColor: Colors.white,
                              border: new OutlineInputBorder(
                                borderRadius: new BorderRadius.circular(25.0),
                                borderSide: new BorderSide(),
                              ),
                              //fillColor: Colors.green
                            ),
                           validator: (val) =>
                                  !EmailValidator.validate(val!, true)
                                      ? 'Not a Valid Email.'
                                      : null,
                              onSaved: (val) => email = val,
                            keyboardType: TextInputType.emailAddress,
                            style: new TextStyle(
                              fontFamily: "Poppins",
                            ),
                        ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top:10.0, left: 38.0, right: 38.0),
                            child: TextFormField(
                              obscureText: true,
                              initialValue: "test12345!",
                            decoration: new InputDecoration(
                              labelText: "Password",
                              fillColor: Colors.white,
                              border: new OutlineInputBorder(
                                borderRadius: new BorderRadius.circular(25.0),
                                borderSide: new BorderSide(),
                              ),
                              //fillColor: Colors.green
                            ),
                           validator: (val) => val!.length < 4
                                  ? 'Password too Short..'
                                  : null,
                              onSaved: (val) => password = val,
                            keyboardType: TextInputType.emailAddress,
                            style: new TextStyle(
                              fontFamily: "Poppins",
                            ),
                        ),
                          ),
                           Container(
                             height: 50,
                             width: 150,
                             child: Padding(
                               padding: const EdgeInsets.only(top:10.0),
                               child: ElevatedButton(
              child:loginProvider.loading == false? Text(
                "Login".toUpperCase(),
                style: TextStyle(fontSize: 14)
              ):Center(
                child: CircularProgressIndicator(
                  color: AppColors.colorWhite,
                )
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
              onPressed: login
    ),
                             ),
                           )
                        ],
                      ),
                      
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
            ),
          ],
        ),
      ),
      
    );
  }
}
import 'package:flutter/material.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';
import 'package:testproject/TabScreens/Dashboard.dart';
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
          child: Scaffold(
              appBar: AppBar(
          actions: [
            Center(child: Padding(
              padding: const EdgeInsets.only(right:18.0),
              child: Text("Logout",style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
            ))
          ],
          backgroundColor: Colors.white,
          
          title: Align(
                alignment: Alignment.topRight,
                child:Container(
                  width: MediaQuery.of(context).size.width/2,
                  child: TabBar(
                
                  tabs: [
                    Tab(text: 'Home'),
                    Tab(text: 'Menu'),
                    Tab(text: 'Stock'),
                  ],
                  labelColor: Colors.white,
                    unselectedLabelColor: Colors.black,
                    indicator: RectangularIndicator(
                     
                    ),
              ),
                ),),
          leading: Padding(
            padding: const EdgeInsets.only(left:18.0),
            child: Image.asset("assets/image5.png"),
          ),
        
        ),
        body: TabBarView(
          physics: NeverScrollableScrollPhysics(),
            children: [
              DashBoard(),
              Center(child: Text('CATS')),
              Center(child: Text('CATS')),
            ],
          ),
        
      ),
    );
  }
}
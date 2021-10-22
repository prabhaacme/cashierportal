import 'package:flutter/material.dart';

import 'package:tab_indicator_styler/tab_indicator_styler.dart';
import 'package:testproject/TabScreens/SubCat.dart';
class DashBoard extends StatefulWidget {
  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
   final List<Tab> tabs = <Tab>[
    new Tab(text: "Featured"),
    new Tab(text: "Popular"),
    new Tab(text: "Latest")
  ];
   

 
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
          child: Scaffold(
            body: Row(

        children: [
          Expanded(
            flex: 7,
                  child: Container(
             
              child: Column(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height/8,
                      width: MediaQuery.of(context).size.width,
                      color: Color(0xff172F5D),
                      child: Row(
                        children: [
                           Padding(
                             padding: const EdgeInsets.only(left:18.0),
                             child: Container(
                               width:MediaQuery.of(context).size.width/6,
                               height: MediaQuery.of(context).size.height/14,

                          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.white
              ),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left:8.0),
                                child: Text("Session 1"),
                              ),
                              Spacer(),
                              Padding(
                                padding: const EdgeInsets.only(right:8.0),
                                child: Icon(Icons.close),
                              )
                            ],
                          ),
                    ),
                           ),
                           Padding(
                             padding: const EdgeInsets.only(left:18.0),
                             child: Container(
                                 
                                 height: MediaQuery.of(context).size.height/14,
width: 50.0,
                          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.white
              ),
                          child: Icon(Icons.add)
                    ),
                           ),
                           Spacer(),
                           Padding(
                             padding: const EdgeInsets.only(right:18.0),
                             child: Container(
                                 
                                 height: MediaQuery.of(context).size.height/14,
width: 50.0,
                          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.white
              ),
                          child: Icon(Icons.search)
                    ),
                           ),

                        ],
                      ),
                    ),
                     Padding(
                       padding: const EdgeInsets.only(top:10.0),
                       child: Container(
                        
                          height: MediaQuery.of(context).size.height/12,
                        width: MediaQuery.of(context).size.width,

                         child: TabBar(
                           
                         unselectedLabelColor: Colors.black,
                indicatorSize: TabBarIndicatorSize.label,
                indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Color(0xffD59C5D)),
                    tabs: [
                      
                           Tab(
                             
                    child: Container(
                          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              border: Border.all(color: Color(0xffD59C5D), width: 1)),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text("Fruits"),
                          ),
                    ),
                  ),
                          Tab(
                    child: Container(
                          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              border: Border.all(color: Color(0xffD59C5D), width: 1)),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text("Vegetabels"),
                          ),
                    ),
                  ),
                    Tab(
                    child: Container(
                          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              border: Border.all(color: Color(0xffD59C5D), width: 1)),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text("Nuts"),
                          ),
                    ),
                  ),
                         Tab(
                    child: Container(
                          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              border: Border.all(color: Color(0xffD59C5D), width: 1)),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text("Spinich"),
                          ),
                    ),
                  ),
                    ],
                    
                ),
                       ),
                     ),
                     Container(
                       height: MediaQuery.of(context).size.height*0.6,
                     width:  MediaQuery.of(context).size.width,
                     child: TabBarView(
                       children: [
                       SubCat(
                         name: "Fruits"
                       ),
                       SubCat(
                         name: "Vegetabels"
                       ),
                       SubCat(
                         name: "Nuts"
                       ),
                       SubCat(
                         name: "Spinich"
                       ),
                       
                     ],),
                     )
                


                  ],
                ),
            ),
          ),
          Expanded(
            flex: 3,
            child: SingleChildScrollView(
                            child: Column(
                children: [
                  Padding(
                   padding: const EdgeInsets.only(top:10.0),
                   child: ElevatedButton(
      child: Text(
        "Cancel Order",
        style: TextStyle(fontSize: 14)
      ),
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
        backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
            side: BorderSide(color: Colors.black)
          )
        )
      ),
      onPressed: () {
        
      }
    ),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(top:18.0),
                   child: Text("Checkout",style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(top:18.0),
                   child: Container(
                     width:MediaQuery.of(context).size.width/5 ,
                     child: Text("Scan or add items from the products page",textAlign: TextAlign.center, style: TextStyle(color: Colors.grey),)),
                 ),
                 ListView.separated(
                   separatorBuilder: (_, __) => Divider(height: 0.5),
                   shrinkWrap: true,
                   itemCount: 5,
                   itemBuilder:(context, index){
                     return Column(
                       children: [
                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             Padding(
                               padding: const EdgeInsets.only(left:8.0),
                               child: Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   Text("Apples",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey,fontSize: 18.0),),
                                   Text("1x 2.50 AED/per unit"),
                                  
                                 ],
                               ),
                             ),
                             Padding(
                               padding: const EdgeInsets.only(right:8.0),
                               child: Text("2.52AED",style: TextStyle(fontSize: 18.0),),
                             ),
                            

                           ],
                         ),
                        

                       ],
                     );
                   } ),
                    SizedBox(height: 10.0),
                         Padding(
                           padding: const EdgeInsets.only(left:8.0, right:8.0),
                           child: Divider(height: 1.0),
                         ),
                         SizedBox(height: 20.0),
                         Padding(
                           padding: const EdgeInsets.only(left:8.0, right:8.0),
                           child: Divider(height: 5.0,thickness: 3.0,),
                         ),
                         Padding(
                           padding: const EdgeInsets.only(top:5.0, left:18.0, right: 18.0),
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                               Text("Taxes"),
                               Text("1.25AED",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18.0))
                             ],
                           ),
                         ),
                         Padding(
                           padding: const EdgeInsets.only(top:5.0, left:18.0, right: 18.0),
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                               Text("Taxes"),
                               Text("1.25AED",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18.0))
                             ],
                           ),
                         ),
                         Padding(
                   padding: const EdgeInsets.only(top:10.0),
                   child: ElevatedButton(
      child: Text(
        "Payment",
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
       
      }
    ),
                 )


                ],
              ),
            ))
        ],
          
        ),
      ),
    );
  }
}
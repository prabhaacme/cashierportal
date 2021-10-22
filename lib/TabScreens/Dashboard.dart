import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:tab_indicator_styler/tab_indicator_styler.dart';
import 'package:testproject/Provider/DashBoardProvider.dart';
import 'package:testproject/TabScreens/CustomTabView.dart';
import 'package:testproject/TabScreens/DashBoardBilling.dart';
import 'package:testproject/TabScreens/SubCat.dart';
import 'package:testproject/Utils/AppColors.dart';
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
    DashboardProvider dashboardData =
        Provider.of<DashboardProvider>(context, listen: false);
        int initPosition = 1;
    var size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 4,
          child: Scaffold(
            body: Row(

        children: [
          Expanded(
            flex: 7,
                  child: Container(
             
              child: SingleChildScrollView(
                physics: NeverScrollableScrollPhysics(),
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
                        padding: const EdgeInsets.only(top:8.0),
                        child: Container(
                          height: size.height,
                         
                          child: FutureBuilder(
                            future:dashboardData.getDashboardDetails(),
                            builder: (context, snapshot){
                              if(snapshot.connectionState == ConnectionState.done){
                                if(snapshot.data == false){
                                  return Center(
                                    child:Text(
                                    "No Record Found"));

                                }else{
                                  
                                  return CustomTabView(
                                    
            initPosition: 0,
            itemCount: dashboardData.dashboardModel!.data.categoryData.length,
            tabBuilder: (context, index) => Container(
              width: 160.0,
              height: 40.0,
                decoration: BoxDecoration(
                   border: Border.all(color: Color(0xffD59C5D), width: 2),
                   borderRadius: BorderRadius.circular(50),
                     
                ),
                child: Tab(text:dashboardData.dashboardModel!.data.categoryData[index].categoryName)),
            pageBuilder: (context, index){


return SubCat(
  categoryid: dashboardData.dashboardModel!.data.categoryData[index].id,
  product: dashboardData.dashboardModel!.data.productData,
);
            

            },
            
            onPositionChange: (index){
                print('current position: $index');
                initPosition = index;
            },
            onScroll: (position) => print('$position'),
          );
                                }
                              }else{
                                return Center(
                                  child: CircularProgressIndicator(
                                    color: AppColors.baseColor,
                                  )
                                );
                              }
                            },
                          ),
                        ),
                      )
                       
                       
                  


                    ],
                  ),
              ),
            ),
          ),
          DashboardBilling(),
          
        ],
          
        ),
      ),
    );
  }
}
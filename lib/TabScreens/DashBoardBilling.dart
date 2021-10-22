import 'package:flutter/material.dart';

class DashboardBilling extends StatefulWidget {
  @override
  _DashboardBillingState createState() => _DashboardBillingState();
}

class _DashboardBillingState extends State<DashboardBilling> {
  @override
  Widget build(BuildContext context) {
    var size= MediaQuery.of(context).size;
    return Container(
            height: size.height,
            width: 300.0,
            child: SingleChildScrollView(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
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
            ),
          );
  }
}
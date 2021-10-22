import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:testproject/Models/DashBoardModel.dart';

class SubCat extends StatefulWidget {
  final int ?categoryid ;
  final List<ProductData> ?product;

  SubCat({
    this.categoryid,
    this.product
  });
  @override
  _SubCatState createState() => _SubCatState();
}

class _SubCatState extends State<SubCat> {
   List<String> images = [  
   "assets/image6.png",
   "assets/image6.png",
   "assets/image6.png",
   "assets/image6.png"  
  ];
  List<ProductData> ?filterData=[];

 
  getFilterData(){
widget.product?.forEach((element){
if(element.categoryId != widget.categoryid){
  return null;
}else{
 setState(() {
    filterData!.add(element);
  });
  
}
   });
  }
  @override
  void initState() {
    filterData!.clear();
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
   
    return FutureBuilder(
      future:getFilterData(),
      builder: (context, snapshot){
        if(snapshot.data != null){
         return Center(child: Text("No Record Found"));         
        }else{
          print(false);
          return Padding(
            padding: const EdgeInsets.only(top:18.0),
            child: GridView.builder(  
      physics: ScrollPhysics(),
      itemCount: filterData!.length,  
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(  
            crossAxisCount: 3,  
            crossAxisSpacing: 4.0,  
            mainAxisSpacing: 4.0  
      ),  
      itemBuilder: (BuildContext context, int index){  
        return Card(
            elevation: 5.0,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 150.0,
                  width: 150.0,
                  child: Image.network(filterData![index].productImages),
                
                ),
                  Text(filterData![index].productName)
              ],
            ));  
      },  
    ),
          );
        }
      },
    );
      
  }
}



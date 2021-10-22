import 'package:flutter/material.dart';

class SubCat extends StatefulWidget {
  final String ?name;

  SubCat({
    this.name
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
  @override
  Widget build(BuildContext context) {
    return GridView.builder(  
      itemCount: images.length,  
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
              Container(child: Image.asset(images[index]),
              
              ),
              Text(widget.name!)
            ],
          ));  
      },  
    );
      
  }
}



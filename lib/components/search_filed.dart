import 'package:flutter/material.dart';

class SearchFiled extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
       double defultHight =MediaQuery.of(context).size.height;
       double defultWidth =MediaQuery.of(context).size.width;
    return Container
    (
      height: defultHight*0.08,
      width: defultWidth*0.8,
     decoration: BoxDecoration(
      color: Colors.white.withOpacity(0.1),
      borderRadius: BorderRadius.circular(20)
     ),
     child:  Row(
      children: [
         SizedBox(width: 10,),
      Expanded(
            child: TextField(
              style: TextStyle(fontSize: defultHight<660?13:18,color: Colors.white),
              
             decoration : const InputDecoration(
              icon: Icon(Icons.search,color: Colors.white,),
              enabledBorder: OutlineInputBorder(borderSide: BorderSide.none),
              focusedBorder: OutlineInputBorder(borderSide:  BorderSide.none)
              ),
            ),
          ),
      
      ],
     ),
    );
  }
}

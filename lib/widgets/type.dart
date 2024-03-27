import 'package:flutter/material.dart';
import 'package:newsfinal/models/typeclass.dart';

class Type extends StatelessWidget {
    const Type({super.key,required this.type});
  final Types type;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Container(
        height: 120,
        width: 160,
        decoration: BoxDecoration(
          
          color: Colors.red,
          borderRadius: BorderRadius.circular(16),
           image:  DecorationImage(image: AssetImage(type.typepic),
          fit: BoxFit.cover),
        ),
        child : Center(child: Text(type.typename,style: const TextStyle(
          color: Colors.white,
        ),)),
    
      ),
    );
  }
}
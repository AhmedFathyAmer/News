import 'package:flutter/material.dart';
import 'package:newsfinal/models/typeclass.dart';
import 'package:newsfinal/widgets/type.dart';

class TypeListBuild extends StatelessWidget {
  const TypeListBuild({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
         physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
            itemCount: types.length,
            itemBuilder: (BuildContext context, int index) {
              return Type(type: types[index], );
            },
          ),
    );
  }
} 

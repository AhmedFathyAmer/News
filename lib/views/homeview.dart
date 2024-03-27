import 'package:flutter/material.dart';
import 'package:newsfinal/lists/newslist.dart';
import 'package:newsfinal/lists/typeslist.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
             Text('Stay',style: TextStyle(
              fontSize: 19,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),),
            Text('Live',style: TextStyle(
              color: Colors.red,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),),
          ],
        ) ,

        ),
        body: const CustomScrollView(
          physics: BouncingScrollPhysics( ),
          slivers: [
            SliverToBoxAdapter(child: TypeListBuild(),),
            SliverToBoxAdapter(child: SizedBox(height: 5,),),
           SliverToBoxAdapter(child: NewsListBuild(),),

          ],

        ),

    );
  }
}
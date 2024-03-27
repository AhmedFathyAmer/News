// import 'package:flutter/material.dart';
// import 'package:newsfinal/models/newsclass.dart';

// class News extends StatelessWidget {
//   const News({super.key, required this.newsClass});
//   final NewsClass newsClass;

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Column(
//         children: [
//           Container(
//             width: 333,
//             height: 200,
//             decoration: BoxDecoration(
//               color: Colors.black,
//               borderRadius: BorderRadius.circular(12.0),
//               image: const DecorationImage(
//                 image: NetworkImage(newsClass.image!),
//                 fit: BoxFit.fill,
//               ),
//             ),
     
//           ),
//           Container(
//             padding: const EdgeInsets.all(8.0),
//             color: Colors.black.withOpacity(0.2),
//             child: const Column(
//               children: [
//                 Text(
//                   newsClass.title!,
//                   style: TextStyle(
//                     color: Colors.red,
//                     fontSize: 16.0,
//                     fontWeight: FontWeight.bold,
//                   ),
//                   textAlign: TextAlign.center,
//     ),
//     Text(newsClass.subtitle!,style: TextStyle(
//       color: Colors.black,
//     ),),
//               ],
//             ),
//           ),
//         ],),);
// }}


import 'package:flutter/material.dart';
import 'package:newsfinal/models/newsclass.dart';

class News extends StatelessWidget {
  const News({Key? key, required this.newsClass}) : super(key: key);
  final NewsClass newsClass;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            width: 333,
            height: 200,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(12.0),
              image: newsClass.image != null
                  ? DecorationImage(
                      image: NetworkImage(newsClass.image!), // Check for nullability
                      fit: BoxFit.fill,
                    )
                  : null,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            color: Colors.black.withOpacity(0.2),
            child: Column(
              children: [
                Text(
                  newsClass.title ?? '', // Handle nullability
                  style: const TextStyle(
                    color: Colors.red,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  newsClass.subtitle ?? '',
                  style: const TextStyle(
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:newsfinal/api/receivedata.dart';
// import 'package:newsfinal/models/newsclass.dart';
// import 'package:newsfinal/widgets/news.dart';

// class NewsListBuild extends StatefulWidget {
//   const NewsListBuild({super.key});

//   @override
//   State<NewsListBuild> createState() => _NewsListBuildState();
// }

// class _NewsListBuildState extends State<NewsListBuild> {
//   List<NewsClass>finRes=[];
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     fetchData();
//   }
//    Future<void> fetchData() async {
//     finRes = await fetchData(Dio()).fetchData();
//     setState(() {});
//   }
//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       shrinkWrap: true,
//          physics: const NeverScrollableScrollPhysics(),
//           scrollDirection: Axis.vertical,
//             itemCount: 10,
//             itemBuilder: (BuildContext context, int index) {
//               return   News(newsClass: finRes[index],);
//             },
//           );
//   }
// }


import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:newsfinal/api/receivedata.dart';
import 'package:newsfinal/models/newsclass.dart';
import 'package:newsfinal/widgets/news.dart';

class NewsListBuild extends StatefulWidget {
  const NewsListBuild({Key? key}) : super(key: key);

  @override
  State<NewsListBuild> createState() => _NewsListBuildState();
}

class _NewsListBuildState extends State<NewsListBuild> {
  List<NewsClass> finRes = [];

  @override
  void initState() {
    super.initState();
    fetchDataFromAPI();
  }

  Future<void> fetchDataFromAPI() async {
    try {
      finRes = await ReceivedData(Dio()).fetchData();
      setState(() {});
    } catch (error) {
      print('Error fetching data: $error');
      // Handle error accordingly
    }
  }

  @override
  Widget build(BuildContext context) {
    return finRes.isEmpty
        ? CircularProgressIndicator() // Display a loading indicator while fetching data
        : ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            itemCount: finRes.length,
            itemBuilder: (BuildContext context, int index) {
              return News(newsClass: finRes[index]);
            },
          );
  }
}

class ReceivedData {
  ReceivedData(Dio dio);
  
  fetchData() {}
}

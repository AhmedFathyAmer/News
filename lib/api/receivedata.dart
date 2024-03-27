
// final dio = Dio();
// void request() async {
//   Response response;
//   response = await dio.get('https://newsapi.org/v2/everything?q=bitcoin&apiKey=a0b5eff274ea45469c4d4375496ec073');
//   print(response.data);
// }

// import 'package:dio/dio.dart';
// import 'package:newsfinal/models/newsclass.dart';

// Future<List<NewsClass>> fetchData() async {
//   Dio dio = Dio();

//   try {
//     Response response = await dio.get('https://newsapi.org/v2/everything?q=bitcoin&apiKey=a0b5eff274ea45469c4d4375496ec073');
//     if (response.statusCode == 200) {
//       // Request successful, handle response data
//      Map<String,dynamic> jsonData = response.data;
//      List<String> articles = jsonData['articles'];
//      int mhms = jsonData['totalResults'];
//      print(mhms);
//      List<NewsClass>finRes =[];
//      for (var article in articles)
//      {
//       NewsClass newsClass = NewsClass(
//         title: article['title'], 
//       image: article['urlToImage'], 
//       subtitle: article['description'],
//       );
//       finRes.add(newsClass);
//      }
//      return finRes;

//     } else {
//       // Handle other status codes
//       print('Request failed with status: ${response.statusCode}');
//     }
//   } catch (error) {
//     print('Error occurred: $error');
//     // Handle error
//   }
// }




// import 'package:dio/dio.dart';
// import 'package:newsfinal/models/newsclass.dart';

// Future<List<NewsClass>> fetchData(Dio dio) async {
//   Dio dio = Dio();

//   try {
//     Response response = await dio.get('https://newsapi.org/v2/everything?q=bitcoin&apiKey=a0b5eff274ea45469c4d4375496ec073');
//     if (response.statusCode == 200) {
//       Map<String, dynamic> jsonData = response.data;
//       List<dynamic> articles = jsonData['articles'];
//       int totalResults = jsonData['totalResults']; // Assuming it's an integer

//       print('Total Results: $totalResults');

//       List<NewsClass> finRes = [];
//       for (var article in articles) {
//         NewsClass newsClass = NewsClass(
//           title: article['title'],
//           image: article['urlToImage'],
//           subtitle: article['description'],
//         );
//         finRes.add(newsClass);
//       }

//       return finRes; // Return the list of NewsClass objects
//     } else {
//       // Handle other status codes
//       print('Request failed with status: ${response.statusCode}');
//       return []; // Return an empty list in case of failure
//     }
//   } catch (error) {
//     print('Error occurred: $error');
//     // Handle error
//     return []; // Return an empty list in case of error
//   }
// }




import 'package:dio/dio.dart';
import 'package:newsfinal/models/newsclass.dart';

class ReceivedData {
  final Dio dio;

  ReceivedData(this.dio);

  Future<List<NewsClass>> fetchData() async {
    try {
      Response response = await dio.get('https://your-api-url.com/news');
      if (response.statusCode == 200) {
        List<dynamic> responseData = response.data['articles'];
        List<NewsClass> newsList = responseData
            .map((article) => NewsClass(
                  title: article['title'],
                  image: article['urlToImage'],
                  subtitle: article['description'],
                ))
            .toList();

        return newsList;
      } else {
        throw Exception('Failed to load data');
      }
    } catch (error) {
      throw Exception('Error fetching data: $error');
    }
  }
}

import 'dart:convert';

import 'package:http/http.dart' as http;

import 'api_model.dart';

class APIService {
  Future<List<APIIntegrationModel>> fetchPosts() async {
    try {
      final response = await http.get(
        Uri.parse('https://jsonplaceholder.typicode.com/posts'),
      );

      if (response.statusCode == 200) {
        List<dynamic> data = json.decode(response.body);
        return data.map((json) => APIIntegrationModel.fromJson(json)).toList();
      } else {
        throw Exception('Failed to load posts');
      }
    } catch (error) {
      throw Exception('Error fetching posts: $error');
    }
  }
}

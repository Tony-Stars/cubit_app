import 'dart:convert';

import 'package:cubit_app/post.dart';
import 'package:http/http.dart' as http;

const _baseUrl = 'jsonplaceholder.typicode.com';

class NetService {
  final _endpointUrl = 'posts';

  Future<List<Post>> fetchPosts() async {
    try {
      final uri = Uri.https(_baseUrl, _endpointUrl);
      final response = await http.get(uri);
      final json = jsonDecode(response.body) as List;
      final posts = json.map((jsonPost) => Post.fromJson(jsonPost)).toList();
      return posts;
    } catch (e) {
      rethrow;
    }
  }
}

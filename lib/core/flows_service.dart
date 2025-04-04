import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:preload_video/core/product_env.dart';

class FlowsService {
  FlowsService._();

  static final FlowsService instance = FlowsService._();

  Future<Map<String, dynamic>> explore(int page) async {
    final response = await http.post(
      Uri.parse(ProductEnv.baseUrl),
      headers: {
        'Accept': '*/*',
        'Content-Type': 'application/json',
      },
      body: jsonEncode({'id': 93, 'page': page}),
    );

    if (response.statusCode == 200) {
      final responseBody =
          jsonDecode(response.body) as Map<String, dynamic>;
      return responseBody;
    } else {
      throw Exception('Failed to load data');
    }
  }
}

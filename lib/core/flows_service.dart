import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:preload_video/core/product_env.dart';
import 'package:preload_video/model/video_item_model.dart';

class FlowsService {
  FlowsService._();

  static final FlowsService instance = FlowsService._();

  Future<List<VideoItemModel>> explore(int page) async {
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
      if (responseBody['success'] == true) {
        final resultList = responseBody['result'] as List<dynamic>;
        return resultList
            .map((e) => VideoItemModel.fromJson(e as Map<String, dynamic>))
            .toList();
      } else {
        throw Exception('API success false: ${responseBody['message']}');
      }
    } else {
      throw Exception('HTTP error: ${response.statusCode}');
    }
  }
}

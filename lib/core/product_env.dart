import 'package:flutter_dotenv/flutter_dotenv.dart';

final class ProductEnv {
  static String get baseUrl => dotenv.env['BASE_URL']!;
  static String get baseGetVideo => dotenv.env['BASE_GET_VIDEO']!;
}

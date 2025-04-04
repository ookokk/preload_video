import 'package:preload_video/core/product_env.dart';

class VideoUrlFunction {
  String build(int userId, String video) {
    return '${ProductEnv.baseGetVideo}/$userId/$video';
  }
}

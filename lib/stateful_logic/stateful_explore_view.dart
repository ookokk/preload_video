import 'package:flutter/material.dart';
import 'package:preload_video/model/video_url_function.dart';
import 'package:preload_video/riverpod/view/video_widget.dart';
import 'package:preload_video/stateful_logic/explore_mixin.dart';

class StatefulExploreView extends StatefulWidget {
  const StatefulExploreView({super.key});

  @override
  State<StatefulExploreView> createState() => _StatefulExploreViewState();
}

class _StatefulExploreViewState extends State<StatefulExploreView>
    with ExploreMixin {
  @override
  Widget build(BuildContext context) {
    final pageController = PageController();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: PageView.builder(
        onPageChanged: (index) async {
          if (index > currentIndex) {
            playNext(index);
          } else {
            playPrevious(index);
          }
          print(
              'OSMAN: ${VideoUrlFunction().build(videoModelsList[index].userId, videoModelsList[index].mediaURL)}');
          currentIndex = index;
        },
        controller: pageController,
        itemCount: videoModelsList.length,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return VideoWidget(
            videoController: controllersList[index],
            videoModel: videoModelsList[index],
            photo: videoModelsList[index].photo,
          );
        },
      ),
    );
  }
}

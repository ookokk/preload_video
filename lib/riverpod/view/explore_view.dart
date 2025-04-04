// ignore_for_file: invalid_use_of_protected_member, invalid_use_of_visible_for_testing_member

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:preload_video/model/video_state.dart';
import 'package:preload_video/model/video_status_model.dart';
import 'package:preload_video/riverpod/view/video_widget.dart';
import 'package:preload_video/riverpod/view_model/explore_view_model.dart';

class ExploreView extends ConsumerWidget {
  const ExploreView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageController = PageController();
    final pageKey = ValueNotifier(0);
    final exploreViewFuture = ref.watch(exploreFutureProvider(null));

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: exploreViewFuture.when(
        data: (_) {
          return Consumer(builder: (context, listen, child) {
            final exploreVm = listen.watch(exploreProvider);
            final videoModels = exploreVm.videoModelsList;

            if (videoModels.isEmpty) {
              return const Center(child: Text('Veri Bulunamadı'));
            }

            return PageView.builder(
              onPageChanged: (index) async {
                final viewModel = ref.read(exploreProvider.notifier);
                final currentIndex = index;

                if (currentIndex == 3 &&
                    viewModel.state.exploreApiIndex > 1) {
                  await viewModel.fetchAndAppend(
                      viewModel.state.exploreApiIndex - 1,
                      prepend: true);
                  viewModel.state = viewModel.state.copyWith(
                    exploreApiIndex: viewModel.state.exploreApiIndex - 1,
                  );
                } else if (currentIndex == 12) {
                  await viewModel
                      .fetchAndAppend(viewModel.state.exploreApiIndex + 1);
                  viewModel.state = viewModel.state.copyWith(
                    exploreApiIndex: viewModel.state.exploreApiIndex + 1,
                  );
                }

                if (index > pageKey.value) {
                  viewModel.playNext(index);
                } else {
                  viewModel.playPrevious(index);
                }

                ref.read(videoStateProvider.notifier).changeState(
                      const VideoStatusModel(
                          videoStatus: VideoStatus.pause),
                    );
              },
              controller: pageController,
              itemCount: videoModels.length,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                return VideoWidget(
                  videoController: exploreVm.videoControllersList[index],
                  videoModel: videoModels[index],
                  photo: videoModels[index].photo,
                );
              },
            );
          });
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stackTrace) {
          return const Center(child: Text('An error occurred'));
        },
      ),
    );
  }
}

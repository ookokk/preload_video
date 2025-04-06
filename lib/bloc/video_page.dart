import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:preload_video/bloc/preload_cubit.dart';
import 'package:preload_video/bloc/preload_state.dart';
import 'package:preload_video/riverpod/view/video_widget.dart';

class VideoPage extends StatelessWidget {
  const VideoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => PreloadCubit(),
      child: BlocBuilder<PreloadCubit, PreloadState>(
        builder: (context, state) {
          return PageView.builder(
            itemCount: state.videos.length,
            scrollDirection: Axis.vertical,
            onPageChanged: (index) {
              context.read<PreloadCubit>().onPageChanged(index);
            },
            itemBuilder: (context, index) {
              return state.focusedIndex == index
                  ? VideoWidget(
                      videoController: state.controllers[index],
                      videoModel: state.videos[index],
                      photo: state.videos[index].photo,
                    )
                  : const SizedBox();
            },
          );
        },
      ),
    );
  }
}

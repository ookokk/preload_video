// ignore_for_file: inference_failure_on_instance_creation
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:preload_video/bloc/video_page.dart';
import 'package:preload_video/core/flows_service.dart';
import 'package:preload_video/riverpod/view/explore_view.dart';
import 'package:preload_video/stateful_logic/stateful_explore_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}

class HomeView extends ConsumerWidget {
  const HomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () async {
                  await Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const ExploreView()));
                },
                child: const Text('riverpod')),
            const SizedBox(height: 50),
            TextButton(
                onPressed: () async {
                  await Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const VideoPage()));
                },
                child: const Text('bloc')),
            const SizedBox(height: 50),
            TextButton(
                onPressed: () async {
                  await Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const StatefulExploreView()));
                },
                child: const Text('stateful')),
            // VideoPage(),
          ],
        ),
      ),
      appBar: AppBar(
        actions: [
          TextButton(
              onPressed: () async {
                final res = await FlowsService.instance.explore(0);
                print(res);
              },
              child: const Text('press'))
        ],
      ),
    );
  }
}

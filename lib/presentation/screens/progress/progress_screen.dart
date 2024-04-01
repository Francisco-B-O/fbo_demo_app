import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {
  const ProgressScreen({super.key});
  static const String name = 'progress_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Progress Indicators'),
      ),
      body: const ProgressView(),
    );
  }
}

class ProgressView extends StatelessWidget {
  const ProgressView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Text('Circular progress indicator'),
          SizedBox(
            height: 10,
          ),
          CircularProgressIndicator(
            strokeWidth: 2,
            backgroundColor: Colors.black26,
          ),
          SizedBox(
            height: 20,
          ),
          Text('Circular progress and controlled linear'),
          SizedBox(
            height: 10,
          ),
          _ControllerProgresIndicator()
        ],
      ),
    );
  }
}

class _ControllerProgresIndicator extends StatelessWidget {
  const _ControllerProgresIndicator();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: Stream.periodic(const Duration(milliseconds: 100), (value) {
          return (value * 3) / 100;
        }).takeWhile((value) => value < 100),
        builder: (context, snapshot) {
          final progressValue = snapshot.data ?? 0;
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircularProgressIndicator(
                  value: progressValue,
                  strokeWidth: 2,
                  backgroundColor: Colors.black26,
                ),
                Expanded(child: LinearProgressIndicator(value: progressValue))
              ],
            ),
          );
        });
  }
}

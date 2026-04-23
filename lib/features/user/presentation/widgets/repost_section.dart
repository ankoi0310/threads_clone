import 'package:flutter/material.dart';
import 'package:threads_clone/features/feed/domain/entities/post.dart';
import 'package:threads_clone/features/feed/presentation/widgets/post_widget.dart';

class RepostSection extends StatelessWidget {
  const RepostSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: repostMockData.map((post) {
          return PostWidget(post: post);
        }).toList(),
      ),
    );
  }
}

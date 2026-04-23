import 'package:flutter/material.dart';
import 'package:threads_clone/core/gen/assets.gen.dart';
import 'package:threads_clone/core/shared/extensions/build_context_extension.dart';

class Avatar extends StatelessWidget {
  const Avatar({this.imageUrl, this.radius = 32, super.key});

  final String? imageUrl;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      child: imageUrl == null
          ? Padding(
              padding: const EdgeInsets.all(12),
              child: Assets.images.logo.image(
                color: context.colors.primary,
              ),
            )
          : Image.network(imageUrl!),
    );
  }
}

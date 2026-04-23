import 'package:flutter/material.dart';
import 'package:threads_clone/core/shared/extensions/build_context_extension.dart';
import 'package:threads_clone/core/shared/widgets/avatar.dart';

class OverviewWidget extends StatelessWidget {
  const OverviewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const .symmetric(horizontal: 12),
      child: Column(
        crossAxisAlignment: .stretch,
        spacing: 12,
        children: [
          Row(
            mainAxisAlignment: .spaceBetween,
            crossAxisAlignment: .end,
            children: [
              Padding(
                padding: const .only(bottom: 8),
                child: Column(
                  crossAxisAlignment: .start,
                  children: [
                    Text('Koi', style: context.textTheme.titleLarge),
                    Text(
                      'ankoi.0310',
                      style: context.textTheme.bodySmall,
                    ),
                  ],
                ),
              ),
              const Avatar(
                imageUrl: 'https://robohash.org/ankoi0310',
              ),
            ],
          ),
          const Text(
            "My name is not fish or milk tea, it's just Koi",
          ),
          Row(
            children: [
              Row(
                children: [
                  Transform.translate(
                    offset: Offset.zero,
                    child: Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                        shape: .circle,
                        color: Colors.white,
                        border: Border.all(
                          color: context.colors.surface,
                          width: 2,
                        ),
                      ),
                      child: Image.network('https://robohash.org/a'),
                    ),
                  ),
                  Transform.translate(
                    offset: const Offset(-8, 0),
                    child: Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                        shape: .circle,
                        color: Colors.white,
                        border: Border.all(
                          color: context.colors.surface,
                          width: 2,
                        ),
                      ),
                      child: Image.network('https://robohash.org/a'),
                    ),
                  ),
                  Transform.translate(
                    offset: const Offset(-16, 0),
                    child: Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                        shape: .circle,
                        color: Colors.white,
                        border: Border.all(
                          color: context.colors.surface,
                          width: 2,
                        ),
                      ),
                      child: Image.network('https://robohash.org/a'),
                    ),
                  ),
                ],
              ),
              Transform.translate(
                offset: const Offset(-12, 0),
                child: Text(
                  '21 người theo dõi',
                  style: context.textTheme.labelMedium!.copyWith(
                    color: context.colors.onSurfaceVariant,
                  ),
                ),
              ),
            ],
          ),
          Row(
            spacing: 12,
            children: [
              Expanded(
                child: OutlinedButton(
                  onPressed: () {},
                  child: Text(
                    'Chỉnh sửa trang cá nhân',
                    style: context.textTheme.labelMedium!.copyWith(
                      fontWeight: .bold,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: OutlinedButton(
                  onPressed: () {},
                  child: Text(
                    'Chia sẻ trang cá nhân',
                    style: context.textTheme.labelMedium!.copyWith(
                      fontWeight: .bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

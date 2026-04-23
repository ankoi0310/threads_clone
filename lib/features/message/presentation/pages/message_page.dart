import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:threads_clone/core/shared/extensions/build_context_extension.dart';
import 'package:threads_clone/core/shared/utils/show_snack_bar.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({super.key});

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          spacing: 8,
          children: [
            const Text('Tin nhắn'),
            GestureDetector(
              onTap: () {
                showSnackBar(
                  context,
                  content: 'Show turn on notification',
                );
              },
              child: const Icon(
                Icons.notifications_off_outlined,
                size: 28,
              ),
            ),
          ],
        ),
        actions: const [Icon(Iconsax.edit_copy)],
      ),
      body: CustomScrollView(
        controller: _scrollController,
        shrinkWrap: true,
        slivers: [
          SliverAppBar(
            floating: true,
            snap: true,
            elevation: 0,
            scrolledUnderElevation: 0,
            toolbarHeight: 50,
            title: TextField(
              decoration: InputDecoration(
                hintText: 'Tìm kiếm',
                filled: true,
                fillColor: context.colors.outline,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: .circular(16),
                ),
                prefixIcon: const Icon(
                  Iconsax.search_normal_copy,
                  size: 16,
                ),
                contentPadding: .zero,
                isDense: true,
              ),
            ),
          ),
          SliverPersistentHeader(
            pinned: true,
            delegate: _FilterRowDelegate(child: _FilterRow()),
          ),
          SliverFillRemaining(
            child: Column(
              mainAxisAlignment: .center,
              spacing: 16,
              children: [
                Column(
                  spacing: 4,
                  children: [
                    SizedBox(
                      width: context.width * .4,
                      child: Text(
                        'Không bỏ lỡ tin nhắn nào',
                        textAlign: .center,
                        style: context.textTheme.titleLarge,
                      ),
                    ),
                    SizedBox(
                      width: context.width * .5,
                      child: Text(
                        'Bật thông báo về hộp thư mới.',
                        textAlign: .center,
                        style: context.textTheme.bodyMedium?.copyWith(
                          color: context.colors.onPrimaryContainer,
                        ),
                      ),
                    ),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Bật thông báo'),
                ),
              ],
            ),
          ),
          // SliverList.builder(
          //   itemCount: 30,
          //   itemBuilder: (context, index) =>
          //       ListTile(title: Text('Item $index')),
          // ),
        ],
      ),
    );
  }
}

class _FilterRowDelegate extends SliverPersistentHeaderDelegate {
  const _FilterRowDelegate({required this.child});

  final Widget child;

  @override
  double get maxExtent => 52;

  @override
  double get minExtent => 52;

  @override
  bool shouldRebuild(
    covariant SliverPersistentHeaderDelegate oldDelegate,
  ) => true;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: context.colors.surface,
        border: Border(
          bottom: BorderSide(
            color: overlapsContent
                ? context.colors.outline
                : Colors.transparent,
          ),
        ),
      ),
      child: child,
    );
  }
}

class _FilterRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: .horizontal,
      padding: const .symmetric(horizontal: 16, vertical: 8),
      physics: const NeverScrollableScrollPhysics(),
      children: [
        GestureDetector(
          onTap: () {},
          child: Container(
            padding: const .symmetric(horizontal: 12, vertical: 4),
            decoration: BoxDecoration(
              border: .all(color: context.colors.outline),
              borderRadius: .circular(16),
            ),
            child: const Icon(Iconsax.sort_copy, size: 20),
          ),
        ),
        const SizedBox(width: 4),
        GestureDetector(
          onTap: () {},
          child: Container(
            padding: const .symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: context.colors.outline,
              border: .all(color: context.colors.outline),
              borderRadius: .circular(16),
            ),
            child: Text(
              'Hộp thư',
              style: context.textTheme.bodyMedium?.copyWith(
                color: context.colors.onSurface,
                fontWeight: .bold,
              ),
            ),
          ),
        ),
        const SizedBox(width: 4),
        GestureDetector(
          onTap: () {},
          child: Container(
            padding: const .symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              border: .all(color: context.colors.outline),
              borderRadius: .circular(16),
            ),
            child: Text(
              'Tin nhắn đang chờ',
              style: context.textTheme.titleSmall?.copyWith(
                color: context.colors.onSurface,
                fontWeight: .bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

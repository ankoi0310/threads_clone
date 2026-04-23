import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:threads_clone/core/shared/extensions/build_context_extension.dart';
import 'package:threads_clone/features/user/presentation/widgets/feed_table_section.dart';
import 'package:threads_clone/features/user/presentation/widgets/media_thread_section.dart';
import 'package:threads_clone/features/user/presentation/widgets/overview_widget.dart';
import 'package:threads_clone/features/user/presentation/widgets/reply_thread_section.dart';
import 'package:threads_clone/features/user/presentation/widgets/repost_section.dart';
import 'package:threads_clone/features/user/presentation/widgets/thread_section.dart';

class PersonalPage extends StatefulWidget {
  const PersonalPage({super.key});

  @override
  State<PersonalPage> createState() => _PersonalPageState();
}

class _PersonalPageState extends State<PersonalPage>
    with SingleTickerProviderStateMixin {
  final _scrollController = ScrollController();
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Iconsax.chart_2_copy),
        actionsPadding: const .only(right: 16),
        actions: const [
          Row(
            mainAxisAlignment: .end,
            spacing: 16,
            children: [
              Icon(Iconsax.search_normal_copy),
              Icon(Iconsax.camera_copy),
              Icon(Iconsax.menu_1_copy),
            ],
          ),
        ],
      ),
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          const SliverToBoxAdapter(child: OverviewWidget()),
          SliverPadding(
            padding: const .only(top: 12),
            sliver: SliverPersistentHeader(
              pinned: true,
              delegate: _TabBarDelegate(controller: _tabController),
            ),
          ),
          SliverFillRemaining(
            child: DefaultTabController(
              length: 5,
              child: TabBarView(
                controller: _tabController,
                children: const [
                  ThreadSection(),
                  ReplyThreadSection(),
                  MediaThreadSection(),
                  RepostSection(),
                  FeedTableSection(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _TabBarDelegate extends SliverPersistentHeaderDelegate {
  const _TabBarDelegate({required this.controller});

  final TabController controller;

  @override
  double get maxExtent => 28;

  @override
  double get minExtent => 28;

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
    return TabBar(
      controller: controller,
      isScrollable: true,
      padding: const .only(left: 12, right: 4),
      labelPadding: const .only(right: 8, bottom: 4),
      indicatorWeight: 1,
      indicator: UnderlineTabIndicator(
        borderSide: BorderSide(color: context.colors.primary),
      ),
      labelStyle: context.textTheme.titleMedium?.copyWith(
        fontWeight: .bold,
      ),
      unselectedLabelStyle: context.textTheme.titleMedium?.copyWith(
        color: context.colors.onPrimaryContainer,
        fontWeight: .bold,
      ),
      tabAlignment: .start,
      physics: const AlwaysScrollableScrollPhysics(),
      tabs: const [
        Tab(child: Text('Thread')),
        Tab(child: Text('Câu trả lời')),
        Tab(child: Text('File phương tiện')),
        Tab(child: Text('Bài đăng lại')),
        Tab(child: Text('Bảng feed')),
      ],
    );
  }
}

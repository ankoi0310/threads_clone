import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:threads_clone/core/shared/extensions/build_context_extension.dart';

class MainShellPage extends StatefulWidget {
  const MainShellPage({required this.navigationShell, super.key});

  final StatefulNavigationShell navigationShell;

  @override
  State<MainShellPage> createState() => _MainShellPageState();
}

class _MainShellPageState extends State<MainShellPage> {
  int _currentIndex = 0;
  final ScrollController _scrollController = ScrollController();

  final bool _isNavbarVisible = true;

  void _onTap(int index) {
    if (index == 2) {
      // _showCreatePostSheet();
      return;
    }

    var routerIndex = index;
    if (index > 2) {
      routerIndex = index - 1;
    }

    setState(() {
      _currentIndex = index;
    });

    widget.navigationShell.goBranch(
      routerIndex,
      initialLocation:
          routerIndex == widget.navigationShell.currentIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // navigationShell chính là body chứa các trang Feed, Message...
      body: PrimaryScrollController(
        controller: _scrollController,
        child: widget.navigationShell,
      ),

      bottomNavigationBar: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        height: _isNavbarVisible
            ? kBottomNavigationBarHeight + context.padding.bottom
            : 0,
        child: Wrap(
          children: [
            BottomNavigationBar(
              currentIndex: _currentIndex,
              onTap: _onTap,
              type: BottomNavigationBarType.fixed,
              items: [
                const BottomNavigationBarItem(
                  icon: Icon(Iconsax.home_copy),
                  activeIcon: Icon(Iconsax.home_1),
                  label: 'Feed',
                ),
                const BottomNavigationBarItem(
                  icon: Icon(Iconsax.sms_copy),
                  activeIcon: Icon(Iconsax.sms),
                  label: 'Message',
                ),
                BottomNavigationBarItem(
                  icon: Container(
                    padding: const .symmetric(
                      horizontal: 12,
                      vertical: 8,
                    ),
                    decoration: BoxDecoration(
                      color: context.colors.tertiary,
                      borderRadius: .circular(12),
                    ),
                    child: const Icon(Iconsax.add_copy, size: 28),
                  ),
                  label: 'Add',
                ),
                const BottomNavigationBarItem(
                  icon: Icon(Iconsax.heart_copy),
                  activeIcon: Icon(Iconsax.heart),
                  label: 'Activity',
                ),
                const BottomNavigationBarItem(
                  icon: Icon(Iconsax.user_copy),
                  activeIcon: Icon(Iconsax.user),
                  label: 'Me',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

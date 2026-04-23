import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:threads_clone/core/shared/extensions/build_context_extension.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cài đặt'),
        centerTitle: true,
        titleTextStyle: context.textTheme.titleLarge,
      ),
      body: Column(
        spacing: 4,
        children: [
          Container(
            decoration: BoxDecoration(
              border: BoxBorder.symmetric(
                horizontal: BorderSide(
                  color: context.colors.outline,
                  width: 1.5,
                ),
              ),
            ),
            child: ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: const .symmetric(vertical: 4),
              itemCount: items.length,
              itemBuilder: (context, index) {
                final item = items[index];
                return ListTile(
                  leading: Icon(item.icon),
                  contentPadding: const .symmetric(horizontal: 12),
                  title: Text(item.title),
                );
              },
              separatorBuilder: (context, index) {
                return const SizedBox(height: 4);
              },
            ),
          ),
          Padding(
            padding: const .symmetric(horizontal: 12, vertical: 8),
            child: Column(
              crossAxisAlignment: .stretch,
              spacing: 16,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    'Chuyển trang cá nhân',
                    style: context.textTheme.titleMedium!.copyWith(
                      fontWeight: .bold,
                      color: Colors.blue,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    'Đăng xuất',
                    style: context.textTheme.titleMedium!.copyWith(
                      fontWeight: .bold,
                      color: context.colors.error,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SettingItem {
  const SettingItem({
    required this.icon,
    required this.title,
    this.onTap,
  });

  final IconData icon;
  final String title;
  final VoidCallback? onTap;
}

final List<SettingItem> items = [
  SettingItem(
    icon: Iconsax.user_add_copy,
    title: 'Theo dõi và mời bạn bè',
    onTap: () {},
  ),
  SettingItem(
    icon: Iconsax.notification_copy,
    title: 'Thông báo',
    onTap: () {},
  ),
  SettingItem(
    icon: Iconsax.archive_copy,
    title: 'Đã lưu',
    onTap: () {},
  ),
  SettingItem(
    icon: Iconsax.heart_copy,
    title: 'Đã thích',
    onTap: () {},
  ),
  SettingItem(
    icon: Iconsax.notification_copy,
    title: 'Kho lưu trữ',
    onTap: () {},
  ),
  SettingItem(
    icon: Iconsax.lock_copy,
    title: 'Quyền riêng tư',
    onTap: () {},
  ),
  SettingItem(
    icon: Iconsax.notification_copy,
    title: 'Tuỳ chọn về nội dung',
    onTap: () {},
  ),
  SettingItem(
    icon: Iconsax.user_copy,
    title: 'Trạng thái tài khoản',
    onTap: () {},
  ),
  SettingItem(
    icon: Iconsax.notification_copy,
    title: 'Trợ giúp',
    onTap: () {},
  ),
  SettingItem(
    icon: Iconsax.info_circle_copy,
    title: 'Giới thiệu',
    onTap: () {},
  ),
];

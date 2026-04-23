import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:threads_clone/core/shared/extensions/build_context_extension.dart';

class RepostButton extends StatefulWidget {
  const RepostButton({
    super.key,
    this.initialCount = 0,
    this.initialReposted = false,
    this.onChanged,
  });

  final int initialCount;
  final bool initialReposted;
  final void Function({bool reposted})? onChanged;

  @override
  State<RepostButton> createState() => _RepostButtonState();
}

class _RepostButtonState extends State<RepostButton>
    with SingleTickerProviderStateMixin {
  late bool _reposted;
  late int _count;
  late AnimationController _controller;
  late Animation<double> _scale;

  @override
  void initState() {
    super.initState();
    _reposted = widget.initialReposted;
    _count = widget.initialCount;

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 350),
    );

    // Pop: scale up then spring back
    _scale =
        TweenSequence<double>([
          TweenSequenceItem(
            tween: Tween(begin: 1, end: 1.4),
            weight: 40,
          ),
          TweenSequenceItem(
            tween: Tween(begin: 1.4, end: 0.88),
            weight: 30,
          ),
          TweenSequenceItem(
            tween: Tween(begin: 0.88, end: 1),
            weight: 30,
          ),
        ]).animate(
          CurvedAnimation(parent: _controller, curve: Curves.easeOut),
        );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future<void> _toggle() async {
    setState(() {
      _reposted = !_reposted;
      _count += _reposted ? 1 : -1;
    });
    if (_reposted) await _controller.forward(from: 0);
    widget.onChanged?.call(reposted: _reposted);
  }

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme.onSurface;

    return GestureDetector(
      onTap: _toggle,
      behavior: .opaque,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 6,
          horizontal: 2,
        ),
        child: Row(
          mainAxisSize: .min,
          spacing: 2,
          children: [
            ScaleTransition(
              scale: _reposted
                  ? _scale
                  : const AlwaysStoppedAnimation(1),
              child: AnimatedSwitcher(
                duration: const Duration(milliseconds: 150),
                child: Icon(
                  _reposted
                      ? Iconsax.repeate_one_copy
                      : Iconsax.repeate_music_copy,
                  key: ValueKey(_reposted),
                  size: 22,
                  color: color,
                ),
              ),
            ),
            AnimatedDefaultTextStyle(
              duration: const Duration(milliseconds: 150),
              style: context.textTheme.bodySmall!,
              child: Text('$_count'),
            ),
          ],
        ),
      ),
    );
  }
}

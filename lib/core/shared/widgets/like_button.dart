import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:threads_clone/core/shared/extensions/build_context_extension.dart';

class LikeButton extends StatefulWidget {
  const LikeButton({
    super.key,
    this.initialCount = 0,
    this.initialLiked = false,
    this.onChanged,
  });

  final int initialCount;
  final bool initialLiked;
  final void Function({bool liked})? onChanged;

  @override
  State<LikeButton> createState() => _LikeButtonState();
}

class _LikeButtonState extends State<LikeButton>
    with SingleTickerProviderStateMixin {
  late bool _liked;
  late int _count;
  late AnimationController _controller;
  late Animation<double> _scale;

  @override
  void initState() {
    super.initState();
    _liked = widget.initialLiked;
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
      _liked = !_liked;
      _count += _liked ? 1 : -1;
    });
    if (_liked) await _controller.forward(from: 0);
    widget.onChanged?.call(liked: _liked);
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
              scale: _liked
                  ? _scale
                  : const AlwaysStoppedAnimation(1),
              child: AnimatedSwitcher(
                duration: const Duration(milliseconds: 150),
                child: Icon(
                  _liked ? Iconsax.heart : Iconsax.heart_copy,
                  key: ValueKey(_liked),
                  size: 22,
                  color: _liked ? context.colors.error : color,
                ),
              ),
            ),
            AnimatedDefaultTextStyle(
              duration: const Duration(milliseconds: 150),
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                color: _liked
                    ? context.colors.error
                    : color.withValues(alpha: 0.6),
              ),
              child: Text('$_count'),
            ),
          ],
        ),
      ),
    );
  }
}

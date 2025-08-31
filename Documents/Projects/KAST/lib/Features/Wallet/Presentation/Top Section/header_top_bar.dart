import 'package:flutter/material.dart';

class HeaderTopBar extends StatelessWidget {
  final VoidCallback onSearchTap;
  final VoidCallback? onAvatarTap;
  final ImageProvider? avatarImage;

  const HeaderTopBar({
    super.key,
    required this.onSearchTap,
    this.onAvatarTap,
    this.avatarImage,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //Avatar
        GestureDetector(
          onTap: onAvatarTap,
          child: CircleAvatar(
            radius: 24,
            backgroundColor: Colors.white,
            backgroundImage: avatarImage,
            child: avatarImage == null
                ? const Icon(Icons.person, size: 24, color: Colors.black)
                : null,
          ),
        ),
        const Spacer(),
        //Search
        IconButton(
          onPressed: onSearchTap,
          icon: const Icon(Icons.search_rounded),
          color: Colors.white,
          iconSize: 48,
          splashRadius: 48
        ),
      ],
    );
  }
}
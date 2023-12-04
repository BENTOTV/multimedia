import 'package:flutter/material.dart';

class BadgesNotifikasi extends StatefulWidget {
  const BadgesNotifikasi(
      {super.key, required this.badgeContent, required this.child});
  final Widget child;
  final Widget badgeContent;

  @override
  State<BadgesNotifikasi> createState() => _BadgesNotifikasiState();
}

class _BadgesNotifikasiState extends State<BadgesNotifikasi> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        widget.child,
        Positioned(
          right: 0,
          top: 0,
          child: Container(
            padding: EdgeInsets.all(2),
            decoration: BoxDecoration(
              color: Colors.red, // Customize badge background color
              shape: BoxShape.circle,
            ),
            constraints: BoxConstraints(
              minWidth: 16,
              minHeight: 16,
            ),
            child: Center(
              child: widget.badgeContent,
            ),
          ),
        ),
      ],
    );
  }
}

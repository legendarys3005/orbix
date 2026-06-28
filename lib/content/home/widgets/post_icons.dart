import 'package:flutter/material.dart';

class OrbixPostIcons extends StatelessWidget {
  const OrbixPostIcons({
    super.key,
    this.count,
    this.onCountPressed,
    this.onIconPressed,
    required this.icon,
  });

  final Icon icon;
  final String? count;
  final VoidCallback? onCountPressed;
  final VoidCallback? onIconPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          padding: const EdgeInsets.all(0),
          onPressed: onIconPressed,
          visualDensity: VisualDensity.compact,
          icon: icon,
          iconSize: 20,
        ),
        Visibility(
          visible: count != null,
          child: GestureDetector(
            onTap: onCountPressed,
            child: Text(count ?? "", style: TextStyle(fontSize: 14)),
          ),
        ),
      ],
    );
  }
}

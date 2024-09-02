import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustemWidget extends StatefulWidget {
  const CustemWidget({super.key});

  @override
  State<CustemWidget> createState() => _CustemWidgetState();
}

class _CustemWidgetState extends State<CustemWidget> {
  bool _isLiked = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          onPressed: () {
            setState(() {
              _isLiked = !_isLiked;
            });
          },
          icon: Icon(
            Icons.favorite,
            size: 100,
            color: _isLiked ? Colors.red : Colors.green,
          ),
        ),
      ],
    );
  }
}

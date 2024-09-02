import 'package:flutter/material.dart';

class custemWidgetListTile extends StatefulWidget {
  final String name;
  final bool isSeenEnable;
  const custemWidgetListTile(
      {super.key, required this.name, this.isSeenEnable = true});

  @override
  State<custemWidgetListTile> createState() => _custemWidgetListTileState();
}

class _custemWidgetListTileState extends State<custemWidgetListTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      height: 80,
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://imgcdn.stablediffusionweb.com/2024/3/12/91f69dac-3c3e-4bdc-93c3-fa8a3aa912d5.jpg"),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      widget.name,
                      style: TextStyle(
                        color: Colors.amber,
                      ),
                    ), // Use widget.name here
                    Text(
                      "Online",
                      style: TextStyle(color: Colors.green),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (widget.isSeenEnable) ...[
                  Text(
                    "SEEN",
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
                Icon(Icons.chat, color: Colors.white),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

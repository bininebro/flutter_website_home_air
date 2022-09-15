import 'package:flutter/material.dart';

class RectangleActionWidget extends StatefulWidget {
  final bool isActive;
  final String text;
  final IconData icon;
  final Color color;
  const RectangleActionWidget(
      {Key? key,
      required this.isActive,
      required this.text,
      required this.icon,
      required this.color})
      : super(key: key);

  @override
  State<RectangleActionWidget> createState() => _RectangleActionWidgetState();
}

class _RectangleActionWidgetState extends State<RectangleActionWidget> {
  bool isSwitched = true;
  @override
  void initState() {
    // TODO: implement initState
    isSwitched = widget.isActive;
    super.initState();
  }

  void toggleSwitch(bool value) {
    if (isSwitched == false) {
      setState(() {
        isSwitched = true;
      });
    } else {
      setState(() {
        isSwitched = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      width: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: widget.color,
      ),
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  widget.icon,
                  color: isSwitched ? Colors.white : Colors.deepPurple,
                ),
                Text(
                  widget.text,
                  style: TextStyle(
                      color: isSwitched ? Colors.white : Colors.deepPurple),
                )
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  isSwitched ? 'ON' : 'OFF',
                  style: TextStyle(
                      color: isSwitched ? Colors.white : Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                Switch(
                  value: isSwitched,
                  onChanged: (value) {
                    toggleSwitch(value);
                  },
                  activeColor: isSwitched ? Colors.white : Colors.deepPurple,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

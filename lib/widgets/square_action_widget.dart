import 'package:flutter/material.dart';

class SquareActionWidget extends StatefulWidget {
  final bool isActive;
  final String text;
  final IconData icon;
  const SquareActionWidget(
      {Key? key,
      required this.isActive,
      required this.text,
      required this.icon})
      : super(key: key);

  @override
  State<SquareActionWidget> createState() => _SquareActionWidgetState();
}

class _SquareActionWidgetState extends State<SquareActionWidget> {
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
      height: 110,
      width: 140,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: isSwitched ? Colors.deepPurple : Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
      ),
    );
  }
}

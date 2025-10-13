import 'package:flutter/material.dart';
class buildButton extends StatelessWidget {
  String text;
  Color ? color;
  final VoidCallback onClick;

   buildButton({
    super.key,
    required this.onClick,
    required this.text,
    this.color
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(24),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                backgroundColor: color ?? Colors.grey[800]
            ),
      
            onPressed: onClick,
            child: Text(
              text,
              style: TextStyle(fontSize: 25, color: Colors.white),
            )),
      ),
    );
  }
}

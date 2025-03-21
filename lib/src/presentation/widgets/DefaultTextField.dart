import 'package:flutter/material.dart';

class DefaultTextField extends StatelessWidget {
  final String text;
  final IconData icon;

  const DefaultTextField({super.key, 
    required this.text,
    required this.icon
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: EdgeInsets.only(top: 20, left: 20, right: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          bottomRight: Radius.circular(15),
        ),
      ),
      child: TextFormField(
        decoration: InputDecoration(
          label: Text(text),
          border: InputBorder.none,
          prefixIcon: Container(
            margin: EdgeInsets.only(top: 10),
            child: Wrap(
              alignment: WrapAlignment.spaceEvenly,
              children: [
                Icon(icon),
                Container(height: 20, width: 1, color: Colors.grey),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

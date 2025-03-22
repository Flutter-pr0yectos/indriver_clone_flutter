import 'package:flutter/material.dart';

class DefaultTextFieldOutlined extends StatelessWidget {
  final String text;
  final IconData icon;
  final EdgeInsetsGeometry margin;

  const DefaultTextFieldOutlined({super.key, 
    required this.text,
    required this.icon,
    this.margin = const EdgeInsets.only(top: 50, left: 20, right: 20),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: margin,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(255, 252, 252, 0.2),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          bottomRight: Radius.circular(15),
        ),
      ),
      child: TextFormField(
        decoration: InputDecoration(
          label: Text(text),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: const Color.fromARGB(255, 37, 100, 151),
              width: 1
            )
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.cyan,
              width: 1
            )
          ),
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

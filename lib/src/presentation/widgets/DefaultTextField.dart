import 'package:flutter/material.dart';

class DefaultTextField extends StatelessWidget {

  final Function(String text) onChanged;
  final String text;
  final IconData icon;
  final EdgeInsetsGeometry margin;

  const DefaultTextField({
    super.key, 
    required this.onChanged,
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
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          bottomRight: Radius.circular(15),
        ),
      ),
      child: TextFormField(
        onChanged: (text){
          onChanged(text);
        },
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

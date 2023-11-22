import 'package:flutter/material.dart';
class Category extends StatelessWidget {
  Category({ this.text,this.color,this.onTap}) ;
  String? text;
  Color? color;
  Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Text(text!,style: TextStyle(
                color: Colors.white,
              ),),
            ),
          ],
        ),
        color:color,
      ),
    );
  }
}

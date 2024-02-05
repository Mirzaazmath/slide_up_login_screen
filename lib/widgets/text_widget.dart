import 'package:flutter/material.dart';
class TextUtil extends StatelessWidget {
  String text;
  Color? color;
  double? size;
  bool? weight;
  TextUtil({super.key,required this.text,this.size,this.color,this.weight});

  @override
  Widget build(BuildContext context) {
    return  Text(text,
      style: TextStyle(color:color??Colors.white,fontSize:size?? 18,
          fontWeight:weight==null?FontWeight.w400: FontWeight.w700,fontFamily: "Poppins"
      ),
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
  }
}
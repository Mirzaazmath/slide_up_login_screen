import 'package:flutter/material.dart';
class FieldWidget extends StatelessWidget {
  final String title;
  final IconData icon;
  const FieldWidget({super.key,required this.title,required this.icon});
  @override
  Widget build(BuildContext context) {
    return  Container(
      margin:const  EdgeInsets.only(bottom: 20),
      padding:const  EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
          color: Colors.grey.shade300,
          borderRadius: BorderRadius.circular(25)
      ),
      child:TextFormField(
        decoration:  InputDecoration(
            hintText: title,
            border: InputBorder.none,
            prefixIcon: Icon(icon,color: Colors.grey,)
        ),
      ) ,
    );
  }
}

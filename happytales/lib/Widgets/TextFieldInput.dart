import 'package:flutter/material.dart';

class Textfieldinput extends StatelessWidget {
  final TextEditingController textEditingController;
  final bool isPass;
  final String hintText;  
  final IconData icon;
  const Textfieldinput({super.key, required this.textEditingController, this.isPass = false, required this.hintText, required this.icon,});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      child: TextField(
        style: const TextStyle(color: Colors.black),
        
        controller: textEditingController,
        obscureText: isPass,
        decoration: InputDecoration(
          prefixIcon: Icon(icon, color: Colors.black),
          label: Text(hintText,style: const TextStyle(color: Color.fromARGB(255, 116, 116, 116)),),
  
          contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          border: InputBorder.none,
          fillColor: const Color(0xFFedf0f8),
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(30.0),
          ),
          focusedBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 182, 238, 245),
                            width: 2.0)),
        ),
      ),
    );
  }
}
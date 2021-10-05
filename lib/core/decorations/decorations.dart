import 'package:flutter/material.dart';

BoxDecoration itemBoxDecoration(){
  return  BoxDecoration(
    borderRadius: BorderRadius.all(
        Radius.circular(12)),
    color: Colors.white,
    boxShadow: [
      BoxShadow(
        color:
        Colors.grey.withOpacity(0.5),
        spreadRadius: 2,
        blurRadius: 5,
        offset: Offset(0,
            3), // changes position of shadow
      ),
    ],
  );
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

loadingindigator(){
  return Center(
    child: Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)
      ),
      child: Container(
          alignment: Alignment.center,
          height: 50,
          width: 50,
          padding:const  EdgeInsets.all(15),
          child: CircularProgressIndicator(),
      ),
    ),
  );
}
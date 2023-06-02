  import 'package:flutter/material.dart';

class Cart_page extends StatefulWidget {
   const Cart_page({Key? key}) : super(key: key);

   @override
   State<Cart_page> createState() => _Cart_pageState();
 }

 class _Cart_pageState extends State<Cart_page> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: Text("Wish List"),
       ),


     );
   }
 }

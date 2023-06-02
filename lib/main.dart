
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providercarttask/Provider/privider_function.dart';
import 'package:providercarttask/items_page1.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
    create:(context)=>Provider_class(),
      child:MaterialApp(

      debugShowCheckedModeBanner: false,

      home: Itemspage(),
    )
    )
  );
  }


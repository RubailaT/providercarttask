 import 'package:flutter/cupertino.dart';

class Provider_class extends ChangeNotifier{
List cart_image=[];
List cart_name=[];
List cart_unit=[];
List cart_price=[];
List get wishlistimage=>cart_image;
List get wishlistname=>cart_name;
List get wishlistunit=>cart_unit;
List get wishlistprice=>cart_price;
void Wishlistes(String image,String name,String unit,String price){
  final wish_list =cart_image.contains(image);
  if(wish_list){
    cart_image.remove(image);
    cart_name.remove(name);
    cart_unit.remove(unit);
    cart_price.remove(price);
  }
  else
    {
      cart_image.add(image);
      cart_name.add(name);
      cart_unit.add(unit);
      cart_price.add(price);
    }
  notifyListeners();
}

}
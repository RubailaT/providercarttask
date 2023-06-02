   import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providercarttask/Model_cart.dart';
import 'package:providercarttask/Provider/privider_function.dart';
import 'package:providercarttask/cart_page.dart';

class Itemspage extends StatefulWidget {
   const Itemspage({Key? key}) : super(key: key);

   @override
   State<Itemspage> createState() => _ItemspageState();
 }

 class _ItemspageState extends State<Itemspage> {
  TextStyle texstyle=TextStyle(
      fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black);
  List Items=[

  Model_cart(img:"images/food.png", name: "Apple", unit: "kg", price: "\$20"),
    Model_cart(img:"images/bananas.png", name: "Banana", unit: "Doz", price: "\$10"),
    Model_cart(img:"images/watermelon.png", name: "Watermelon", unit: "kg", price: "\$25"),
    Model_cart(img:"images/grapes.png", name: "Grapes", unit: "kg", price: "\$8"),
    Model_cart(img:"images/kiwi.png", name: "Kiwi", unit: "pc", price: "\$40"),
    Model_cart(img:"images/mango.png", name: "Mango", unit: "Doz", price: "\$30"),
    Model_cart(img:"images/orange.png", name: "Orange", unit: "Doz", price: "\$15"),
    Model_cart(img:"images/peach.png", name: "Peach", unit: "kg", price: "\$40"),
  ];
   @override
   Widget build(BuildContext context) {
     // final object1=Provider.of<Provider_class>(context);
     return Scaffold(
       appBar: AppBar(
         centerTitle: true,
         title: Text("Product List",style: TextStyle(fontSize: 25),),
         actions: [
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: InkWell(
              onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Cart_page()));

              },
                 child: Icon(Icons.shopping_cart,size: 30,)),
           ),
         ],
       ),

       body: SingleChildScrollView(
         child: Column(
           children: [
             ListView.builder(
               shrinkWrap: true,
               physics:NeverScrollableScrollPhysics(),
               itemCount: Items.length,
                 itemBuilder: (context,index){
                 return Padding(
                   padding: const EdgeInsets.all(6.0),
                   child: Container(
                     height: MediaQuery.of(context).size.height/8,
                     width: 40,
                     child: Card(
                       color: Colors.white38,
                       elevation: 3,
                       child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                         children: [
                           Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: Image(image: AssetImage(Items[index].img)),
                           ),
                           Column(mainAxisAlignment: MainAxisAlignment.center,
                             crossAxisAlignment: CrossAxisAlignment.start
                             ,
                             children: [
                               Row(
                                 children: [
                                   Text("Name:",style: TextStyle(fontSize: 18),),
                                   Text(Items[index].name,style: texstyle,),
                                 ],
                               ),
                               Row(
                                 children: [
                                   Text("Unit:",style: TextStyle(fontSize: 18)),
                                   Text(Items[index].unit,style: texstyle,),
                                 ],
                               ),
                               Row(
                                 children: [
                                   Text("Price:",style: TextStyle(fontSize: 18)),
                                   Text(Items[index].price,style: texstyle,),
                                 ],
                               ),
                             ],
                           ),

                           Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: ElevatedButton(
                               style: ElevatedButton.styleFrom(
                                 primary: Colors.black,

                               ),
                               onPressed: (){
                                 // object1.Wishlistes(Items[index].img,Items[index].name,Items[index].unit,Items[index].price);
                                
                                 // Navigator.push(context, MaterialPageRoute(builder: (context)=>Cart_page()));
                               },
                               child: Text("Add to cart",
                                 style:TextStyle(color:Colors.white),),


                             ),
                           )
                         ],
                       ),

                     ),

                   ),
                 );
                 })

           ],
         ),
       ),
     );
   }
 }

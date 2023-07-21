import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_product_details/Widget/item_card.dart';

import 'controller.dart';

class HomeScreen extends StatelessWidget {
  
  final homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ShopX', style: GoogleFonts.josefinSans(
          fontSize: 26,
          fontWeight: FontWeight.w500,
          letterSpacing: 3
        )),
        centerTitle: true,
        elevation: 0.5,
        backgroundColor: Colors.redAccent,
      ),

      body: Obx((){
        if(homeController.loading.value){
          return Center(child: CircularProgressIndicator(color: Colors.redAccent));
        
        }else if(homeController.productList.isEmpty){
          return Center(child: Text('No product found'));

        }else{
          return ListView.builder(
            itemBuilder: (bCtx, i) => ItemCard(i),
            physics: const BouncingScrollPhysics(),
            itemCount: 15,
          );
        }

      })
       
    );
  }
}
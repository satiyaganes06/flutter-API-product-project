import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_product_details/Screen/Home/controller.dart';

class ItemCard extends StatelessWidget {

  int index;

  ItemCard(this.index);

  final homeController = Get.find<HomeController>();

  var img = 'https://store.storeimages.cdn-apple.com/8756/as-images.apple.com/is/ML6H3ref_VW_34FR+watch-45-alum-starlight-nc-7s_VW_34FR_WF_CO?wid=750&hei=712&trim=1%2C0&fmt=p-jpg&qlt=95&.v=1630364962000%2C1631661833000';

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading:  CachedNetworkImage(imageUrl: homeController.productList[index]['image'], width: 50),
      
        title: Text(homeController.productList[index]['title'], style: GoogleFonts.ubuntu(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: Colors.black
        )),
        subtitle: Text(homeController.productList[index]['price'].toString(), style: GoogleFonts.ubuntu(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          color: Colors.grey[500]
        )),
        onTap: (){
          
        },
        trailing: Icon(Icons.shopping_basket_rounded, color: Colors.redAccent)
      )
    );
  }
}
// Card(
//       child: ListTile(
//         leading:  CachedNetworkImage(imageUrl: homeController.productList[index]['image'], width: 50),
      
//         title: Text(homeController.productList[index]['title'], style: GoogleFonts.ubuntu(
//           fontSize: 14,
//           fontWeight: FontWeight.w500,
//           color: Colors.black
//         )),
//         subtitle: Text(homeController.productList[index]['price'].toString(), style: GoogleFonts.ubuntu(
//           fontSize: 12,
//           fontWeight: FontWeight.w500,
//           color: Colors.grey[500]
//         )),
//         onTap: (){
          
//         },
//         trailing: Icon(Icons.shopping_basket_rounded, color: Colors.redAccent)
//       )
//     );
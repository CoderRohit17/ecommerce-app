// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, unnecessary_new

import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/reuseable/widgets/app_button.dart';
import 'package:flutter_ecommerce_app/reuseable/widgets/app_drop_down.dart';
import 'package:flutter_ecommerce_app/reuseable/widgets/app_text.dart';
import 'package:flutter_ecommerce_app/reuseable/bottom_sheets/bottom_sheet_size.dart';
import 'package:flutter_ecommerce_app/reuseable/product_view/favorite_list_view_vertical.dart';
import 'package:flutter_ecommerce_app/reuseable/widgets/icon_button.dart';
import 'package:flutter_ecommerce_app/reuseable/product_view/image_view.dart';
import 'package:flutter_ecommerce_app/reuseable/my_colors.dart';

import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ProductOpenCardView extends StatefulWidget {
  const ProductOpenCardView({Key? key}) : super(key: key);

  @override
  State<ProductOpenCardView> createState() => _ProductOpenCardViewState();
}

class _ProductOpenCardViewState extends State<ProductOpenCardView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_ios,
            color: appBlackColor,
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppText.headingThree("Short Dress"),
            SizedBox(
              width: 50,
            ),
          ],
        ),
        backgroundColor: Colors.white,
        elevation: 0.5,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 425,
              width: double.infinity,
              child: Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 5),
                      child: const ImageView(
                        height: 425,
                        width: 275,
                        title: "",
                        imagePath: "assets/images/short_dress.png",
                      ),
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, right: 5, left: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      displayModalBottomSheet(context);
                    },
                    child: AppDropDown(
                      title: "Size",
                      trailing: Icon(Icons.keyboard_arrow_down_outlined),
                      isDroped: true,
                      btnBackColor: Colors.transparent,
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: AppDropDown(
                      title: "Black",
                      trailing: Icon(Icons.keyboard_arrow_down_outlined),
                      isDroped: true,
                      btnBackColor: Colors.transparent,
                    ),
                  ),
                  AppIconButton(
                    icon: Icon(Icons.favorite_border),
                    isAddBtn: false,
                  ),
                ],
              ),
            ),
            ListTile(
              title: AppText.headingThree("H&M"),
              subtitle: AppText.body("Short Black Dress"),
              trailing: AppText.headingThree("\$19.99"),
            ),
            Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                RatingBar.builder(
                  maxRating: 2,
                  updateOnDrag: false,
                  itemSize: 16,
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (double value) {},
                ),
                Text(
                  "(3)",
                  style: TextStyle(color: Colors.grey, fontSize: 14),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, right: 5, left: 15),
              child: AppText.caption(
                  "Short dress in soft cotton jersey with decorative buttons down the front and a wide, frill-trimmed square neckline with concealed elastication. Elasticated seam under the bust and short puff sleeves with a small frill trim."),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, right: 5, left: 15),
              child: AppButton(
                title: "ADD TO CART".toUpperCase(),
              ),
            ),
            Divider(
              thickness: 1,
            ),
            ListTile(
              dense: true,
              title: AppText.bodyStyle("Shopping info"),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(Icons.chevron_right_rounded),
              ),
            ),
            Divider(
              thickness: 1,
            ),
            ListTile(
              dense: true,
              title: AppText.bodyStyle("Support"),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(Icons.chevron_right_rounded),
              ),
            ),
            Divider(
              thickness: 1,
            ),
            ListTile(
              title: Text(
                "You may also like this",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              trailing: AppText.body("12 items"),
            ),
            SizedBox(
              height: 300,
              width: double.infinity,
              child: Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 15,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 5),
                      child: FavoriteListViewVertical(
                        inDiscount: index.isEven ? true : false,
                        isFavourite: false,
                        saleTitle: index.isEven ? "-${index + 25}" : "New",
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
      //bottomSheet: BottomSheetOfProductSize()
    );
  }
}

void displayModalBottomSheet(context) {
  showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) {
        return BottomSheetOfProductSize();
      });
}

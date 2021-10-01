// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, avoid_print, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/reuseable/product_view/address_view.dart';
import 'package:flutter_ecommerce_app/reuseable/widgets/app_button.dart';
import 'package:flutter_ecommerce_app/reuseable/widgets/app_drop_down.dart';
import 'package:flutter_ecommerce_app/reuseable/widgets/app_input_field.dart';
import 'package:flutter_ecommerce_app/reuseable/widgets/app_social_media_btn.dart';
import 'package:flutter_ecommerce_app/reuseable/widgets/app_text.dart';
import 'package:flutter_ecommerce_app/reuseable/product_view/category_card_view.dart';
import 'package:flutter_ecommerce_app/reuseable/product_view/favorite_list_view_vertical.dart';
import 'package:flutter_ecommerce_app/reuseable/widgets/filter_bar.dart';
import 'package:flutter_ecommerce_app/reuseable/widgets/icon_button.dart';

import 'package:flutter_ecommerce_app/reuseable/my_colors.dart';
import 'package:flutter_ecommerce_app/reuseable/product_view/order_detail_card_view.dart';

import 'package:flutter_ecommerce_app/reuseable/widgets/price_range_slider.dart';
import 'package:flutter_ecommerce_app/reuseable/product_cart_bag.dart';
import 'package:flutter_ecommerce_app/reuseable/product_favorite_list.dart';
import 'package:flutter_ecommerce_app/reuseable/widgets/product_labels.dart';
import 'package:flutter_ecommerce_app/reuseable/product_list_catalog.dart';
import 'package:flutter_ecommerce_app/reuseable/product_order_information.dart';
import 'package:flutter_ecommerce_app/reuseable/product_view/promo_code_view.dart';
import 'package:flutter_ecommerce_app/reuseable/widgets/toggle_switch.dart';
import 'package:flutter_ecommerce_app/reuseable/widgets/ui_helpers.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool status = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: ListView(
        children: [
          AppText.headingOne('Design System'),
          verticalSpaceSmall,
          Divider(),
          verticalSpaceSmall,
          ...buttonWidgets,
          ...textWidgets,
          ...inputFields,
          ...iconButton,
          ...dropDownBtn,
          ...favouriteIcon,
          ...iconAddButton,
          ...socialMedia,
          ToggleSwitch(
            activeColor: Colors.pinkAccent,
            value: status,
            onChanged: (value) {
              print("VALUE : $value");
              setState(() {
                status = value;
              });
            },
          ),
          SizedBox(
            height: 12.0,
          ),
          Text(
            'Value : $status',
            style: TextStyle(color: Colors.black, fontSize: 20.0),
          ),
          ...productLabels,
          FilterBar(),
          PriceRangeWidget(),
          ProductInCart(),
          ProductListCatalog(),
          ProductOrderInformation(),
          CategoryViewCard(
            title: "as",
          ),
          ProductFavoriteList(
            inStock: true,
            inOffer: false,
            inDiscount: false,
          ),
          ProductFavoriteList(
            inStock: false,
            inOffer: false,
            inDiscount: false,
          ),
          ProductFavoriteList(
            inStock: true,
            inOffer: true,
            offerText: "New",
            inDiscount: false,
          ),
          ProductFavoriteList(
            inStock: true,
            inOffer: true,
            inDiscount: true,
            offerText: "-30%",
          ),
          FavoriteListViewVertical(
            saleTitle: "New",
            inDiscount: false,
            isFavourite: false,
          ),
          PromoCodeCardView(),
          AddressView(
            useThisShipping: false,
          ),
          OrderDetailCardView(),
          // PopUpWindow(
          //   height: 100,
          //   width: 200,
          // ),
        ],
      ),
    );
  }

  List<Widget> get buttonWidgets => [
        AppText.headline('Buttons'),
        verticalSpaceMedium,
        AppText.body('Normal'),
        verticalSpaceSmall,
        AppButton(
          title: 'SIGN IN',
        ),
        verticalSpaceSmall,
        AppText.body('Disabled'),
        verticalSpaceSmall,
        AppButton(
          title: 'SIGN IN',
          disabled: true,
        ),
        verticalSpaceSmall,
        AppText.body('Busy'),
        verticalSpaceSmall,
        AppButton(
          title: 'SIGN IN',
          busy: true,
        ),
        verticalSpaceSmall,
        AppText.body('Outline'),
        verticalSpaceSmall,
        AppButton.outline(
          title: 'Select location',
          leading: Icon(
            Icons.send,
            color: appRedPriColor,
          ),
        ),
        verticalSpaceMedium,
      ];

  List<Widget> get textWidgets => [
        AppText.headline('Text Styles'),
        verticalSpaceMedium,
        AppText.headingOne('Heading One'),
        verticalSpaceMedium,
        AppText.headingTwo('Heading Two'),
        verticalSpaceMedium,
        AppText.headingThree('Heading Three'),
        verticalSpaceMedium,
        AppText.headline('Headline'),
        verticalSpaceMedium,
        AppText.subheading('This will be a sub heading to the headling'),
        verticalSpaceMedium,
        AppText.body('Body Text that will be used for the general body'),
        verticalSpaceMedium,
        AppText.caption('This will be the caption usually for smaller details'),
        verticalSpaceMedium,
      ];

  List<Widget> get inputFields => [
        AppText.headline('Input Field'),
        verticalSpaceSmall,
        AppText.body('Normal'),
        verticalSpaceSmall,
        AppInputField(
          controller: TextEditingController(),
          placeholder: 'Enter Password',
        ),
        verticalSpaceSmall,
        AppText.body('Leading Icon'),
        verticalSpaceSmall,
        AppInputField(
          controller: TextEditingController(),
          leading: Icon(Icons.reset_tv),
          placeholder: 'Enter TV Code',
        ),
        verticalSpaceSmall,
        AppText.body('Trailing Icon'),
        verticalSpaceSmall,
        AppInputField(
          controller: TextEditingController(),
          trailing: Icon(Icons.clear_outlined),
          placeholder: 'Search for things',
        ),
      ];

  List<Widget> get iconButton => [
        AppText.headline('Icon Buttons'),
        verticalSpaceSmall,
        AppText.body('Search'),
        verticalSpaceSmall,
        AppIconButton(
          icon: Icon(Icons.search_off),
          isAddBtn: false,
          isDisable: false,
        ),
        verticalSpaceSmall,
        AppIconButton(
          icon: Icon(Icons.shopping_bag),
          isAddBtn: false,
          isDisable: false,
        ),
        verticalSpaceSmall,
        AppIconButton(
          icon: Icon(Icons.camera_alt),
          isAddBtn: false,
          isDisable: false,
        ),
      ];

  List<Widget> get favouriteIcon => [
        AppText.headline('Icon Buttons'),
        verticalSpaceSmall,
        AppText.body('Disable'),
        verticalSpaceSmall,
        AppIconButton(
          icon: Icon(Icons.favorite_border),
          isAddBtn: false,
        ),
        verticalSpaceSmall,
        AppText.body('Not Selected'),
        verticalSpaceSmall,
        AppIconButton(
          icon: Icon(Icons.favorite_rounded),
          isDisable: false,
          isAddBtn: false,
        ),
        verticalSpaceSmall,
        AppText.body('Selected'),
        verticalSpaceSmall,
        AppIconButton(
          icon: Icon(Icons.favorite_sharp),
          isSelected: true,
          isDisable: false,
          isAddBtn: false,
        ),
      ];

  List<Widget> get dropDownBtn => [
        AppText.headline('Drop Down List'),
        verticalSpaceSmall,
        AppDropDown(
          title: "Tag",
          trailing: Icon(Icons.arrow_drop_down),
          btnBackColor: Colors.white,
        ),
        verticalSpaceSmall,
        AppText.headline('Drop Down List'),
        AppDropDown(
          title: "Tag Filled",
          trailing: Icon(Icons.arrow_drop_down),
          btnBackColor: Colors.red,
        ),
        verticalSpaceMedium,
        verticalSpaceMedium,
        AppText.headline('Tags'),
        verticalSpaceSmall,
        AppDropDown(
          title: "Tag",
          trailing: Icon(Icons.arrow_drop_down),
          isDroped: true,
          btnBackColor: Colors.transparent,
        ),
        verticalSpaceMedium,
      ];

  List<Widget> get iconAddButton => [
        AppText.headline('Icon Add Buttons'),
        verticalSpaceSmall,
        AppText.body('Add Button'),
        verticalSpaceSmall,
        AppIconButton(
          icon: Icon(Icons.add),
          isAddBtn: true,
        ),
      ];

  List<Widget> get socialMedia => [
        AppText.headline('Google & Facebook Login'),
        verticalSpaceSmall,
        Row(

          children: [
            SocialMediaBth(isGoogle: true),
            horizontalSpaceSmall,
            SocialMediaBth(isGoogle: false),
          ],
        )
      ];

  List<Widget> get productLabels => [
        AppText.headline('ProductLabels'),
        verticalSpaceSmall,
        Row(

          children: [
            ProductLabels(
              title: "-20%",
              backColor: appRedPriColor,
            ),
            horizontalSpaceSmall,
            ProductLabels(
              title: "New",
              backColor: appBlackColor,
            ),
            horizontalSpaceSmall,
            ProductLabels(
              title: "Hot",
              backColor: appRedPriColor,
            ),
          ],
        )
      ];
}

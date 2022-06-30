import 'package:flutter/material.dart';
import 'package:flutter_foodly/core/extension/context_extension.dart';
import 'package:flutter_foodly/product/widget/custom_elevated_button.dart';

import '../../product/color/color_items.dart';
import '../../product/language/language_items.dart';
import '../../product/widget/custom_list_title_widget.dart';

class OrderPageView extends StatefulWidget {
  const OrderPageView({Key? key}) : super(key: key);

  @override
  State<OrderPageView> createState() => _OrderPageViewState();
}

class _OrderPageViewState extends State<OrderPageView> {
  AppStringConstants? appStringConstants = AppStringConstants.instance;
  ColorItems colorItems = ColorItems();
  double lineThickness = 0.7;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBarWidget(context),
      body: SingleChildScrollView(
        child: Padding(
          padding: context.padding2xHorizontal,
          child: Column(
            children: [
              _orderDetail(context),
              SizedBox(height: context.hw20),
              _TitlePriceWidget(
                price: context.hw100,
                title: appStringConstants!.orderPageTitle1,
              ),
              _TitlePriceWidget(
                price: context.hw30,
                title: appStringConstants!.orderPageTitle2,
              ),
              _TitlePriceWidget(
                price: context.hw70,
                title: appStringConstants!.orderPageTitle3,
              ),
              _promoCode(context),
              _dividerLine(context),
              _buttonWidget(context),
            ],
          ),
        ),
      ),
    );
  }

  Padding _buttonWidget(BuildContext context) {
    return Padding(
      padding: context.padding2xVertical,
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: CustomElevatedButton(
          title: appStringConstants!.orderButton,
          onPressed: () {},
          color: colorItems.activeColor,
        ),
      ),
    );
  }

  Padding _promoCode(BuildContext context) {
    return Padding(
      padding: context.paddingXVertical,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            appStringConstants!.orderPageTitle4,
            style: Theme.of(context)
                .textTheme
                .subtitle1
                ?.copyWith(fontWeight: FontWeight.w400),
          ),
          Icon(Icons.chevron_right_outlined, size: context.hw30),
        ],
      ),
    );
  }

  SizedBox _orderDetail(BuildContext context) {
    return SizedBox(
      height: context.hw340,
      child: ListView(
        children: [
          CustomListTile(
            trailing: context.hw10,
            title: appStringConstants!.orderResturantName1,
            subTitle: appStringConstants!.orderResturantFeatures,
            leading: context.hw5.toInt(),
          ),
          CustomListTile(
            trailing: context.hw45,
            title: appStringConstants!.orderResturantName2,
            subTitle: appStringConstants!.orderResturantFeatures,
            leading: context.hw20.toInt(),
          ),
          CustomListTile(
            trailing: context.hw35,
            title: appStringConstants!.orderResturantName3,
            subTitle: appStringConstants!.orderResturantFeatures,
            leading: context.hw10.toInt(),
          ),
        ],
      ),
    );
  }

  Divider _dividerLine(BuildContext context) {
    return Divider(
      height: context.hw10,
      color: colorItems.bodyColor,
      thickness: lineThickness,
    );
  }

  AppBar _appBarWidget(BuildContext context) {
    return AppBar(
      title: Text(appStringConstants!.orderAppBarTitle,
          style: Theme.of(context).textTheme.subtitle1?.copyWith(
              color: colorItems.mainColor, fontWeight: FontWeight.w700)),
      leading: Icon(Icons.close, color: colorItems.mainColor),
      centerTitle: true,
    );
  }
}

class _TitlePriceWidget extends StatelessWidget {
  const _TitlePriceWidget({
    Key? key,
    required this.title,
    required this.price,
  }) : super(key: key);
  final String title;
  final double price;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.paddingXVertical,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.subtitle1?.copyWith(
                  fontWeight: FontWeight.w400,
                ),
          ),
          Text('\$$price',
              style: Theme.of(context).textTheme.subtitle1?.copyWith(
                    fontWeight: FontWeight.w400,
                  )),
        ],
      ),
    );
  }
}

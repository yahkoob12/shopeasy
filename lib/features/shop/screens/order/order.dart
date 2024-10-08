import 'package:flutter/material.dart';
import 'package:shopeasy/common/widget/appbar/appbar.dart';
import 'package:shopeasy/features/shop/screens/order/widget/order_list.dart';
import 'package:shopeasy/utils/constants/sizes.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// -- AppBar
      appBar: TAppBar(
        title: Text(
          'My Order',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        showBackArrow: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),

        /// -- order
        child: OrderListItems(),
      ),
    );
  }
}

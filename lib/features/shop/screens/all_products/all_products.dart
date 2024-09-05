import 'package:flutter/material.dart';

import 'package:shopeasy/common/widget/appbar/appbar.dart';

import 'package:shopeasy/common/widget/products/sortable/sortable_products.dart';
import 'package:shopeasy/utils/constants/sizes.dart';

class AllProducts extends StatelessWidget {
  const AllProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// AppBar
      appBar: TAppBar(
        title: Text('Popular Products'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: TSortableProducts(),
        ),
      ),
    );
  }
}

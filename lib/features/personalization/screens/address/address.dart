import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopeasy/common/widget/appbar/appbar.dart';

import 'package:shopeasy/features/personalization/screens/address/add_new_address.dart';
import 'package:shopeasy/features/personalization/screens/address/widgets/single_address.dart';
import 'package:shopeasy/utils/constants/colors.dart';
import 'package:shopeasy/utils/constants/sizes.dart';

class UserAddressScreen extends StatelessWidget {
  const UserAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: TColors.primary,
        onPressed: () => Get.to(
          () => AddNewAddressScreen(),
        ),
        child: Icon(
          Iconsax.add,
          color: TColors.white,
        ),
      ),
      appBar: TAppBar(
        showBackArrow: true,
        title: Text(
          'Address',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              TSingleAddress(selectedAddress: true),
              TSingleAddress(
                selectedAddress: true,
              )
            ],
          ),
        ),
      ),
    );
  }
}

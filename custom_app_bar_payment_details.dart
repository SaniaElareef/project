
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:payment/cores/resources/images_values_manager.dart';
import 'package:payment/cores/resources/strings_values_manager.dart';
import 'package:payment/cores/utils/styles.dart';

class CustomAppPaymentDetails extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppPaymentDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading:
      Center(child: SvgPicture.asset(ImagesValuesManager.kArrowImage)),
      elevation: 0,
      backgroundColor: Colors.transparent,
      centerTitle: true,
      title: const Text(
        StringsValuesManager.kPaymentDetails,
        textAlign: TextAlign.center,
        style: Styles.style25,
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize =>const Size(double.infinity,50);
}

import 'package:flutter/material.dart';
import 'package:payment/cores/resources/colors_values_manger.dart';
import 'package:payment/cores/resources/const_values.dart';
import 'package:payment/cores/resources/height_values_manager.dart';
import 'package:payment/cores/resources/padding_values_manager.dart';
import 'package:payment/cores/resources/width_values_manager.dart';

class CustomPaymentWays extends StatelessWidget {
  const CustomPaymentWays({
    super.key,
    required this.onTap,
    this.activePayment = 0,
  });

  final Function(int index) onTap;
  final int activePayment;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        for (int i = 0; i < 3; i++)
          InkWell(
            onTap: () {
              onTap(i);
            },
            child: Container(
              // padding: const EdgeInsets.symmetric(
              //     vertical: PaddingValuesManager.p19,
              //     horizontal: PaddingValuesManager.p22
              // ),
              alignment: Alignment.center,
              child:
                  Image(image: AssetImage(ConstValues.listPaymentImageWays[i])),
              width: WidthValuesManager.w103,
              height: HeightValuesManager.h62,
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    if (activePayment == i)
                      BoxShadow(
                          color: Colors.green, spreadRadius: 0, blurRadius: 4)
                  ],
                  border: Border(
                    bottom: BorderSide(
                        color: ColorsValuesManager.kBlackColor.withOpacity(.5)),
                    top: BorderSide(
                        color: ColorsValuesManager.kBlackColor.withOpacity(.5)),
                    right: BorderSide(
                        color: ColorsValuesManager.kBlackColor.withOpacity(.5)),
                    left: BorderSide(
                        color: ColorsValuesManager.kBlackColor.withOpacity(.5)),
                  ),
                  borderRadius: BorderRadius.circular(15)),
            ),
          ),
      ],
    );
  }
}

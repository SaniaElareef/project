import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:payment/cores/resources/colors_values_manger.dart';
import 'package:payment/cores/resources/const_values.dart';
import 'package:payment/cores/resources/height_values_manager.dart';
import 'package:payment/cores/resources/images_values_manager.dart';
import 'package:payment/cores/resources/padding_values_manager.dart';
import 'package:payment/cores/resources/width_values_manager.dart';
import 'package:payment/views/payment_details/widgets/custom_app_bar_payment_details.dart';

import '../widgets/custom_payment_ways.dart';

class PaymentDetailsScreen extends StatefulWidget {
  const PaymentDetailsScreen({super.key});

  @override
  State<PaymentDetailsScreen> createState() => _PaymentDetailsScreenState();
}

class _PaymentDetailsScreenState extends State<PaymentDetailsScreen> {
  int i = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppPaymentDetails(),
      body: Column(
        children: [
          const SizedBox(height: HeightValuesManager.h32),
          CustomPaymentWays(
            onTap: (index) {
              i = index;
              setState(() {});
            },
            activePayment: i,
          ),
          const SizedBox(
            height: 34,
          ),
          CarouselSlider(
              items: [
                Container(
                  alignment: Alignment.center,
                  width: 328,
                  height: 192,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  decoration: ShapeDecoration(
                    gradient: const LinearGradient(
                      begin: Alignment(0.00, -1.00),
                      end: Alignment(0, 1),
                      colors: [Color(0xFF9EC7CB), Color(0xFFFFC16E)],
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Credit',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12.38,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                          Image(
                              image: AssetImage(
                                  ImagesValuesManager.kLogoMasterCard)),
                        ],
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '1234',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12.38,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                          Spacer(),
                          Text(
                            '5678',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12.38,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                          Spacer(),
                          Text(
                            '1234',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12.38,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                          Text(
                            '5678',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12.38,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Card Holder',
                                style: TextStyle(
                                  color: Colors.black
                                      .withOpacity(0.699999988079071),
                                  fontSize: 5.24,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                              const SizedBox(height: 1.43),
                              const Text(
                                'Sam Louis',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12.38,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(width: 35.71),
                          Container(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Expires',
                                  style: TextStyle(
                                    color: Colors.black
                                        .withOpacity(0.699999988079071),
                                    fontSize: 5.24,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                const SizedBox(height: 1.43),
                                const Text(
                                  '07/29',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12.38,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w500,
                                    height: 0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 35.71),
                          Container(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'CVV',
                                  style: TextStyle(
                                    color: Colors.black
                                        .withOpacity(0.699999988079071),
                                    fontSize: 5.24,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                const SizedBox(height: 1.43),
                                const Text(
                                  '215',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12.38,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w500,
                                    height: 0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),

                    ],
                  ),
                ),
                Container(
                  color: Colors.red,
                )
              ],
              options: CarouselOptions(
                aspectRatio: 328 / 192,
                viewportFraction: 0.8,
                initialPage: 0,
                enableInfiniteScroll: false,
                enlargeCenterPage: true,
                enlargeFactor: 0.3,
                onPageChanged: (index, reason) {},
                scrollDirection: Axis.horizontal,
              ))
          // CarouselSlider(
          //
          //   options: CarouselOptions(height: 400.0),
          //   items: [1,2,3,4,5].map((i) {
          //     return Builder(
          //       builder: (BuildContext context) {
          //         return Container(
          //             width: MediaQuery.of(context).size.width,
          //             margin: EdgeInsets.symmetric(horizontal: 5.0),
          //             decoration: BoxDecoration(
          //                 color: Colors.amber
          //             ),
          //             child: Text('text $i', style: TextStyle(fontSize: 16.0),)
          //         );
          //       },
          //     );
          //   }).toList(),
          // )
        ],
      ),
    );
  }
}

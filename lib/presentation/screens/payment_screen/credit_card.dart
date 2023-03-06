import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_book/core/util/widget/app_bar_component.dart';
import 'package:hotel_book/presentation/screens/payment_screen/review_payment_details.dart';

import '../../../core/util/component/screens_component.dart';
import 'component/payment_type_component.dart';

class CreditCardScreen extends StatefulWidget {
  CreditCardScreen({Key? key}) : super(key: key);

  @override
  State<CreditCardScreen> createState() => _CreditCardScreenState();
}

class _CreditCardScreenState extends State<CreditCardScreen> {
  var cardController = TextEditingController();

  var cardHolderNameController = TextEditingController();

  var cvvController = TextEditingController();

  var expiryDate = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBarComponent(
          context: context, title: Center(child: Text("Credit Card"))),
      body: Padding(
        padding: EdgeInsets.all(15.r),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                  child: Text(
                "Total Payment",
                style: Theme.of(context).textTheme.headline1,
              )),
              Center(
                  child: Text(
                "\$7,500",
                style: Theme.of(context).textTheme.headline1,
              )),
              SizedBox(
                height: 18.h,
              ),
              PaymentTypeComponent(),
              SizedBox(
                height: 18.h,
              ),
              Text(
                "CardHolder Name",
                style: Theme.of(context).textTheme.headline2,
              ),
              buildLoginFormFieldWithoutBorder(
                  controller: cardHolderNameController),
              SizedBox(
                height: 18.h,
              ),
              Text(
                "Card Number",
                style: Theme.of(context).textTheme.headline2,
              ),
              buildLoginFormFieldWithoutBorder(
                  controller: cardController,
                  keyboardType: TextInputType.number),
              SizedBox(
                height: 18.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "CVV",
                          style: Theme.of(context).textTheme.headline2,
                        ),
                        buildLoginFormFieldWithoutBorder(
                            controller: cvvController,
                            keyboardType: TextInputType.number),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 25.w,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Expiration Date",
                          style: Theme.of(context).textTheme.headline2,
                        ),
                    TextField(
                      keyboardType:
                      TextInputType.numberWithOptions(signed: false, decimal: false),
                      controller: expiryDate,
                      onChanged: (value) {
                        setState(() {
                          value = value.replaceAll(RegExp(r"\D"), "");
                          switch (value.length) {
                            case 0:
                              expiryDate.text = "MM/YY";
                              expiryDate.selection = TextSelection.collapsed(offset: 0);
                              break;
                            case 1:
                              expiryDate.text = "${value}M/YY";
                              expiryDate.selection = TextSelection.collapsed(offset: 1);
                              break;
                            case 2:
                              expiryDate.text = "$value/YY";
                              expiryDate.selection = TextSelection.collapsed(offset: 2);
                              break;
                            case 3:
                              expiryDate.text =
                              "${value.substring(0, 2)}/${value.substring(2)}Y";
                              expiryDate.selection = TextSelection.collapsed(offset: 4);
                              break;
                            case 4:
                              expiryDate.text =
                              "${value.substring(0, 2)}/${value.substring(2, 4)}";
                              expiryDate.selection = TextSelection.collapsed(offset: 5);
                              break;
                          }
                          if (value.length > 4) {
                            expiryDate.text =
                            "${value.substring(0, 2)}/${value.substring(2, 4)}";
                            expiryDate.selection = TextSelection.collapsed(offset: 5);
                          }
                        });
                      },
                      cursorWidth: 0.0,
                      obscureText: false,
                      enabled: true,
                    )
                      ],
                    ),
                  ),
                ],
              ),
             SizedBox(height: 40.h,),
              defaultButton(
                  context: context,
                  function: () {
                    navigateTo(context, ReviewPaymentDetails());
                  },
                  text: "Continue")
            ],
          ),
        ),
      ),
    );
  }
}

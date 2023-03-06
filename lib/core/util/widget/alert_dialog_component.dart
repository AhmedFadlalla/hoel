import 'package:flutter/material.dart';

import '../component/screens_component.dart';


buildAlertDialogComponent({
  required context,
  required List<Widget> widget,
  required String message
})=>showDialog(context: context, builder: (_){
  return AlertDialog(
    content: Column(
      children: widget,
    ),
      actions: [

        Center(
          child: defaultButton(context: context,
              function: (){
                Navigator.pop(context);
              },
              text: "Apply"),
        )
      ]

  );
});
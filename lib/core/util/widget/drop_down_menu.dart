import 'package:flutter/material.dart';
class DropDownMenuBottom extends StatefulWidget {
  String dropDownValue;
  List<String> dropDownList;
   DropDownMenuBottom({Key? key,required this.dropDownValue,required this.dropDownList}) : super(key: key);

  @override
  State<DropDownMenuBottom> createState() => _DropDownMenuBottomState();
}

class _DropDownMenuBottomState extends State<DropDownMenuBottom> {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: DropdownButton<String>(
        isExpanded: true,
        underline: Container(),
        value: widget.dropDownValue,
        icon: const Icon(Icons.keyboard_arrow_down),
        items: widget.dropDownList.map((String city) {
          return DropdownMenuItem(
            value: city,
            child: Text(city),
          );
        }).toList(),
        onChanged: (String? city) {
          setState(
                () {
              widget.dropDownValue = city!;
            },
          );

        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/util/component/screens_component.dart';
import '../../../../../core/util/fonts/app_fonts/app_fonts.dart';
import '../../../../../core/util/widget/counter_widget.dart';
class StackContainer extends StatelessWidget {
  StackContainer({Key? key}) : super(key: key);
  var dateController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 20.r),
        child: Container(
          height: 290.h,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25.r),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    offset: Offset(3, 3.5),
                    spreadRadius: 0.5
                )
              ]
          ),
          child: Padding(
            padding: EdgeInsets.all(15.r),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Choose Destination",
                  style: Theme
                      .of(context)
                      .textTheme
                      .headline2,),
                SizedBox(height: 8.h,),
                Container(
                  height: 40.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.r),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            offset: Offset(3, 4)
                        )
                      ]
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                        prefixIcon: IconButton(onPressed: () {},
                            icon: Icon(Icons.search,
                              color: Colors.grey.withOpacity(0.5),)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.r),
                            borderSide: BorderSide(
                                color: Colors.white
                            )
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.r),
                            borderSide: BorderSide(
                                color: Colors.white
                            )
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.r),
                            borderSide: BorderSide(
                                color: Colors.white
                            )
                        )
                    ),
                  ),
                ),
                SizedBox(height: 18.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text("Choose Date", style: Theme
                            .of(context)
                            .textTheme
                            .headline2!
                            .copyWith(

                            fontFamily: AppFonts.poppinsMediumFont
                        ),),
                        Container(

                          width: MediaQuery.of(context).size.width*0.35,
                          child: TextFormField(

                            controller: dateController,
                            keyboardType: TextInputType.none,
                            onTap: () async{
                            final date= await showDateRangePicker(
                                context: context,
                                  firstDate: DateTime.now(),
                                  confirmText: "Text",
                                  lastDate: DateTime(2050),
                              builder: (context, child) {
                                return Theme(
                                  data: Theme.of(context).copyWith(
                                    colorScheme: ColorScheme.light(
                                      primary: Colors.red, // header background color
                                      onPrimary: Colors.black, // header text color
                                      onSurface: Colors.blue, // body text color
                                    ),
                                    textButtonTheme: TextButtonThemeData(
                                      style: TextButton.styleFrom(
                                        primary: Colors.red, // button text color
                                      ),
                                    ),
                                  ),
                                  child: child!,
                                );
                              },


                            );
                            print(date);
                            if(date !=null){
                              dateController.text="${date!.start.day}-${date.start.month} To ${date.end.day}-${date.end.month}";

                            }
                            },
                          ),
                        )
                      ],
                    ),
                    Container(height: 70.h,
                      width: 2,
                      color: Colors.black,),
                    Column(
                      children: [
                        Text("Member of Room", style: Theme
                            .of(context)
                            .textTheme
                            .headline2!
                            .copyWith(

                            fontFamily: AppFonts.poppinsMediumFont
                        ),),
                        Container(

                          width: MediaQuery.of(context).size.width*0.35,
                          child: TextFormField(
                            controller: TextEditingController(),
                            keyboardType: TextInputType.none,
                            onTap: () {

                              showDialog(context: context, builder: (context){
                                return Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    AlertDialog(
                                      shape: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(20.r)
                                      ),
                                      content:Builder(builder: (context){
                                        return Container(
                                          width:MediaQuery.of(context).size.width*0.90,
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Text("Rooms"),
                                                  CounterWidget(counter: 1),

                                                ],
                                              ),

                                            ],
                                          ),
                                        );
                                      }) ,


                                    ),
                                    AlertDialog(
                                      shape: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(20.r)
                                      ),
                                      content:Builder(builder: (context){
                                        return Container(
                                          width:MediaQuery.of(context).size.width*0.90,
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text("1st Room"),
                                              SizedBox(height: 15.h,),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Text("Adult"),
                                                  CounterWidget(counter: 1),

                                                ],
                                              ),
                                              SizedBox(height: 25.h,),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Text("Children"),
                                                  CounterWidget(counter: 1),

                                                ],
                                              ),
                                              defaultButton(context: context, function: (){
                                                Navigator.pop(context);
                                              }, text: "Apply")
                                            ],
                                          ),
                                        );
                                      }) ,


                                    ),

                                  ],
                                );
                              });

                            },
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 12.h,),
                defaultButton(context: context,
                    function: (){

                    },
                    text: "Search Hotel")
              ],
            ),
          ),
        ),
      ),
    );
  }
}

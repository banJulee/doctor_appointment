import 'package:doctor_appointment/constant/Colors.dart';
import 'package:doctor_appointment/constant/TextStyle.dart';
import 'package:doctor_appointment/screens/booking/BookingSlot.dart';
import 'package:doctor_appointment/utility/NavigateUtility.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BookingListItem extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
          onTap: () {
            navigateOneScreenToOther(
              context,
              BookingSlotView()
              ,
            );
          },
          child:
              Container(

                child: Card(
                  color: white,
                  elevation: 6.0,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10,right: 10,top: 15,bottom: 15),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[

                        Card(
                          // color: white,
                          elevation: 4.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(50.0),
                            child: Image.asset(
                              "assets/doctor_img.jpg",
                              height: 70,
                              width: 70,
                              fit: BoxFit.cover,
                            ),
                          ),),
                        Expanded(
                            child: Container(
                          alignment: Alignment.topLeft,
                          margin: EdgeInsets.only( left: 10),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Dr. Name",
                                  style: headingStyle16MB(),
                                  maxLines: 1,
                                ),

                                Text(
                                  "gynecologist or general practitioner",
                                  style: headingStyle10MBLightGrey(),
                                  maxLines: 1,
                                ),
                                SizedBox(height: 5,),
                                Row(children: [
                                  Expanded(child: Text(
                                    "Kothrud",
                                    style: headingStyle13MBGrey(),
                                    maxLines: 1,
                                  ),
                                  ),
                                  Icon(Icons.date_range,color: gray,),
                                  Text(
                                    "Go Cashless",
                                    style: headingStyle13MBGrey(),
                                    maxLines: 1,
                                  ),
                                ],)
                              ]),
                        )),

                      ],
                    ),
                  ),
                ),
              ),



          ),
    );
  }
}


import 'package:doctor_appointment/constant/Colors.dart';
import 'file:///C:/Users/Julee/Desktop/doctor_appointment/lib/widget/LinearGradient.dart';
import 'package:doctor_appointment/constant/Strings.dart';
import 'package:doctor_appointment/constant/TextStyle.dart';
import 'package:doctor_appointment/model/BookingSlotModel.dart';
import 'package:flutter/material.dart';
class BookingSlotListItem extends StatelessWidget {
  final BookingSlotTimeModel _model;

  BookingSlotListItem(this._model);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Column(
        mainAxisAlignment : MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment : CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                        _model.slotTime,
                        style: headingStyleBlack14(),
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                        width: MediaQuery.of(context).size.width * 0.60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                        ),
                        height: 10,
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          child: LinearProgressIndicator(
                              backgroundColor: light_gray,
                              valueColor: _model.bookingPer <= 50
                                  ? new AlwaysStoppedAnimation<Color>(green)
                                  : _model.bookingPer > 50 &&
                                          _model.bookingPer < 80
                                      ? new AlwaysStoppedAnimation<Color>(
                                          Colors.yellow)
                                      : new AlwaysStoppedAnimation<Color>(
                                          Colors.red),
                              value: _model.bookingPer / 100),
                        )),
                    SizedBox(
                      height: 5,
                    ),
                    Center(
                        child: Text(
                          _model.bookingPer <= 50
                              ? available
                              : _model.bookingPer > 50 &&
                              _model.bookingPer < 80
                              ? filling_fast
                              : almost_full,
                      style: headingStyle13MBGrey(),
                    )),
                  ],
                ),
              ),
              _joinButton(),
            ],
          ),
        ],
      ),
    );
  }

  Widget _joinButton() {
    return Container(
      width: 80,
      height: 30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: linearGradient(),
      ),
      child: FlatButton(
        color: appColor,
        onPressed: () {},
        child: Text(
          "Join",
          style: headingStyle15SB(),
        ),
        textColor: black,
      ),
    );
  }
}


import 'package:doctor_appointment/constant/Colors.dart';
import 'package:doctor_appointment/constant/TextStyle.dart';
import 'package:doctor_appointment/model/BookingModel.dart';
import 'package:doctor_appointment/model/BookingSlotModel.dart';
import 'package:doctor_appointment/myInterface/EditInterface.dart';
import 'package:doctor_appointment/widget/ExpandedAnimationWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'BookingSlotListItem.dart';

List<BookingSlotTimeModel> _slotList = slotList;

class SlotTimeListItem extends StatelessWidget {
  final BookingSlotModel _model;
  final EditListener _listener;

  SlotTimeListItem(this._model, this._listener);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
            color: white,
            elevation: 5.0,
            child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('9:00 AM to 12:00 PM', style: headingStyleBlack14()),
                    IconButton(
                      icon: Icon(
                        _model.isSelected
                            ? Icons.keyboard_arrow_up_outlined
                            : Icons.keyboard_arrow_down_outlined,
                      ),
                      onPressed: () {
                        _listener.onEdit(
                            _model.index, _model.isSelected ? false : true);
                      },
                    ),
                  ],
                ))),
        ExpandedSectionView(expand: _model.isSelected, child: _showListView())
      ],
    );
  }

  Widget _showListView() {
    return Card(
      color: white,
      elevation: 5.0,
      child: ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          padding: const EdgeInsets.all(8),
          itemCount: _slotList.length,
          itemBuilder: (BuildContext context, int index) {
            return BookingSlotListItem(_slotList.elementAt(index));
          }),
    );
  }
}

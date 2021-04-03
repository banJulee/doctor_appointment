
import 'package:doctor_appointment/constant/Colors.dart';
import 'package:doctor_appointment/constant/TextStyle.dart';
import 'package:doctor_appointment/listItemWidget/BookingSlotItemWidget.dart';
import 'package:doctor_appointment/model/BookingModel.dart';
import 'package:doctor_appointment/myInterface/EditInterface.dart';
import 'package:doctor_appointment/utility/BaseUtility.dart';
import 'package:doctor_appointment/utility/DatePickerUtility.dart';
import 'package:doctor_appointment/utility/NavigateUtility.dart';
import 'package:flutter/material.dart';

List<BookingSlotModel> _list = bookingSlotModel;

class BookingSlotView extends StatefulWidget {
  @override
  _BookingSlotViewState createState() => _BookingSlotViewState();
}

class _BookingSlotViewState extends State<BookingSlotView>
    implements EditListener {
  TabController _controller;

  @override
  void initState() {
    super.initState();
  }

  @override
  void onEdit(int index, bool isSelected) {
    setState(() {
      _list.forEach((element) {
        element.isSelected = false;
      });

      _list[index].isSelected = isSelected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _customToolbar(),
    body: SingleChildScrollView(
    child:
    _showListView(),

    ));
  }

  Widget _showListView() {
    return ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        padding: const EdgeInsets.all(8),
        itemCount: _list.length,
        itemBuilder: (BuildContext context, int index) {
          _list
              .elementAt(index)
              .index = index;
          return SlotTimeListItem(_list.elementAt(index), this);
        });
  }

  Widget _customToolbar() {
    return PreferredSize(
        preferredSize: Size(double.infinity, 120),
    child:Container(
      padding: EdgeInsets.only(left: 10, right: 10, top: 15),
      color: appColor,

      child: SafeArea(
        child: Column(
       //mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Stack(
              children: [

                  GestureDetector(
                    onTap: () => {
                    backOnScreen(context)
                    },
                    child:Icon(
                      Icons.keyboard_backspace,
                      color: white,
                    ),
                  ),


                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Choose a time slot",
                    style: headingStyle15SB(),
                    textAlign: TextAlign.center,
                    maxLines: 1,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10,),
            tabMenus()
          ],
        ),
      ),
    ) );
  }

  Widget tabMenus() {
    return Expanded(
      child: DefaultTabController(
        length: 3,
        child: TabBar(
          controller: _controller,
          tabs: [
            Tab(
              child: Container(
                height: 60,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      getCurrentDay(),
                      style: whiteTitleStyle18(),
                    ),
                    Text(
                      "Today",
                      style: whiteTitleStyle12(),
                    ),
                  ],
                ),
              ),
            ),
            Tab(
              child: Container(
                height: 60,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      getTomorrow(),
                      style: whiteTitleStyle18(),
                    ),
                    Text(
                      "Tomorrow",
                      style: whiteTitleStyle12(),
                    ),
                  ],
                ),
              ),
            ),
            Tab(
              child: Container(
                height: 60,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    GestureDetector(
                      onTap: (){
                        selectDate(context);
                      },
                      child: Icon(
                        Icons.calendar_today_outlined,
                        color: white,
                        size: 20,
                      ),
                    ),

                    Text(
                      "Select",
                      style: whiteTitleStyle12(),
                    ),
                  ],
                ),
              ),
            ),
          ],
          indicatorColor: white,
          indicatorWeight: 5,
        ),
      ),
    );
  }
}

import 'package:doctor_appointment/constant/Colors.dart';
import 'package:doctor_appointment/constant/Strings.dart';
import 'package:doctor_appointment/constant/TextStyle.dart';
import 'package:doctor_appointment/listItemWidget/DoctorListItemWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DoctorListView extends StatefulWidget {
  @override
  _DoctorListViewState createState() => _DoctorListViewState();
}

class _DoctorListViewState extends State<DoctorListView> {
  bool _isClose = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              _welcomeWidget(),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/splash_logo.svg',
                    width: 30,
                    height: 30,
                    color: red,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Doctors in Pune",
                    style: headingStyle16MB(),
                    maxLines: 1,
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              _showListView(),
            ]),
      ),
    ));
  }

  Widget _showListView() {
    return ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        padding: const EdgeInsets.all(8),
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return BookingListItem();
        });
  }

  Widget _welcomeWidget() {
    return _isClose?SizedBox():Card(
      color: white,
      elevation: 6.0,
      child: Padding(
        padding: const EdgeInsets.only( bottom: 15,top: 15),
        child: Row(
         crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[

            Container(
              width: 100,
              height: 100,
             child: Image.asset("assets/welcome_image.png"
             ,height: 50,width: 50,),
            decoration: BoxDecoration(
              color: appColor,
              borderRadius:   BorderRadius.only(topLeft:Radius.circular(0),topRight: Radius.circular(40),bottomLeft: Radius.circular(50),bottomRight: Radius.circular(40)),
            ),
            ),
            Expanded(
                child: Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 25),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      welcome,
                      style: headingStyleRed22(),
                      maxLines: 1,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      welcome_des,
                      style: headingStyle12SB(),

                    ),
                  ]),
            )),
            IconButton(
              iconSize: 30,
              icon: Icon(
                Icons.close,
              ),
              onPressed: () {
                setState(() {
                  _isClose = true;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}


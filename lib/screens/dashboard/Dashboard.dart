import 'package:doctor_appointment/constant/Colors.dart';
import 'file:///C:/Users/Julee/Desktop/doctor_appointment/lib/widget/FabBottomAppBar.dart';
import 'package:doctor_appointment/screens/booking/DoctorListPage.dart';
import 'package:flutter/material.dart';

class DashboardView extends StatefulWidget {
  @override
  _DashboardViewState createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  String _lastSelected = 'TAB: 0';

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(143, 148, 251, 1),
          title: Text('Pune'),
          actions: [
            IconButton(
                alignment: Alignment.centerRight,
             //   padding: const EdgeInsets.all(0),

                icon: Icon(
                  Icons.search_rounded,
                  color: Colors.white,
                ),
                onPressed: () {}),

          ],
        ),

        body: DoctorListView(),
        bottomNavigationBar: FABBottomAppBar(
          color: tarnLight,
          backgroundColor: appColor,
          selectedColor: Colors.white,
          notchedShape: CircularNotchedRectangle(),
          onTabSelected: _selectedTab,
          items: [
            FABBottomAppBarItem(
                iconData: Icons.add_box_rounded, text: 'Booking'),
            FABBottomAppBarItem(
                iconData: Icons.assistant_rounded, text: 'Live'),
            FABBottomAppBarItem(
                iconData: Icons.history_edu_outlined, text: 'History'),
            FABBottomAppBarItem(
                iconData: Icons.account_circle, text: 'Account'),
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: _buildFab(
            context), // This trailing comma makes auto-formatting nicer for build methods.

    );
  }

  void _selectedTab(int index) {
    setState(() {
      _lastSelected = 'TAB: $index';
    });
  }

  Widget _buildFab(BuildContext context) {
    return Container(
        height: 70,
        decoration: BoxDecoration(
          border: Border.all(color: white, width: 5),
          shape: BoxShape.circle,
        ),
        child: FloatingActionButton(
          onPressed: () {},
          child: Icon(
            Icons.camera_alt,
            color: white,
          ),
          elevation: 2.0,
          backgroundColor: Color.fromRGBO(143, 148, 251, 1),
        ));
  }
}

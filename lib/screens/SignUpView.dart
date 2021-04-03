import 'package:doctor_appointment/animation/FadeAnimation.dart';
import 'package:doctor_appointment/constant/Colors.dart';
import 'file:///C:/Users/Julee/Desktop/doctor_appointment/lib/widget/LinearGradient.dart';
import 'package:doctor_appointment/constant/Strings.dart';
import 'package:doctor_appointment/constant/TextFormField.dart';
import 'package:doctor_appointment/constant/TextStyle.dart';
import 'package:doctor_appointment/screens/LoginView.dart';
import 'package:doctor_appointment/utility/NavigateUtility.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'dashboard/Dashboard.dart';

class SignupView extends StatefulWidget {
  @override
  SignupViewSate createState() => new SignupViewSate();
}

class SignupViewSate extends State<SignupView> {
  final TextEditingController _emailController = new TextEditingController();
  final TextEditingController _passwordController = new TextEditingController();
  final TextEditingController _nameController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: white,
          height: double.infinity,
          child: SingleChildScrollView(
            child:

                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Container(
                      height: MediaQuery.of(context).size.height * .40,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/background.png'),
                              fit: BoxFit.fill)),
                      child: Stack(
                        children: <Widget>[

                          Padding(
                            padding: const EdgeInsets.only(top:40,left: 15),
                            child: GestureDetector(
                              onTap: () => {
                                backOnScreen(context)
                              },
                              child:Icon(
                                Icons.keyboard_backspace,
                                color: white,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 30,
                            width: 80,
                            height: MediaQuery.of(context).size.height * .30,
                            child: FadeAnimation(
                                1,
                                Container(
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/light-1.png'))),
                                )),
                          ),
                          Positioned(
                            left: 140,
                            width: 80,
                            height: MediaQuery.of(context).size.height * .20,
                            child: FadeAnimation(
                                1.3,
                                Container(
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/light-2.png'))),
                                )),
                          ),
                          Positioned(
                            right: 40,
                            top: 40,
                            width: 80,
                            height: 150,
                            child: FadeAnimation(
                                1.5,
                                Container(
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image:
                                              AssetImage('assets/clock.png'))),
                                )),
                          ),
                          Positioned(
                            child: FadeAnimation(
                                1.6,
                                Container(
                                  margin: EdgeInsets.only(top: 50),
                                  child: Center(
                                    child: Text(
                                      sign_up,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 40,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                )),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(30.0),
                      child: Column(
                        children: <Widget>[
                          FadeAnimation(
                              1.8,
                              Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                          color:
                                              Color.fromRGBO(143, 148, 251, .2),
                                          blurRadius: 20.0,
                                          offset: Offset(0, 10))
                                    ]),
                                child: Column(
                                  children: <Widget>[
                                    testInputField(name, _nameController,
                                        TextInputType.text, "", false),
                                    testInputField(email, _emailController,
                                        TextInputType.emailAddress, "", false),
                                    testInputField(
                                        password,
                                        _passwordController,
                                        TextInputType.text,
                                        "",
                                        true),
                                  ],
                                ),
                              )),
                          SizedBox(
                            height: 30,
                          ),
                          _signupButton(),
                        ],
                      ),
                    ),
                  ],
                ),


          )),
    );
  }

  Widget _signupButton() {
    return FadeAnimation(
        2,
        FlatButton(
            onPressed: () {
              navigateScreenWithFinish(context, DashboardView());
            },
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: linearGradient(),
              ),
              child: Center(
                child: Text(
                  sign_up,
                  style: buttonTextStyle(),
                ),
              ),
            )));
  }


}

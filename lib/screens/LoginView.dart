import 'package:doctor_appointment/animation/FadeAnimation.dart';
import 'package:doctor_appointment/constant/Colors.dart';
import 'file:///C:/Users/Julee/Desktop/doctor_appointment/lib/widget/LinearGradient.dart';
import 'package:doctor_appointment/constant/Strings.dart';
import 'package:doctor_appointment/constant/TextFormField.dart';
import 'package:doctor_appointment/constant/TextStyle.dart';
import 'package:doctor_appointment/screens/SignUpView.dart';
import 'package:doctor_appointment/screens/dashboard/Dashboard.dart';
import 'package:doctor_appointment/utility/NavigateUtility.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  @override
  LoginViewState createState() => new LoginViewState();
}


class LoginViewState extends State<LoginView> {
  final TextEditingController _emailController = new TextEditingController();
  final TextEditingController _passwordController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
          color: white,
          child: Column(
            mainAxisAlignment : MainAxisAlignment.center,
            crossAxisAlignment : CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height * .40,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/background.png'),
                      fit: BoxFit.fill)),
              child: Stack(
                children: <Widget>[
                  Positioned(
                    left: 30,
                    width: 80,
                    height: MediaQuery.of(context).size.height * .30,
                    child: FadeAnimation(
                        1,
                        Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/light-1.png'))),
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
                                  image: AssetImage('assets/light-2.png'))),
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
                                  image: AssetImage('assets/clock.png'))),
                        )),
                  ),
                  Positioned(
                    child: FadeAnimation(
                        1.6,
                        Container(
                          margin: EdgeInsets.only(top: 50),
                          child: Center(
                            child: Text(
                              "Login",
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
                                  color: Color.fromRGBO(143, 148, 251, .2),
                                  blurRadius: 20.0,
                                  offset: Offset(0, 10))
                            ]),
                        child: Column(
                          children: <Widget>[
                            testInputField(email, _emailController,
                                TextInputType.emailAddress, "",false),
                            testInputField(password, _passwordController,
                                TextInputType.visiblePassword, "",true),
                          ],
                        ),
                      )),
                  SizedBox(
                    height: 30,
                  ),
                  _loginButton(),
                  SizedBox(
                    height: 15,
                  ),
                  FadeAnimation(
                      1.5,
                      Text(
                        forgot_password,
                        style: testStyleAppColor(),
                      )),

                ],
              ),
            ),
            Expanded(child: _showCreateAccount(),

            ),
            SizedBox(height: 20,)
          ],

          )),
    );
  }

  Widget _loginButton() {
    return FadeAnimation(
        2,
        FlatButton(
        onPressed: (){
       navigateScreenWithFinish(context, DashboardView());
    },
    child:  Container(
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: linearGradient(),
          ),
          child: Center(
            child: Text(
              login,
              style: buttonTextStyle(),
            ),
          ),
    )));
  }

  Widget _showCreateAccount() {
    return Stack(
      children: <Widget>[
        Align(
          alignment: Alignment.bottomCenter,
          child: Row(
            mainAxisAlignment : MainAxisAlignment.center,
            children: <Widget>[
              Text(
                dont_have_account,
                style: headingStyle13MBGrey(),
              ),
              SizedBox(
                width: 5,
              ),
              GestureDetector(
                onTap: () => {
                   navigateOneScreenToOther(
                    context,
                    SignupView(),
                  ),
                },
                child: Text(
                  create_account,
                  style: testStyleAppColor(),
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

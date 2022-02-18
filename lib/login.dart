import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sentinel_malak/PatientPriority.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  late bool _isObscure;
  bool _isChecked = false;
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void initState() {
    _isObscure = true;
  }

  @override
  Widget build(BuildContext context) {
    var mediaQueryHeight = MediaQuery.of(context).size.height;
    var mediaQueryWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
              height: mediaQueryHeight * 0.35,
              width: mediaQueryWidth,
              child: Stack(
                children: [
                  SizedBox(
                      width: mediaQueryWidth,
                      child: Image.asset(
                        'assets/images/female-doctor-holding-tablet-pc-doctor-s-hands-close-up-medical-service-health-care-concept.png',
                        fit: BoxFit.cover,
                      )),
                  ColoredBox(
                    color: Color.fromRGBO(250, 250, 250, 0.9),
                    child: SizedBox(
                      height: mediaQueryHeight * 0.35,
                      width: mediaQueryWidth,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Welcome To ',
                            style: TextStyle(
                              fontSize: 25,
                            ),
                          ),
                          Text(
                            'SENTINEL',
                            style: TextStyle(
                                fontSize: 25,
                                color: Color.fromRGBO(205, 8, 27, 1)),
                          )
                        ],
                      ),
                      Text(
                        'Health analytics',
                        style: TextStyle(fontSize: 20),
                      )
                    ],
                  )
                ],
              )),
          SizedBox(height: 30),
          SizedBox(
            height: 35,
          ),
          Container(
            child: Text(
              '       Email address',
            ),
          ),
          Container(
              padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: TextField(
                controller: emailController,
                decoration: const InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
              )),
          Container(
            child: Text(
              '      Password',
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
            child: TextField(
              obscureText: _isObscure,
              controller: passwordController,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                suffixIcon: IconButton(
                  icon: Icon(
                    Icons.remove_red_eye,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    setState(() {
                      _isObscure = !_isObscure;
                    });
                  },
                ),
              ),
            ),
          ),
          Row(
            children: [

                IconButton(
                  icon: Icon(Icons.check_box_outline_blank),
                  color: Colors.black,
                  onPressed: () {},
              ),
              Text('Remember me '),
              Container(
                padding: EdgeInsets.fromLTRB(100, 0, 10, 0),
                alignment: Alignment.bottomRight,
                child: TextButton(
                  child: const Text(
                    'Forgot Password?',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  onPressed: () {
                    //signup screen
                  },
                ),
              ),
            ],
          ),
        SizedBox(
            height: mediaQueryHeight * 0.08,),
          Container(
              width: 370,
              height: 50,
              padding: EdgeInsets.only(left: 50),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30)),
                    primary: Color.fromRGBO(205, 8, 27, 1)),
                child: const Text(
                  'LOG IN',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    height: 0.53333,
                  ),
                  textHeightBehavior:
                      TextHeightBehavior(applyHeightToFirstAscent: false),
                  textAlign: TextAlign.center,
                ),
                onPressed: () { Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => const Priotiy()));

                },
              )),
        ]),
      ),
    );
  }
}

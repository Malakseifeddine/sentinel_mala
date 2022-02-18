import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Login extends StatefulWidget {
  const Login({ Key? key }) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,

        children: [

             Image.asset('assets/images/senti.png'),
              SizedBox(height: 30),

             SizedBox(height: 35,),
              Container(

                child: Text('       Email address',),
              ),

              Container(
              padding: EdgeInsets.all(20),

                child: TextField(
                  controller: emailController,
                  decoration: const InputDecoration(


                   enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide( width: 1),
                     borderRadius: BorderRadius.all(Radius.circular(20)),),

               ),

              )

            ),
          Container(

            child: Text('      Password',),
          ),


          Container(
                 padding: EdgeInsets.fromLTRB(20, 20, 20, 0),

                child: TextField(
                  controller: passwordController,
                  decoration: const InputDecoration(

                    enabledBorder: OutlineInputBorder(
                       borderSide: const BorderSide( width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(20)),),
                ),

              ),


              ),Container(
                 padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
              alignment: Alignment.bottomRight,
            child:   TextButton(


                  child: const Text(
                    'Forgot Password?',
                    style: TextStyle(fontSize: 10,


                  ),
                  ),
                  onPressed: () {

                    //signup screen
                  },
                ),
              ),


               Container(

                width: 330,
                    height: 60,
                   padding: EdgeInsets.only(left: 50),
                    child: ElevatedButton(

                     style: ElevatedButton.styleFrom(
                       shape: new RoundedRectangleBorder(
                         borderRadius: new BorderRadius.circular(30)
                       ),
                    primary: Colors.red),
                      child: const Text('LOG IN',
                      style: TextStyle(

                        fontSize: 20,
                        color: Colors.white,
                        height: 0.53333,
                      ),
                        textHeightBehavior:
                      TextHeightBehavior(applyHeightToFirstAscent: false),
                  textAlign: TextAlign.center,
                      ),
                      onPressed: () {

                        }

    ,
                    )
                ),


        ]
      ),

    );
  }
}
import 'package:flutter/material.dart';





class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _Login();
}


class _Login extends State<Login> {

  final _controller = TextEditingController();
  @override
  void dispose(){
    _controller.dispose();
    super.dispose();
  }
  bool _validate = false;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: ListView(

          children: <Widget>[


            Image.asset('images/senti.png'),
            Container(
              height: 100,
              padding: const EdgeInsets.all(10),
              child: TextField(

                controller: emailController,
                decoration: const InputDecoration(
                  prefixIcon :  Icon (Icons.email),
                  border: OutlineInputBorder(),
                  labelText: ' Email or phone number ',
                  errorText: 'Email can\'t Be empty',

                ),
              ),
            ),
            Container(  width: 300,
              padding: const EdgeInsets.only(right: 19,left: 20),
              child: TextField(
                obscureText: false,
                controller: passwordController,
                decoration: const InputDecoration(
                  prefixIcon :  Icon (Icons.lock,),
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
            ),
            Container(
              alignment: Alignment.bottomRight,
              child: TextButton(

                onPressed: () {
                  //forgot password screen
                },
                child: const Text('Forgot Password?',
                    textAlign: TextAlign.right,
                    style:TextStyle(
                        color: Colors.black
                    )
                ),
              ),
            ),

            Container(


                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: ElevatedButton(

                  style: ElevatedButton.styleFrom(
                      fixedSize: const Size (240,80),

                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(40.0)
                      ),
                      primary: Color(0xFF1B5E20)),
                  child: const Text('Login',

                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      height: 0.53333,
                    ),
                    textHeightBehavior:
                    TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.center,
                  ),
                  onPressed: () {
                    setState(() {
                      _controller.text.isEmpty?
                      _validate = true : _validate =false ;

                    });
                  },
                )

            ),

            Row(
              children: <Widget>[
                SizedBox(height: 30),
                TextButton(
                  child: const Text(
                    'Create new account',
                    style: TextStyle(fontSize: 20,
                        color: Colors.black,
                        fontFamily: 'Berlin Sans FB'),
                  ),
                  onPressed: () {
                    //signup screen
                  },
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ],
        ));
  }
}

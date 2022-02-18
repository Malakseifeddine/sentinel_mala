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
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
       
              Image.asset('images/Untitled-1.png',),
              SizedBox(height: 30),
              Container(child: Text('Log in  ', style: TextStyle(fontSize: 40, color:  Colors.cyan[800]), ),),
             SizedBox(height: 35,),
             
              Container(
              padding: EdgeInsets.all(20),
                
                child: TextField(
                  controller: emailController,
                  decoration: const InputDecoration(
                    
                 
                   enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.cyan, width: 1),
                     borderRadius: BorderRadius.all(Radius.circular(20)),),
                       label: Text.rich(
            TextSpan(
              children: <InlineSpan>[
                WidgetSpan(
                  child: Text(
                    'EMAIL',
                  style: TextStyle(fontSize: 10,color:Colors.cyan,),
                  ),
                ),
               
              ]
            ),
               ),
               ),

              )

            ),
            
              Container(
                 padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
               
                child: TextField(
                  controller: passwordController,
                  decoration: const InputDecoration(
                   
                    enabledBorder: OutlineInputBorder(
                       borderSide: const BorderSide(color: Colors.cyan, width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(20)),),
                   label: Text.rich(
            TextSpan(
              children: <InlineSpan>[
                WidgetSpan(
                  child: Text(
                    'PASSWORD',
                  style: TextStyle(fontSize: 10,color:Colors.cyan,),
                  ),
                ),
               
              ]
            ),
               ),),

              )
              ),Container(
                 padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
              alignment: Alignment.bottomRight,
            child:   TextButton(
              
                
                  child: const Text(
                    'Forgot Password?',
                    style: TextStyle(fontSize: 10, 
                     color: Colors.cyan,
                     
                  ),
                  ),
                  onPressed: () {
                    Navigator.push(context, 
                    MaterialPageRoute(builder: (context)=> const Reset()),
                    );
                    //signup screen
                  },
                ),
              ),
               TextButton(
                  child: const Text(
                    'Are you a pharmacist?',
                    style: TextStyle(fontSize: 15,
                     color: Colors.cyan,
                  ),
                  ),
                  onPressed: () {  Navigator.push(context, 
                    MaterialPageRoute(builder: (context)=>  Home()),
                    );
                    //signup screen
                   
                 
                    //signup screen
                  },
                ),


               Container(
                  
                width: 330,
                    height: 60,
                    
                    child: ElevatedButton(
                     
                     style: ElevatedButton.styleFrom(
                       shape: new RoundedRectangleBorder(
                         borderRadius: new BorderRadius.circular(20)
                       ),
                    primary: Colors.cyan[800]),
                      child: const Text('LOG IN',
                      style: TextStyle(
                        fontFamily:'Berlin Sans FB',
                        fontSize: 20,
                        color: Colors.white,
                        height: 0.53333,
                      ),
                        textHeightBehavior:
                      TextHeightBehavior(applyHeightToFirstAscent: false),
                  textAlign: TextAlign.center,
                      ),
                      onPressed: () {
                        if (_formKey.currentState!.validate()){
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Processing Data')),
          
                          );
                        }
                        Navigator.push(context, 
                        MaterialPageRoute(builder: (context)=>  Home()),
                         ); //signup screen
                      },
                    )
                ),
                         Container(
                           padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                           child: Row(
            children: <Widget>[
                SizedBox(height: 30),
                Text('Don t have an account?', style: TextStyle(color: Colors.black, fontSize: 15),),
                TextButton(
                  child: const Text(
                    'create a new account',
                    style: TextStyle(fontSize: 10,
                     color: Colors.cyan,
                  ),
                  ),
                  onPressed: () {

                    //signup screen
                  },
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
                         ),

        ]
      ),
    
    );
  }
}
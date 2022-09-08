import 'package:eljoker_ps/main.dart';
import 'package:flutter/material.dart';


import 'adminpanel.dart';
import 'menu.dart';
import 'models/timemodel.dart';

var accounts;
var psinfo;
var drinksinfo;
var orderinfo;
var psgetter;
List<orders> ordermodels = [];
class Login extends StatefulWidget {

  @override
  _LoginState createState() => _LoginState();


}

class _LoginState extends State<Login> {
  var loginform = GlobalKey<FormState>();
  var passController = TextEditingController();
  var userController = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey[900],
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              child: Container(
                width: double.infinity,
                child: Form(
                  key: loginform,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image(
                        image: AssetImage('assets/images/ps.png'),
                        width: 260,
                      ),
                      Text(
                        'El Jooker',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Enter Username',
                          border: OutlineInputBorder(),
                          labelStyle: TextStyle(color: Colors.grey),
                          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),

                        ),

                        keyboardType: TextInputType.text,
                        validator: (value){
                          if(value == ''){
                            return 'username cannot be empty';
                          }
                        },
                        style: TextStyle(color: Colors.white),
                        controller: userController,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Enter Password',
                          border: OutlineInputBorder(),
                          labelStyle: TextStyle(color: Colors.grey),
                          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),

                        ),
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: true,
                        validator: (value){
                          if(value == ''){
                            return 'password cannot be empty';
                          }
                        },
                        style: TextStyle(color: Colors.white),
                        controller: passController,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      MaterialButton(
                        onPressed: ()async
                        {
                          if(loginform.currentState!.validate()){
                            if(userController.text == usersbox.get('acc2')['username']){
                              if(passController.text == usersbox.get('acc2')['password']){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => admin()));
                                passController.text = '';
                                userController.text = '';
                              }
                            }
                            else if(userController.text == usersbox.get('acc1')['username']){
                              if(passController.text == usersbox.get('acc1')['password']){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => menu()));
                                passController.text = '';
                                userController.text = '';
                              }
                            }
                            else{
                              print('wrong username or password');
                            }
                          }


                        },
                        child: Text('Login',style: TextStyle(color : Colors.black),),
                        color: Colors.blueGrey[300],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
      );
  }
}

Future<void> getpsnew(i) async{
  psgetter = await psbox.get('${i}');
}
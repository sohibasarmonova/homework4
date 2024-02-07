
import 'package:flutter/material.dart';
import 'package:uzum_market/pages/signup_page.dart';
import 'home_page.dart';

class LoginPage extends StatefulWidget {
  static const String id = 'login_page';
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  String _email = "sohiba@gmail.com";
  String _password = "12345678";

  _doLogin() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      Navigator.pushReplacementNamed(context, HomePage.id);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Form(
        key: _formKey,


         child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(child: Container()),
            Text("Instagram", style: TextStyle(fontSize: 25)),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: TextFormField(
                decoration: InputDecoration(labelText: "Email"),
                validator: (input) => input!=_email ? "Your email is incorrect" : null,
                //onSaved: (input) => _email = input,
              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: TextFormField(
                decoration: InputDecoration(labelText: "Password"),
                validator: (input) => input!=_password ? "Your password is incorrect" : null,
                //onSaved: (input) => _password = input,
                obscureText: true,
              ),
            ),




            Container(


              margin: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
              height: 45,
              width: double.infinity,
              child: MaterialButton(
                color: Colors.blue,
                textColor: Colors.white,
                child: Text("Log In"),
                onPressed: (){
                  _doLogin();
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                ),
              ),
            ),


Expanded(child:

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Don\'t have an account?"),
                GestureDetector(
                  onTap: (){
                    Navigator.pushReplacementNamed(context, SignUpPage.id);
                  },
                  child: Text(
                    "Sign Up",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),

                  ),
                ),
              ],
            ),
            ),
          ],
        ),
      ),
    );
  }
}

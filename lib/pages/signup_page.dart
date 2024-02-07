import 'package:flutter/material.dart';
import 'package:uzum_market/pages/Home_page.dart';
import 'package:uzum_market/pages/login_page.dart';
class SignUpPage extends StatefulWidget {
  static const String id = 'signup_page';
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();
  String? _name;
  String? _email;
  String? _password;

  _doSignUp() {
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
            Text('Instagram', style: TextStyle(fontSize: 30)),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: TextFormField(
                decoration: InputDecoration(labelText: 'Name'),
                validator: (input) => input!.isEmpty ? 'Please, enter your name' : null,
                onSaved: (input) => _name = input,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: TextFormField(
                decoration: InputDecoration(labelText: 'Email'),
                validator: (input) => !input!.contains('@') ? 'Please enter a valid email' : null,
                onSaved: (input) => _email = input,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: TextFormField(
                decoration: InputDecoration(labelText: 'Password'),
                validator: (input) => input!.length < 6 ? 'Must be at least 6 character' : null,
                onSaved: (input) => _password = input,
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
                child: Text('Sign Up'),
                onPressed: () {
                  _doSignUp();
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            Expanded(child:
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Already have an account?'),
                GestureDetector(
                  onTap: (){
                    Navigator.pushReplacementNamed(context, LoginPage.id);
                  },
                  child: Text(
                    'Log In',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            )
            ),
          ],
        ),
      ),
    );
  }
}

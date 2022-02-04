import 'package:brew_crew/presentation/screens/authenticate/authenticate.dart';
import 'package:brew_crew/presentation/screens/authenticate/components/auth.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  final Function toogleView;

  const SignIn({Key? key, required this.toogleView}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthService _auth = AuthService();

  //text field state
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      appBar: AppBar(
        backgroundColor: Colors.brown[400],
        elevation: 0.0,
        centerTitle: false,
        leadingWidth: 0.0,
        title: Text('Sign in to Brew Crew'),
        actions: [
          TextButton.icon(
            onPressed: widget.toogleView(),
            style: TextButton.styleFrom(primary: Colors.brown[900]),
            icon: Icon(Icons.person),
            label: Text('Sign In'),
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
        child: Form(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              TextFormField(onChanged: (val) {
                setState(() {
                  email = val;
                });
              }),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                onChanged: (val) {
                  setState(() {
                    password = val;
                  });
                },
                obscureText: true,
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () async {
                  print(email);
                  print(password);
                },
                style: ElevatedButton.styleFrom(primary: Colors.pink),
                child: Text(
                  'Sign in',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

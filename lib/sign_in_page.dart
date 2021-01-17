import 'package:instagram_ui/authentication_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SignInPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Column(
        children: [
          SafeArea(
            child: TextField(
              controller: emailController,
              decoration: InputDecoration(
                labelText: "Email",
              ),
            ),
          ),
          TextField(
            controller: passwordController,
            decoration: InputDecoration(
              labelText: "Password",
            ),
          ),
          RaisedButton(
            onPressed: () {
              context.read<AuthenticationService>().signIn(
                email: emailController.text.trim(),
                password: passwordController.text.trim(),
              );
            },
            child: Text("Sign in"),
          ),
          SizedBox(height: 50.0,),
          Flexible(

            child: Image.asset("assets/images/insta.png",width: 100.0,),
          ),
          SizedBox(height: 50.0,),
          Flexible(

            child: Image.asset("assets/images/insta_logo.png",width: 250.0,),
          ),
        ],
      ),
    );
  }
}

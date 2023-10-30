import 'package:flutter/material.dart';
import 'package:zoom_clone/resources/auth_methods.dart';
import 'package:zoom_clone/widgets/custom_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final AuthMethods auth = AuthMethods();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(

        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Start or Join the meet',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),

         Padding(
           padding: const EdgeInsets.symmetric(vertical: 18.0),
           child: Image.asset('assets/images/onboarding.jpg'),
         ),
          CustomButton(text: 'Google sign in', onPressed: () async{
            bool res = await auth.signInWithGoogle(context);
            if(res){
              Navigator.push(context, '/home' as Route<Object?>);
            }
          },),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:zoom_clone/resources/auth_methods.dart';
import 'package:zoom_clone/screens/home_screen.dart';
import 'package:zoom_clone/screens/login_screen.dart';
import 'package:zoom_clone/utility/colors.dart';
import 'package:firebase_core/firebase_core.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: "YOUR_API_KEY",
      appId: "YOUR_APP_ID",
      projectId: "YOUR_PROJECT_ID",
      messagingSenderId: "YOUR_MESSAGING_SENDER_ID",
      measurementId: "YOUR_MEASUREMENT_ID", // Optional
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Zoom Clone',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
      ),
      routes: {
        '/login': ((context) => LoginScreen()),
        '/home': ((context)=> HomeScreen()),
      },
      home: StreamBuilder(stream: AuthMethods().authChanges, builder:(context, snapshot)
      {
        if( snapshot.connectionState== ConnectionState.waiting){
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        if( snapshot.hasData){
          return const HomeScreen();
        }
        return LoginScreen();
      },
      )
    );
  }
}

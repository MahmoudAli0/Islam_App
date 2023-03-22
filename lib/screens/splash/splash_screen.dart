
import 'package:flutter/material.dart';
import 'package:sb7a/screens/home/home_screen.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    // TODO: implement initState
    Future.delayed(const Duration(seconds: 4),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
        return  HomeScreen();
      }));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Image(
                image: AssetImage('images/appSplash.png'),
              ),
              SizedBox(height:20),
              Text('حياة المسلم ')
            ],
          ),
        ),
      ),
    );
  }
}
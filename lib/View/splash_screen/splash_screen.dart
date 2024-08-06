import 'package:ecommerce/Consts/consts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../Widget_common/applogo.dart';
import '../auth_screen/login_screen.dart';

class Splashscreen extends StatefulWidget{
  const Splashscreen({Key? key}): super(key: key);
  
  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen>{


  //creating a method of changing screen
  changeScreen() {
    Future.delayed(const Duration(seconds: 3), () {
      //using getX
     Get.to(() => const LoginScreen());
    });
  }
  @override
  void initState(){
    changeScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            applogo(),
            10.heightBox,
            appname.text.fontFamily(bold).size(22).white.make(),
            20.heightBox,
            credits.text.white.fontFamily(semibold).make(),
            10.heightBox,
          ],
        ),
      ),

    );
  }
}



import 'package:ecommerce/Consts/consts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../Widget_common/applogo.dart';
import '../../Widget_common/bg_widget.dart';
import '../../Widget_common/custom_txtfield.dart';
import '../../Widget_common/our_button.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}
class _SignupScreenState extends State<SignupScreen> {
  bool? isCheck = false;

  @override
  Widget build(BuildContext context) {
    return bgwidget(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Center(
            child: Column(
              children: [
                (context.screenHeight * 0.1).heightBox,
                applogo(),
                5.heightBox,
                "Join the $appname".text.fontFamily(bold).white.size(18).make(),
                15.heightBox,
                Column(
                  children: [
                    customTextField(hint: namehint, title: name),
                    customTextField(hint: emailHint, title: email),
                    customTextField(hint: passwordHint, title: password),
                    customTextField(hint: passwordHint, title: retypePassword),
                    Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(onPressed: (){
                        }, child: forgetPass.text.make())
                    ),
                    
                    Row(
                      children: [
                        Checkbox(checkColor: Colors.grey,value: isCheck, onChanged: (newValue){
                          setState(() {
                            isCheck = newValue;
                          });
                        },
                        ),
                        10.widthBox,
                        Expanded(
                          child: RichText(text: const TextSpan(
                            children: [
                              TextSpan(
                                text: "I agree to the",
                                style: TextStyle(
                                  fontFamily: regular,
                                  color: fontGrey
                                )
                              ),
                              TextSpan(
                                  text: termAndCond,
                                  style: TextStyle(
                                      fontFamily: regular,
                                      color: fontGrey
                                  )
                              ),
                              TextSpan(
                                  text: "&",
                                  style: TextStyle(
                                      fontFamily: regular,
                                      color: fontGrey
                                  )
                              ),
                              TextSpan(
                                  text: privacyPolicy,
                                  style: TextStyle(
                                      fontFamily: regular,
                                      color: Colors.blueAccent
                                  )
                              ),
                            ]
                          )),
                        )
                        
                      ],
                    ),
                    5.heightBox,
                    ourButton(color: isCheck == true? darkFontGrey : fontGrey,title: signup,textColor: whiteColor,onPress: (){}).box.width(context.screenWidth-50).make(),
                    10.heightBox,
                    // wrapping into gesture detector of   velocity X
                    RichText(text: const TextSpan(
                      children: [
                        TextSpan(
                          text: alreadyHaveAccount,
                          style: TextStyle(fontFamily: bold,color: fontGrey)
                        ),
                        TextSpan(
                            text: login,
                            style: TextStyle(fontFamily: bold,color: Colors.blueAccent)
                        ),
                      ]
                    ),
                    ).onTap(() { 
                      Get.back();
                    })
                  ],
                ).box.white.rounded.padding(const EdgeInsets.all(16)).width(context.screenWidth-70).shadowSm.make(),
              ],

            ),
          ),
        )
    );
  }
  }

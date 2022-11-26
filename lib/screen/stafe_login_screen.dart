import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nfcapplication/screen/visitor_login_screen.dart';

import '../widged/button_widget.dart';
import '../widged/heder_conteinar.dart';
import '../widged/textfild_widget.dart';
import 'forget_password_screen.dart';
class StafeLoginScreen extends StatefulWidget {
  const StafeLoginScreen({Key? key}) : super(key: key);
  @override
  State<StafeLoginScreen> createState() => _StafeLoginScreenState();
}

class _StafeLoginScreenState extends State<StafeLoginScreen> {
  final TextEditingController idControllar=TextEditingController();
  final TextEditingController passwordcontrollar=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Align(
            alignment: Alignment.center,
            child: Column(
              children: [
                HederConteinar(),
                Text('Stafe Login',style: GoogleFonts.aclonica(
                    textStyle: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 25,color: Colors.white)),),

                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Text('ID',style: GoogleFonts.alata(
                          textStyle: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15,color: Colors.white)),),
                    ),
                    TextFildWidget(name: 'Id',controller: idControllar,),
                    Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Text('password',style: GoogleFonts.alata(
                            textStyle: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15,color: Colors.white)))),
                    TextFildWidget(name: 'password', controller: passwordcontrollar),

                    Padding(
                      padding: const EdgeInsets.only(right: 16),
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: InkWell(
                          onTap: (){
                            Navigator.push(context,MaterialPageRoute(builder: (_)=>ForgetPasswordScreen()));
                          },
                          child: Text('Forget Password?',style: GoogleFonts.alata(
                              textStyle: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15,color: Colors.white))),
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                  ],
                ),
                ButtonDesign(buttonname: 'Login',onTab: (){},),
                SizedBox(height: 10,),
                ButtonDesign(buttonname: 'NextPage',onTab: (){
                   Navigator.push(context,MaterialPageRoute(builder: (_)=>VisitorLoginScreen()));
                },)

              ],
            ),
          ),
        ),
      ),
    );
  }
}
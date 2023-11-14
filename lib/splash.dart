
import 'package:shop_mart/onboard_screens.dart';
import 'package:flutter/material.dart';


class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key:key);

  @override
State<Splash> createState() => _SplashState();

}

class _SplashState extends State<Splash> {
@override
void initState(){
    super.initState();
    _navigatetohome();

   }
   _navigatetohome() async {
    await Future.delayed(const Duration(milliseconds:180),() {});
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => OnBoardScreen1()));

   }
  @override

  Widget build(BuildContext context) {
    return const  Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child:Image(
          fit: BoxFit.cover,
          
          image: AssetImage("assets/ovenfresh.png")),
        
             
      
      ),
      
    );
  }
}


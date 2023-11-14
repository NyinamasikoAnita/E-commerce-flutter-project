import 'package:flutter/material.dart';
import 'package:shop_mart/registration.dart';

class OnBoardScreen1 extends StatelessWidget {
  const OnBoardScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
      child: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 80.0,
            ),
            const Image(
              image: AssetImage("assets/bakery.png")),

              const SizedBox(
                height: 30.0,
              ),
            const Text("Welcome to OvenFresh", 
            style: TextStyle(
                 fontSize: 30.0,
                //  fontWeight: FontWeight.bold,
                 color: Colors.black


            ),
            textAlign: TextAlign.center,
            ),
            const SizedBox(
               height: 100.0,
            ),
            ElevatedButton(onPressed:(){
              Navigator.push(
                context,
                MaterialPageRoute(builder:(context)=> const OnBoardScreen2()),);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 104, 3, 3),
              
            ),
            child: const Text("Get Started", 
            style:
            TextStyle(
              color: Colors.white,
              fontSize: 20.0)
              ),
            
        )
        ],
        ),

      ),
    ));
  }
}

class OnBoardScreen2 extends StatelessWidget {
 const OnBoardScreen2 ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
      child: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 30.0,
            ),
          const  Image(
              
               image: AssetImage("assets/basket.png") ),

               const SizedBox(
                height: 20.0,
               ),
            const Text("Shop favourite pastry at low prices and discounts",
            style:TextStyle(fontSize:30.0,
            // fontWeight: FontWeight.bold,
            color: Colors.black,
            ),
            textAlign: TextAlign.center, 

            ),

            const SizedBox(
              height: 150.0,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(onPressed:() {
                  Navigator.pop(context, MaterialPageRoute(builder:(context)=> const OnBoardScreen2()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 104, 3, 3),
                
                ),
                
                child: const Text("Back",style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
                ),

                
                ),


                ElevatedButton(onPressed:() {
                  Navigator.push(context, MaterialPageRoute(builder:(context)=> const OnBoardScreen3()));
                },
                
                style: ElevatedButton.styleFrom(
                  backgroundColor:const  Color.fromARGB(255, 104, 3, 3),
                ),

                child: const Text("Next",style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
                ),
                
            )
            ],
            )
          ],
        ),
      ),
    ));
  }
}
class OnBoardScreen3 extends StatelessWidget {
  const OnBoardScreen3 ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
      child:Center(
        child: Column(
          children: [
           const SizedBox(
              height:80.0,
            ),

            const Image(
               image: AssetImage("assets/delivery.png"),
            ),

            const SizedBox(
              height:30.0,
            ),
            const Text("We deliver up to your doorstep",
            style: TextStyle(
              fontSize: 30.0,
              color: Colors.black,
              // fontWeight: FontWeight.bold,
            ),

            textAlign: TextAlign.center,
            ),

            const SizedBox(
              height:80.0
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(onPressed:() {
                  Navigator.pop(context, MaterialPageRoute(builder:(context)=> const OnBoardScreen2()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 104, 3, 3),
                ),
                
                child: const Text("Back",
                style: TextStyle(
                  color:Colors.white,
                  fontSize: 20.0,
                ),
                     
                
                ),
                ),
                ElevatedButton(onPressed:() {
                  Navigator.push(context, MaterialPageRoute(builder:(context)=> const RegistrationScreen()));
                },

                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 104, 3, 3)
                ),
                
                child: const Text("Done",
                style: TextStyle(
                  color:Colors.white,
                  fontSize: 20.0,
                ),
                ),
                ),
              ],
            )
          ],)
          ) ,
    )
    )
    ;
  }
}
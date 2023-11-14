import 'package:flutter/material.dart';
import 'package:shop_mart/sign_up.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child:Column(
           mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Card(
              borderOnForeground:true ,
              // color: Colors.grey,
              margin: const EdgeInsets.all(30.0),
               child: Center(
                child:Column(
                  children: [
                  const Icon(
                    Icons.person,
                    size: 100.0,
                    color: Color.fromARGB(255, 104, 3, 3),),

                   SizedBox(
                      height: MediaQuery.of(context).size.height *0.03,
                   ),
                    
                const Text("Login", style: TextStyle(
                color: Color.fromARGB(255, 104, 3, 3),
                fontSize:30.0,
                fontWeight: FontWeight.bold
              ),
              ),

             const SizedBox(
                height: 50.0,
              ),
            
              Padding(
                padding:const EdgeInsets.only(left: 40.0,right:40 ),
              child:TextFormField(
                keyboardType: TextInputType.emailAddress,
                obscureText: false,
                controller:emailController ,
                style:const TextStyle(
                  color: Colors.white,

                ),
                // textAlign:TextAlign.center,
                cursorColor: Colors.white,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(width: 2.0),
                    borderRadius: BorderRadius.all(Radius.circular(10.0))
                  ),
                  isDense: true,
                  suffixIcon: Icon(Icons.email,
                  color: Color.fromARGB(255, 104, 3, 3),
                  size: 25.0,),
                  focusColor: Colors.white,
                  hintText: "Email address",
                ),
              ) ,
             ),
               
             
             SizedBox(
              height: MediaQuery.of(context).size.height *0.03,
             ),
              Padding(
              padding: const EdgeInsets.only(left: 40.0,right:40.0 ),
              child:TextFormField(
                keyboardType: TextInputType.visiblePassword,
                obscureText: false,
                controller:passwordController ,
                style: const TextStyle(
                  color: Colors.white,

                ),
                // textAlign:TextAlign.center,
                cursorColor: Colors.white,
                decoration:const  InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(width: 2.0),
                    borderRadius: BorderRadius.all(Radius.circular(10.0))
                  ),
                  isDense: true,
                  suffixIcon: Icon(Icons.lock,
                  color: Color.fromARGB(255, 104, 3, 3),
                  size: 25.0,),
                  focusColor: Colors.white,
                  hintText: "password",
                ),
              ) ,
            
             ),

             SizedBox(
              height: MediaQuery.of(context).size.height *0.03,
             ),
             ElevatedButton(onPressed:(){
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder:(context)=>  SignUpScreen ()),);
             },
             style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 104, 3, 3),
             ),

             child: const Text("Submit",
             style:TextStyle(
              color:Colors.white,
              fontSize: 20.0)
              ),
             ),
                

            SizedBox(
              height: MediaQuery.of(context).size.height *0.03,
             ),

             
              Padding(
                padding: const EdgeInsets.only(bottom: 40.0),
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap:(){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) =>const SignUpScreen()));
                  },
                child:  const Text("Don't have an account SignUp",
                  style: TextStyle(color:Color.fromARGB(255, 104, 3, 3)),)
                )
                 
               ,
                 const Text("Forgot Password?",
               style: TextStyle(color: Color.fromARGB(255, 104, 3, 3)),)
                  
                ],
             ),
             )
                  ],
                )
                
              
              
             
             )
             )

            
        
        ],
          
      ),
        
      
    )
    );
  }
}








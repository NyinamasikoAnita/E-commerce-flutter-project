import 'package:flutter/material.dart';
import 'package:shop_mart/homepage.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  var selectedGender;
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              
              Container(
                
                margin:const EdgeInsets.all(20.0),
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 243, 241, 241),
                  borderRadius: BorderRadius.all(Radius.circular(8.0))
                ),
                child: Center(
                  child:Column(
                    children: [
                    const Icon(
                      Icons.person,
                      size: 100.0,
                      color:Color.fromARGB(255, 104, 3, 3),),
             const SizedBox(
              height: 1.0,
             ),
              
                const Text("SignUp", style: TextStyle(
                color: Colors.black,
                fontSize:30.0,
                fontWeight: FontWeight.bold
              ),
              ),
            
             const  SizedBox(
              height: 15.0,
             ),

              Padding(
              padding:  const EdgeInsets.only(left: 30.0,right:30 ),
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
                  suffixIcon: Icon(Icons.person,
                  color: Color.fromARGB(255, 104, 3, 3),
                  size: 25.0,),
                  focusColor: Colors.white,
                  hintText: "Enter your name",
                ),
              ) ,
            
             ),

            const SizedBox(
              height: 15.0,
            ),

            Padding(
              padding:  const EdgeInsets.only(left: 30.0,right:30 ),
              child:TextFormField(
                keyboardType: TextInputType.name,
                obscureText: false,
                controller:nameController ,
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
                  hintText: "Enter your email",
                ),
              ) ,
            ),

            const SizedBox(
              height:15.0
            ),

            Padding(
              padding:  const EdgeInsets.only(left: 30.0,right:30 ),
              child:TextFormField(
                keyboardType: TextInputType.visiblePassword,
                obscureText: false,
                controller:passwordController ,
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
                  suffixIcon: Icon(Icons.lock_open,
                  color: Color.fromARGB(255, 104, 3, 3),
                  size: 25.0,),
                  focusColor: Colors.white,
                  hintText: "Enter your password",
                ),
              ) ,
            ),

               const SizedBox(
              height:15.0,
              ),
              const Text("Select your Gender", style:TextStyle(
                color: Color.fromARGB(255, 104, 3, 3),
                fontSize: 15.0,
                fontWeight: FontWeight.bold
              )),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
            
                children: [
                  Radio(
                    value: "Female",
                     groupValue: selectedGender, 
                     onChanged: (value){
                      setState(() {
                        selectedGender = value;
                      });
                     }),
                    const Text("Female",
                    style: TextStyle(color: Colors.black),),
                 const  SizedBox(
                    width: 3.0,
                  ),
                  Radio(
                    value: "male",
                     groupValue: selectedGender, 
                     onChanged: (value){
                      setState(() {
                        selectedGender = value;
                      });
                     }),
                    const Text("Male", style: TextStyle(
                      color: Colors.black,
                    ),),
                     
                ],
            ),
            const SizedBox(
              height:15.0,
            ),

            Padding(
              padding:const EdgeInsets.only(bottom:30.0),
            child:ElevatedButton(
              onPressed:(){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const HomePage()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor:const Color.fromARGB(255, 104, 3, 3),
              ),
            
              child: const Text("Submit",
              style:TextStyle(
                color: Colors.white,
                fontSize: 20.0),
              
              )

                  ))],
                  )
                )
              )
               
              

          ],
        )
        )
    );
  }
}
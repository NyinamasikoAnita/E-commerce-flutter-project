import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 final TextEditingController _searchController = TextEditingController();
 int myIndex = 0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor:const Color.fromARGB(255, 104, 3, 3),
        title: TextField(
          controller: _searchController,
          style: const TextStyle(color: Colors.white),
          cursorColor: Colors.white,
          decoration: const InputDecoration(
            hintText: 'Search products...',
            hintStyle: TextStyle(color: Colors.black87),
            border: OutlineInputBorder(
              borderRadius:BorderRadius.all(Radius.circular(10.0)),
              ),
              isDense: true,
              filled: true,
              fillColor: Colors.white,
              
            ),
          ),
          actions: [
            IconButton(onPressed: (){}, 
            icon: const Icon(Icons.account_circle_rounded,
             color: Colors.white, 
            )
            ),

            IconButton(onPressed:(){}, 
            icon: const Icon(Icons.shopping_cart,color:Colors.white
            )
            )
          ],
        
          
        ),

      
      body: 
            ListView( 
              children: [ 
              const SizedBox(
               height:10.0,
          ),
          
          const Text("Promotions",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color:  Color.fromARGB(255, 104, 3, 3)
          ),),
          CarouselSlider( 
              items: [ 
                  
                //1st Image of Slider 
                Container(
                  

                  
                  width: 200.0,
                  height: 100.0,
                  margin: const EdgeInsets.all(6.0), 
                  decoration: const BoxDecoration(
                    
                    shape: BoxShape.rectangle,
                    image:  DecorationImage( 
                      image: AssetImage("assets/cake.jpg"), 
                      fit: BoxFit.cover,
                       
                    ), 
                  ),
                  child:const Column(
                    children: [
                      Text("vaniila  inch cake"),
                      Text("10% off this friday")
                    ],
                  ), 
                ), 
                  
                //2nd Image of Slider 
                Container(
                  width: 200.0,
                  height: 150.0, 
                  margin: const EdgeInsets.all(6.0), 
                  decoration: BoxDecoration( 
                    borderRadius: BorderRadius.circular(8.0), 
                    image: 
                      const DecorationImage( 
                      image: AssetImage("assets/cake2.jpg"), 
                      fit: BoxFit.cover, 
                    ), 
                  ), 
                  child:const Column(
                    children: [
                      Text("8 inch cake"),
                      Text("10% off this friday")
                    ],
                  ),
                ), 
                  
                //3rd Image of Slider 
                Container(
                  width: 200.0,
                  height: 150.0, 
                  margin: const EdgeInsets.all(6.0), 
                  decoration: BoxDecoration( 
                    borderRadius: BorderRadius.circular(8.0), 
                    image: const DecorationImage( 
                      image:AssetImage("assets/slice.jpg"), 
                      fit: BoxFit.cover, 
                    ),
                     
                  ),
                  child:const Column(
                    children: [
                      Text("Cake slice"),
                      Text("Buy one get one free!")
                    ],
                  ),
                   
                ), 
                  
                //4th Image of Slider 
                Container(
                  width: 200.0,
                  height: 150.0, 
                  margin: const EdgeInsets.all(6.0), 
                  decoration: BoxDecoration( 
                    borderRadius: BorderRadius.circular(8.0), 
                    image: const DecorationImage( 
                      image:  AssetImage("assets/cake.jpg"), 
                      fit: BoxFit.cover, 
                    ), 
                  ),
                  child:const Column(
                    children: [
                      Text("8 inch cake"),
                      Text("10% off this friday")
                    ],
                  ), 
                ), 
                  
                //5th Image of Slider 
                Container( 
                  width: 200.0,
                  height: 150.0,
                  margin: const EdgeInsets.all(6.0), 
                  decoration: BoxDecoration( 
                    borderRadius: BorderRadius.circular(8.0), 
                    image: const DecorationImage( 
                      image: AssetImage("assets/cake2.jpg"), 
                      fit: BoxFit.cover, 
                    ), 
                  ),
                  child:const Column(
                    children: [
                      Text("8 inch cake"),
                      Text("10% off this friday")
                    ],
                  ), 
                ), 
  
          ], 
              
            //Slider Container properties 
              options: CarouselOptions( 
                height: 180.0, 
                enlargeCenterPage: true, 
                autoPlay: true, 
                aspectRatio: 16 / 9, 
                autoPlayCurve: Curves.fastOutSlowIn, 
                enableInfiniteScroll: true, 
                autoPlayAnimationDuration: const Duration(milliseconds: 800), 
                viewportFraction: 0.8, 
              ), 
          ),
        

// categories row.

          const SizedBox(
               height:10.0,
          ),
          const Text("Our Categories",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color:  Color.fromARGB(255, 104, 3, 3)
          ),),
        
        
        const SingleChildScrollView(
          scrollDirection:Axis.horizontal,
          child:Row(
            
             children: [
              Card(
                child:
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("cakes"),
                    Image(
                      width: 200.0,
                      height: 150.0,
                      fit: BoxFit.cover,
                      image: AssetImage("assets/cake.jpg")
                      ),
                      
                  ],
                ) ,
                
              ),
              SizedBox(
                width: 30.0,
              ),

              Card(
                child:
                  Column(
                  children: [
                    Text("Bread"),
                    Image(
                      width: 200.0,
                      height: 150.0,
                      fit: BoxFit.cover,
                      image: AssetImage("assets/cake.jpg")
                      )
                  ],
                ) ,
                
              ),
              SizedBox(
                width: 30.0,
              ),

              Card(
                child:
                Column(
                  children: [
                    Text("Pizza"),
                    Image(
                      width: 200.0,
                      height: 150.0,
                      fit: BoxFit.cover,
                      image: AssetImage("assets/cake.jpg")
                      ),
                      
                      
                  ],
                ) ,
                
              )
             ],
            
          ),
        ),
      

// products row.

        const SizedBox(
               height:10.0,
          ),

        const Text("Our Products",
        style: TextStyle(
            fontWeight: FontWeight.bold,
            color:  Color.fromARGB(255, 104, 3, 3)
          ),),
      SingleChildScrollView(
          scrollDirection:Axis.horizontal,
          child:Row(
             children: [
              Card(
                child:
                Column(
                  children: [
                    
                    const Image(
                      width: 200.0,
                      height: 150.0,
                      fit: BoxFit.cover,
                      image: AssetImage("assets/slice.jpg")
                      ),
                      const Text("Vanilla cake"),
                     const  SizedBox(
                         height: 8.0,
                      ),
                      const Text("Price:80000 Ugx"),

                      const SizedBox(
                        height:10.0 ,
                      
                      ),
                      ElevatedButton(onPressed: (){}
                      ,

                      style: ElevatedButton.styleFrom(
                  backgroundColor:const  Color.fromARGB(255, 104, 3, 3),
                  // fixedSize:const  Size(50,50)
                  
                
                ), 
                      child: const Text("Add to Cart",style: TextStyle(
                  color: Colors.white,
                  fontSize: 12.0,
                ),
                ),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 10.0))
                  ],
                ) ,
                
                
              ),

             const SizedBox(
                width: 30.0,
              ),

               Card(
                child:
                Column(
                  children: [
                    
                    const Image(
                      width: 200.0,
                      height: 150.0,
                      fit: BoxFit.cover,
                      image: AssetImage("assets/slice.jpg")
                      ),
                      const Text("Cupcakes"),
                      const  SizedBox(
                         height: 8.0,
                      ),
                      const Text("Price:80000 Ugx"),
                      const SizedBox(
                        height: 10.0,
                      ),
                      ElevatedButton(onPressed: (){}
                      ,

                      style: ElevatedButton.styleFrom(
                  backgroundColor:const  Color.fromARGB(255, 104, 3, 3),
                  
                
                ), 
                      child: const Text("Add to Cart",style: TextStyle(
                  color: Colors.white,
                  fontSize: 12.0,
                ),
                ),
                ),
                 const Padding(
                  padding: EdgeInsets.only(bottom: 10.0))
                  ],
                ) ,
                
              ),

              const SizedBox(
                width: 30.0,
              ),

              Card(
                child:
                Column(
                  children: [
                    
                    const Image(
                      width: 200.0,
                      height: 150.0,
                      fit: BoxFit.cover,
                      image: AssetImage("assets/slice.jpg")
                      ),
                      const Text("Bans"),
                      const SizedBox(
                        height:8.0), 
                      const Text("Price:80000 Ugx"),

                      const SizedBox(
                        height:10.0 ),
                      ElevatedButton(onPressed: (){}
                      ,

                      style: ElevatedButton.styleFrom(
                  backgroundColor:const  Color.fromARGB(255, 104, 3, 3),
                  
                
                ), 
                      child: const Text("Add to Cart",style: TextStyle(
                  color: Colors.white,
                  fontSize: 12.0,
                ),
                ),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 10.0))

                  ],
                ) ,
                
              ),
              const SizedBox(
                width: 30.0,
              ),
             ],
            
          ),
        ),

              ]                 
          ),
          
          
          
        
    
        bottomNavigationBar:BottomNavigationBar(
          selectedItemColor: const Color.fromARGB(255, 54, 4, 4),
          onTap: (index){
            setState(() {
              myIndex=index;
            });
          },
          currentIndex:myIndex ,


          items:const[
             BottomNavigationBarItem(
              icon: Icon(Icons.home,color: Colors.black,),
              label: "Home"
              ),

              BottomNavigationBarItem(
              icon: Icon(Icons.settings,color: Colors.black),
              label: "Settings"
              ),

              BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_rounded,color: Colors.black),
              label: "Orders"
              ),

              // BottomNavigationBarItem(
              // icon: Icon(Icons.more),
              // label: "More"
              // ),
            
        ])
        
      
          

      
      

  
      );
      
      
    
    
  }
}
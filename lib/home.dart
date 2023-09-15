import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:admob_flutter/admob_flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
   body: SafeArea(
     child: DefaultTabController(
       length: 5,
       child: Column(
         children: [

              Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,

               children: [
                 const Padding (
                   padding:  EdgeInsets.only(left: 15, top: 15),
                   child:  CircleAvatar(
                     backgroundImage: AssetImage('assets/img/Profile picture.jpg'),
                   ),
                 ),

                 Padding(
                   padding:  const EdgeInsets.only(right: 180, top: 15),
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text('Welcome', style: GoogleFonts.roboto(
                           textStyle:  TextStyle(color: Colors.grey.shade700,fontSize: 15)
                       ),),
                       Text('Mary Smith', style: GoogleFonts.roboto(
                           textStyle: const TextStyle(color: Colors.black,fontSize: 20)
                       ),),
                     ],
                   ),
                 ),

                 Padding(
                   padding: const EdgeInsets.only(right: 15, top: 15),
                   child: Container(
                     width: 40,
                     height: 40,
                     decoration: BoxDecoration(
                       color: Colors.lightBlueAccent.shade100,

                       borderRadius: BorderRadius.circular(50)
                     ),
                     child:  const Icon(Icons.shopping_cart_rounded, color: Colors.blue,),
                   ),
                 )

               ],
             ),

  const SizedBox(height: 20,),

           Container(
             width: 380,
             child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search your need',

                    suffixIcon: const Icon(Icons.search, color: Colors.blueAccent,),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.grey)
                    )
                  ),


             ),
           ),
        const  SizedBox(height: 20,),

           Container(
             padding: const EdgeInsets.only(left: 10, right: 10, ),
             height: 200,
             width: 380,

             decoration: BoxDecoration(
               color: Colors.blueAccent.shade100,
               borderRadius: BorderRadius.circular(10)
             ),
           ),
           const SizedBox(height: 10,),
            Padding(
               padding:const EdgeInsets.all(18),
             child: Column(
               children: [
                 Container(
                   height:45 ,
                  // decoration: BoxDecoration(
                  //   color: Colors.lightBlueAccent,
                  //   borderRadius: BorderRadius.circular(25),
                  // ),
                   child: SingleChildScrollView(
                     scrollDirection: Axis.horizontal,
                     child:  TabBar(
                       isScrollable: true,
                       labelColor: Colors.white,
                       labelStyle: const TextStyle(color: Colors.black),
                       indicator: BoxDecoration(
                         color: Colors.blueAccent,

                         borderRadius: BorderRadius.circular(25)
                       ),
                       tabs: const  [
                         Tab(child: Row(
                           children: [
                            Icon(Icons.all_inbox, ) ,
                             SizedBox(width: 5,),
                             Text('All', ),
                           ],
                         ),

                         ),

                         Tab(child: Row(
                           children: [
                             Icon(Icons.all_inbox, color: Colors.black,) ,
                             SizedBox(width: 5,),
                             Text('Vegetables', )
                           ],
                         ),

                         ),


                         Tab(child: Row(
                           children: [
                             Icon(Icons.all_inbox, color: Colors.black,) ,
                             SizedBox(width: 5,),
                             Text('Fruits',)
                           ],
                         ),

                         ),

                         Tab(child: Row(
                           children: [
                             Icon(Icons.all_inbox) ,
                             Text('All', )
                           ],
                         ),

                         ),
                       ],
                     ),
                   ),
                 )
               ],
             ),

           ),

         ],
       ),
     ),
   ),
    );
  }
}

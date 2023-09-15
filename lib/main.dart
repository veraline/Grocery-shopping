import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'home.dart';
import 'package:admob_flutter/admob_flutter.dart';

void main() {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GetStarted(),
    );
  }
}


class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Column(
          children: [
        const Image(
            image: AssetImage('assets/img/background fruit.png')
        ),

               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Anytime,', style: GoogleFonts.roboto(
                    textStyle: const TextStyle(color: Colors.black, fontSize: 35, fontWeight: FontWeight.w500)
                  ),),
                  const SizedBox(width: 10,),
                  Text('Anywhere,', style: GoogleFonts.roboto(
                      textStyle: const TextStyle(color: Colors.blueAccent, fontSize: 35, fontWeight: FontWeight.w500)
                  ),),
                ],
              ),
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Row(
            children: [
              Text('Delivery', style: GoogleFonts.roboto(
                  textStyle: const TextStyle(color: Colors.blueAccent, fontSize: 35, fontWeight: FontWeight.w500)
              ),),
              const SizedBox(width: 10,),
              Text('For Your Peace', style: GoogleFonts.roboto(
                  textStyle: const TextStyle(color: Colors.black, fontSize: 35, fontWeight: FontWeight.w500)
              ),),
            ],
          ),
        ),
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Of Mind.', style: GoogleFonts.roboto(
                      textStyle: const TextStyle(color: Colors.black, fontSize: 35, fontWeight: FontWeight.w500)
                  ),),
                ],
              ),
       const SizedBox(height: 10,),
            Text('Tointo gives you fresh vegetables and', style: GoogleFonts.roboto(
                textStyle: const TextStyle(color: Colors.grey,fontSize: 20)
            ),),
            Text('fruits, order fresh items from tointo', style: GoogleFonts.roboto(
                textStyle: const TextStyle(color: Colors.grey,fontSize: 20)
            ),),
           const  SizedBox(height: 50,),

            GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomePage()), // Replace 'AnotherPage()' with the actual widget of your new page
                );
              },
              child: Container(
                height: 60,
                width: 185,
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(50)
                ),
                child:  Center(
                  child: Text('Get Started', style: GoogleFonts.roboto(
                      textStyle: const TextStyle(color: Colors.white,fontSize: 20)
                  ),),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

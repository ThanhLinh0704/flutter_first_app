// import 'dart:js';

import 'package:first_app/widgets/normal_text_wiget.dart';
import 'package:flutter/material.dart';

class HelloScreen extends StatelessWidget {
  const HelloScreen({super.key});


  @override
  Widget build(BuildContext context) {
    //TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello everyone", style: TextStyle(
          color: Colors.amber,
          fontSize: 30,
          fontWeight: FontWeight.w500,
        ),),
        actions: [

          IconButton(
            onPressed: (){},
            icon: const Icon(Icons.search, color: Colors.blue, size: 30,),
          ),
        ],
      ),


    body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20,),
        child: Column(
          children: [
              Text("This is body", style: TextStyle(
              color: Colors.amber,
              fontSize: 30,
              fontWeight: FontWeight.w500
          ),),
            const SizedBox(height: 10),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              decoration: const BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: const Center(
                child: Text("This is container"),
              ),
            ),
            const SizedBox(height: 10,),
            normalText("This is first widget", Colors.blueGrey)
          ],

    ),
    ),
    //   bottomNavigationBar:Row(
    //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //       children: [
    //         IconButton(
    //           onPressed: () {},
    //           icon: const Icon(Icons.home_rounded),
    //         ),
    //         IconButton(
    //           onPressed: () {},
    //           icon: const Icon(Icons.newspaper),
    //         ),
    //         IconButton(
    //           onPressed: () {},
    //           icon: const Icon(Icons.person),
    //         ),
    //       ],
    // ),
    );
  }
} //widget in flutter,


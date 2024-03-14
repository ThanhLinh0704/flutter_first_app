import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'EditUserProfile.dart';

class UserProfileScreen extends StatefulWidget {
  const UserProfileScreen({super.key});

  @override
  State<StatefulWidget> createState() => _UserProfileStates();

}
class _UserProfileStates extends State<UserProfileScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Profile"),
          ),

          body:  Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Center(
              child: Column(
                children: [
                  InkWell(
                      splashColor: Colors.transparent,
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => EditUserProfileScreen(),));
                      },
                      child: CircleAvatar(
                        radius: 60,
                        backgroundImage: AssetImage("assets/image1.jpg"),
                      ),
                  )
                ],
              ),
            ),
          ),
        )
    );
  }

}
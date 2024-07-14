import 'package:flutter/material.dart';
class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        actions: const [
          Icon(Icons.notification_add)
        ],
      ),
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(radius: 50,
          backgroundColor: Colors.green,),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(),
              SizedBox(width: 15,),
              CircleAvatar(),
              SizedBox(width: 15,),
              CircleAvatar(),
              SizedBox(width: 15,),
              CircleAvatar(),
            ],
          )
        ],
      ),
    );
  }
}

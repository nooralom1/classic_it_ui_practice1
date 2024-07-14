import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("facebook",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 25),),
        actions: const [
          CircleAvatar(
            child: 
            Icon(Icons.add),
          ),
          SizedBox(width: 5,),
          CircleAvatar(
            child: 
            Icon(Icons.search),
          ),
          SizedBox(width: 5,),
          CircleAvatar(
            child: 
            Icon(Icons.menu),
          ),
        ],
      ),
      body: Column
        (
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.home),
              Icon(Icons.people_outline),
              Icon(Icons.messenger_outline),
              Icon(Icons.notifications_none_outlined),
              Icon(Icons.video_collection_outlined),
              Icon(Icons.home_repair_service_rounded),
            ],
          ),
          const SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const CircleAvatar(
                child: Icon(Icons.person),
              ),
              Container(
                height: 30,
                width: 250,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(40)),
                  border: Border.all(color: Colors.black87),
                ),
                child: const Center(
                  child: Text("What's on your mind"),
                ),
              ),
              const Icon(Icons.photo_library_outlined,color: Colors.green,)
            ],
          ),
          const SizedBox(height: 10,),
          Expanded(
            flex: 3,
            child: ListView.builder(
              itemCount: 50,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context,index){
                  return Padding(
                    padding: const EdgeInsets.only(top: 8,bottom: 8,left: 5),
                    child: Container(
                      height: 150,
                      width: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blue,
                      ),
                      child: Image.asset("assets/images/story1.jpg",fit: BoxFit.fill,),
                    ),
                  );
                }),
          ),
          Expanded(
            flex: 6,
            child: ListView.builder(
              itemCount: 50,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemBuilder: (context,index){
                  return Padding(
                    padding: const EdgeInsets.only(top: 8,bottom: 8,left: 5),
                    child: Container(
                      height: 500,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey
                      ),
                      child: Image.asset("assets/images/album.jpg",fit: BoxFit.fill,)
                    ),
                  );
                }),
          ),

        ],
      ),
    );
  }
}

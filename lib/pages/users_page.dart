import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:socialmediaapp/helper/helper_function.dart';

import '../components/my_back_button.dart';

class UserPage  extends StatelessWidget {
  const UserPage ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      backgroundColor:Theme.of(context).colorScheme .background,
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection("Users").snapshots(),
        builder: (context,snapshot){
          if(snapshot.hasError){
            displayMessageToUser("Something went wrong", context);
          }

          if(snapshot.connectionState==ConnectionState.waiting){
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          if(snapshot.data==null){
            return const Text("No data");
          }

          final users= snapshot.data!.docs;

          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: const Row(
                  children: [
                    MyBackButton(),
                  ],
                ),
              ),




              Expanded(
                child: ListView.builder(
                  itemCount: users.length,
                    itemBuilder: (context, index) {
                      final user =users[index];
                
                      return ListTile(
                        title:Text(user['username']) ,
                        subtitle: Text(user['email']),
                      );
                    },),
              ),
            ],
          );
        },
      ),
    );
  }
}

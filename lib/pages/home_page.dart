import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:socialmediaapp/components/my_drawer.dart';
import 'package:socialmediaapp/components/my_post_button.dart';
import 'package:socialmediaapp/components/my_textfield.dart';
import 'package:socialmediaapp/database/firestore.dart';

class HomePage extends StatelessWidget {
   HomePage({super.key});

   final FirestoreDatabase firestoreDatabase =FirestoreDatabase();
  TextEditingController newPostController = TextEditingController();


  void postMessage(){
    if(newPostController.text.isNotEmpty){
      String message= newPostController.text;
      firestoreDatabase.addPost(message);
    }
    //clear controller
    newPostController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      appBar: AppBar(
        title: Text("W A L L "),
        backgroundColor: Colors.transparent,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        elevation: 0,

      ),
      drawer: MyDrawer(

      ),
      body: Column(
        //Textfield box for user to type

        children: [
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Row(
              children: [
                Expanded(
                  child: MyTextField(hintText: "Say Something!",
                      textEditingController: newPostController, obscureText: false),
                ),
                PostButton(onTap: postMessage,)
              ],
            ),
          ),
          
          StreamBuilder(stream: firestoreDatabase.getPostsStream(),

              builder: (context, snapshot) {

            if(snapshot.connectionState==ConnectionState.waiting){
              return Center(child: CircularProgressIndicator());
            }

            final posts= snapshot.data!.docs;


            if(snapshot.data==null || posts.isEmpty){
              return Center(
                child: Padding(
                  padding: EdgeInsets.all(25),
                  child: Text("No Posts... Post Something!"),
                ),
              );
            }
            
            return Expanded(child: ListView.builder(
              itemCount: posts.length,
              itemBuilder: (context, index) {
                //get each indivicual post
                final post =posts[index];

                //get data from each post
                String message =post['PostMessage'];
                String userEmail= post['UserEmail'];
                Timestamp timestamp= post['TimeStamp'];

                //retrun list asa a list tile
                return ListTile(
                  title: Text(message),
                  subtitle: Text(userEmail),
                );



              },)
            );



              },)
        ],



      ),
    );
  }
}

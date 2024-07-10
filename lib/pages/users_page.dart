import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:ventspace/components/my_list_tile.dart';
import 'package:ventspace/helper/helper_functions.dart';
import '../components/my_back_button.dart';

class UsersPage extends StatelessWidget {
  const UsersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.surface,
        body: StreamBuilder(
          stream: FirebaseFirestore.instance.collection("Users").snapshots(),
          builder: (context, snapshot) {
            //any errors
            if (snapshot.hasError){
              displayMessageToUser(String, "Something went wrong", context);
            }

            //show loading circle
            if(snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            if (snapshot.data == null) {
              return const Text("No Data");
            }

            //get all users
            final users = snapshot.data!.docs;

            return Column(
              children: [
                  // back button
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 50.0,
                      left: 25,
                    ),
                    child: Row(
                      children: [
                        MyBackButton(),
                      ],
                    ),
                  ),


                Expanded(
                  child: ListView.builder(
                    itemCount: users.length,
                    padding: const EdgeInsets.all(0),
                    itemBuilder: (context, index){
                      //get individual user
                      final user = users[index];

                      //get data from each yser
                      String username = user['username'];
                      String email = user['email'];
                  
                      return MyListTile(
                        title: username, 
                        subTitle: email,
                      );
                    },
                  ),
                ),
              ],
            );
          },
        ),
      );
    }
  }
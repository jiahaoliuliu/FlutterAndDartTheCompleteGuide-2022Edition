import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (ctx, index) => Container(
          padding: EdgeInsets.all(8),
          child: Text('This Works!'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          FirebaseFirestore.instance
              .collection('chats/j0xvCssGlYSoyAWwBtFu/messages')
              .snapshots()
              .listen((data) {
            // print(data.docs[0]['text']);
            data.docs.forEach((document) {
              print(document['text']);
            });
          });
        },
      ),
    );
  }
}

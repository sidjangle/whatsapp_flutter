import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {

final images;
final title;
final msg;

ChatScreen({this.images,this.title,this.msg});
 @override
  Widget build(BuildContext context) {
    return Column(
     
      children: [
        Padding(
          padding: const EdgeInsets.only(top:8.0),
          child: ListTile(
            contentPadding: EdgeInsets.only(left:5,right: 7),
           leading: Container(
             width: 70,
             height: 100,

             child: CircleAvatar(backgroundImage: AssetImage(images),)),
          title: Text(title),
          subtitle: Text('Like Share and Subscribe the Channel Codetodo'),
          trailing: Column(children: [
             Text('12:00')
             ,Container(
              width: 24,
            
              child: CircleAvatar(
                backgroundColor: Theme.of(context).primaryColorLight,
                child: Text('7', style: TextStyle(color: Colors.white),),), 
             )
          ],),

          ),
        ),
        Divider()
      ],
    );
  }
}
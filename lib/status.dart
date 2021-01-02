import 'package:flutter/material.dart';

class StatusScreen extends StatelessWidget {

final images;
StatusScreen({this.images});
 @override
  Widget build(BuildContext context) {
    return Column(
     
      children: [
      ListTile(
            contentPadding: EdgeInsets.only(left:10,right: 7),
           leading: Container(
             

             child: CircleAvatar(backgroundImage: AssetImage(images),)),
          title: Text('My status' ,style: TextStyle(fontWeight: FontWeight.bold),),
          subtitle: Text('Tap to add status update'),
          ),
          Container(
            color: Colors.grey[300],
            padding: EdgeInsets.all(13),
            child: Row(
              
              children: [
            Text('Recent updates')
              ],
            ),
          ),
      
     Padding(
          padding: const EdgeInsets.only(top:8.0),
          child: 
          ListTile(
            contentPadding: EdgeInsets.only(left:5,right: 7),
           leading: Container(
             width: 70,
             height: 100,

             child: CircleAvatar(backgroundImage: AssetImage(images),)),
          title: Text('Bill Ka Update'),
          subtitle: Text('31 minutes ago'),
          

          ),
        ),
        Divider()
    ,Padding(
          padding: const EdgeInsets.only(top:8.0),
          child: 
          ListTile(
            contentPadding: EdgeInsets.only(left:5,right: 7),
           leading: Container(
             width: 70,
             height: 100,

             child: CircleAvatar(backgroundImage: AssetImage(images),)),
          title: Text('Bill Ka Update'),
          subtitle: Text('1 hours ago'),
          

          ),
        ),
        Divider()
    
      ],
    );
  }
}
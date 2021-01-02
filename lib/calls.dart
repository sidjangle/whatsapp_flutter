import 'package:flutter/material.dart';

class CallsScreen extends StatelessWidget {

final images;
final title;


CallsScreen({this.images,this.title});
 @override
  Widget build(BuildContext context) {
    return Column(
     
      children: [
      
     Padding(
          padding: const EdgeInsets.only(top:8.0),
          child: 
          ListTile(
            contentPadding: EdgeInsets.only(left:5,right: 17),
           leading: Container(
             width: 70,
             height: 100,

             child: CircleAvatar(backgroundImage: AssetImage(images),)),
          title: Text(title),
          subtitle: Row(
            children: [
              Icon(Icons.call_received
              ,size: 20,
              color: Colors.green,
              ),
              Text('Yesterday,11:14'),
            ],
          ),
          trailing: Icon(
            
            Icons.call ,
          size: 25,
          color: Theme.of(context).primaryColor,),
          

          ),
        ),
        Divider()
  
      ],
    );
  }
}
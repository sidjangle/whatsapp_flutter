import 'package:flutter/material.dart';
import 'package:whatsapp/calls.dart';
import 'package:whatsapp/chats.dart';
import 'package:whatsapp/status.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    _tabController = new TabController(length: 4, initialIndex: 1, vsync: this)
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WhatsApp'),
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          IconButton(icon: Icon(Icons.more_vert), onPressed: () {})
        ],
        bottom: TabBar(
          isScrollable: true,
          controller: _tabController,
          indicatorColor: Colors.white,
          labelPadding: EdgeInsets.all(12),
          tabs: [
            Icon(Icons.camera_alt),
            Container(
                width: 90, alignment: Alignment.center, child: Text('CHATS')),
            Container(
                width: 90, alignment: Alignment.center, child: Text('STATUS')),
            Container(
                width: 90, alignment: Alignment.center, child: Text('CALLS'))
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Text('CAMERA'),
          // START CHATS
          ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    ChatScreen(
                      images: 'user/bill.jpg',
                      title: 'Bill gate microsoft',
                    ),
                    ChatScreen(
                      images: 'user/tata.jpg',
                      title: 'tata Indian',
                    ),
                  ],
                );
              }),
         
        //  START STATUS
          ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                return Column(
                  children: [

                    StatusScreen(
                      images: 'user/bill.jpg',

                    ),
                   
                  ],
                );
              }),
        
        // START CALLS
          ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    CallsScreen(
                      images: 'user/bill.jpg',
                      title: 'Bill gate microsoft',
                    ),
                    CallsScreen(
                      images: 'user/tata.jpg',
                      title: 'Tata Call Me',
                    ),
                    
                  ],
                );
              }),
        
        
        
        ],
      ),
floatingActionButton: _tabController.index == 1  ? FloatingActionButton(
  onPressed: (){},
  backgroundColor: Theme.of(context).primaryColorLight,
  child:Icon(Icons.message
  
  ) ,):FloatingActionButton(
  onPressed: (){},
  backgroundColor: Theme.of(context).primaryColorLight,
  child:Icon(Icons.camera_alt
  
  ) ,) ,
    );
  }
}

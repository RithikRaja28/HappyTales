import 'package:flutter/material.dart';

class MaintabBar extends StatefulWidget {
  const MaintabBar({super.key});

  @override
  State<MaintabBar> createState() => _MaintabBarState();
}

class _MaintabBarState extends State<MaintabBar>with TickerProviderStateMixin {
  
  TabController? controller;

  @override

  @override
  void initState() {
    controller = TabController(length: 4, vsync: this);
    super.initState();
    
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: controller,
        children: [
          Container(),
          Container(),
          Container(),
          Container(),
        ]
      ),
      bottomNavigationBar: BottomAppBar(
        color: Color.fromRGBO(111, 175, 227, 1),
        child: TabBar(
          controller: controller,

          labelColor: Colors.white,
          unselectedLabelColor: Colors.white54,
          tabs: [
            Tab(
              icon: Icon(Icons.home),
              text: "Home",
            ),
            Tab(
              icon: Icon(Icons.create),
              text: "Create",
            ),
            Tab(
              icon: Icon(Icons.library_books_rounded),
              text: "Stories",
            ),
            Tab(
              icon: Icon(Icons.settings),
              text: "Settings",
            ),
          ]
        ),
      ),
    );
  }
}
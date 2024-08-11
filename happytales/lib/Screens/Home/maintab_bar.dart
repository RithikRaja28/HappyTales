import 'package:flutter/material.dart';

class MaintabBar extends StatefulWidget {
  const MaintabBar({super.key});

  @override
  State<MaintabBar> createState() => _MaintabBarState();
}

class _MaintabBarState extends State<MaintabBar> with TickerProviderStateMixin {
  TabController? _controller;
  bool _isNavigating = false; // Flag to prevent multiple navigations

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 4, vsync: this);
    _controller?.addListener(_handleTabSelection);
  }

  void _handleTabSelection() {
    if (_isNavigating) return; // Prevent multiple navigations
    final index = _controller?.index;
    if (index == 3) { // Settings tab
      if (ModalRoute.of(context)?.settings.name != '/settings') {
        _isNavigating = true;
        Navigator.pushNamed(context, '/settings').then((_) {
          _isNavigating = false; // Reset flag after navigation
        });
      }
    } else if (index == 1) { // Create tab
      if (ModalRoute.of(context)?.settings.name != '/gemini') {
        _isNavigating = true;
        Navigator.pushNamed(context, '/gemini').then((_) {
          _isNavigating = false; // Reset flag after navigation
        });
      }
    }
  }

  @override
  void dispose() {
    _controller?.removeListener(_handleTabSelection);
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Color.fromRGBO(111, 175, 227, 1),
      child: TabBar(
        controller: _controller,
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
        ],
      ),
    );
  }
}

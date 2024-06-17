import 'package:flutter/material.dart';
import 'package:happytales/Screens/Home/side_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(seconds: 2),
    
      vsync: this,
    )..repeat();
    _animation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,

    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Happy Tales', style: TextStyle(color: Colors.white, fontSize: 20, )),
          backgroundColor: Color.fromRGBO(111, 175, 227, 1),
          elevation: 2,
          iconTheme: IconThemeData(color: Colors.white),
          actionsIconTheme: IconThemeData(color: Colors.white),
        ),
        //Color.fromARGB(255, 60, 60, 60)
        drawer: SideBar(),
       
           floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed('/gemini');
        },
        child: AnimatedBuilder(
          animation: _animation,
          child: Image.asset('assests/images/gemini.png'),
          builder: (context, child) {
            return RotationTransition(
              turns: _animation,
              child: child,
            );
          },
        ),
        backgroundColor: Color.fromARGB(255, 55, 55, 55),
      ),
        body: Scaffold(
        
        ),
    );
  }
}


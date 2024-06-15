import 'package:flutter/material.dart';
import 'package:happytales/models/rive_assest.dart';
import 'package:rive/rive.dart';

class SideMenuTitle extends StatelessWidget {
  final RiveAsset menu;
  final VoidCallback press;
  final ValueChanged<Artboard> riveonInit;
  final bool isActive;

  const SideMenuTitle({
    super.key, required this.menu, required this.press, required this.riveonInit, required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 24),
          child: Divider(
            color: Colors.white24,
            height: 1,
          ),
        ),
        Stack(
          children: [
          AnimatedPositioned(
            duration: const Duration(milliseconds: 300),
              height: 56,
              left: 0,
              width: isActive ? 288 : 0,
              child: Container(decoration: BoxDecoration(color: Color.fromARGB(255, 209, 103, 255),
              borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              ),
            ),
            ListTile(
              onTap: press,
              leading: SizedBox(
                height: 34,
                width: 34,
                child: RiveAnimation.asset(
                  menu.src,
                  artboard:menu.artboard,
                  onInit: riveonInit,
                ),
              ),
              title: Text(
                menu.title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

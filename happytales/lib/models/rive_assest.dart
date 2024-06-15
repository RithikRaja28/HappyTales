import 'package:rive/rive.dart';


class RiveAsset {
  final String artboard;
  final String stateMachineName;
  final String title;
  final String src;
  late SMIBool? input;
  RiveAsset(
    this.src, {
    required this.artboard,
    required this.stateMachineName,
    required this.title,
    this.input,
  });

  set setInput(SMIBool status) {
    input = status;
  }
}

List<RiveAsset> sideMenus = [
  RiveAsset("assests/RiveAssests/icons.riv",
      artboard: "HOME", stateMachineName: "HOME_interactivity", title: "Home"),
  RiveAsset("assests/RiveAssests/icons.riv",
      artboard: "SEARCH",
      stateMachineName: "SEARCH_Interactivity",
      title: "Gemini"),
  RiveAsset("assests/RiveAssests/icons.riv",
      artboard: "LIKE/STAR",
      stateMachineName: "STAR_Interactivity",    
      title: "Favorite"),
  RiveAsset("assests/RiveAssests/icons.riv",
      artboard: "CHAT",
      stateMachineName: "CHAT_Interactivity",    
      title: "Help"),
];

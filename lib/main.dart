import 'package:demo_animation/navigation/routes.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    // Adding ProviderScope enables Riverpod for the entire project
    // Adding our Logger to the list of observers
    ProviderScope(child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        routeInformationParser: _appRouter.defaultRouteParser(),
        routerDelegate: _appRouter.delegate(),
    );
  }
}

// class Home extends StatefulWidget {
//   const Home({Key? key}) : super(key: key);
//
//   @override
//   State<Home> createState() => _HomeState();
// }
//
// class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
//   late AnimationController animationController;
//   late Animation sizeAnimation;
//   late Animation colorAnimation;
//   // Color color = Colors.red;
//   // double height = 100;
//   // double width = 100;
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     animationController = AnimationController(vsync: this, duration: Duration(seconds: 3));
//     sizeAnimation = TweenSequence([
//       TweenSequenceItem(tween: Tween(begin: 50.0, end: 100.0), weight: 1),
//       TweenSequenceItem(tween: Tween(begin: 100.0, end: 50.0), weight: 1),
//         TweenSequenceItem(tween: Tween(begin: 50.0, end: 75.0), weight: 1),
//         TweenSequenceItem(tween: Tween(begin: 75.0, end: 0.0), weight: 1),
//     ])
//         .animate(animationController);
//     colorAnimation = ColorTween(begin: Colors.red, end: Colors.blue).animate(animationController);
//     animationController.addListener(() {
//       setState(() {
//
//       });
//     });
//     animationController.forward();
//   }
//   @override
//   void dispose() {
//     // TODO: implement dispose
//     animationController.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Container(
//           height: sizeAnimation.value,
//           width: sizeAnimation.value,
//           color: colorAnimation.value,
//         ),
//       ),
//     );
//   }
// }

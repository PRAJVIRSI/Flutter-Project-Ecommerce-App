import 'package:flutter/material.dart';
import 'package:flutterprjgroup2/screens/product_list_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool animate = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pixel Paradise'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(
              opacity: animate ? 1.0 : 0.0,
              duration: const Duration(seconds: 2),
              child: AnimatedRotation(
                turns: animate ? 2 : 0,
                duration: const Duration(seconds: 2),
                child: AnimatedScale(
                  scale: animate ? 1.0 : 0.75, // Scale animation
                  duration: const Duration(seconds: 2),
                child: const Image(
                  image: AssetImage('images/splash.jpg'),
                  width: 450,
                  height: 450,
                ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    animate = !animate;
                  });
                  Future.delayed(const Duration(seconds: 2), () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProductListScreen(),
                      ),
                    );
                  });
                },
                child: const Text('View Games'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:capstone/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Expanded to fill the remaining space with the image
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('lib/assets/elo.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Text(
                              'Sign Language Inclusion',
                              style: TextStyle(
                                fontFamily: 'IvyPresto',
                                fontSize: 150,
                                color: AppColors.candyApple,
                                height: 1.2,
                              ),
                            ),
                            Text(
                              ' Virtual Meetings Extension',
                              style: TextStyle(
                                fontFamily: 'SweetSansPro',
                                fontSize: 40,
                                letterSpacing: 18,
                                fontWeight: FontWeight.normal,
                                background: Paint()
                                  ..color = AppColors.linen
                                  ..style = PaintingStyle.fill
                                  ..strokeWidth = 40,
                                color: AppColors.ink,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 40),
                      const Text(
                        'Learn more',
                        style: TextStyle(
                          fontFamily: 'SweetSansPro',
                          fontSize: 15,
                          letterSpacing: 7,
                          color: AppColors.linen,
                        ),
                      ),
                      const SizedBox(height: 60),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:fadez/custom_components.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: LayoutBuilder(
        builder: (context, constraints) {
          final screenWidth = constraints.maxWidth;
          final screenHeight = constraints.maxHeight;
          final horizontalPadding =
              EdgeInsets.symmetric(horizontal: screenWidth * 0.1);
          final buttonWidth =
              screenWidth > 600 ? screenWidth * 0.2 : screenWidth;

          return Padding(
            padding: horizontalPadding,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Container(
                        constraints: BoxConstraints(
                          maxHeight: screenHeight * 0.4,
                        ),
                        child: Image.asset('assets/images/welcome.png'),
                      ),
                      SizedBox(height: 20),
                      Container(
                        constraints: BoxConstraints(
                          maxHeight: screenHeight * 0.4,
                        ),
                        child: Image.asset('assets/images/fadez.png'),
                      ),
                    ],
                  ),
                  CustomFilledButton(
                    width: buttonWidth,
                      child: Text(
                    'Get Started',
                    style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w600
                    ),
                  ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/register');
                      }
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

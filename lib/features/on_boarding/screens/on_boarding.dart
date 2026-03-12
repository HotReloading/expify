import 'package:flutter/material.dart';

import '../../../core/widgets/primary_button.dart';
import '../../../core/widgets/primary_input.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text('On Boarding Screen'),
            PrimaryInput(label: 'Email', hint: 'Enter your email'),
            PrimaryButton(
              title: 'Continue',
              onPressed: () {
                // Handle button press
              },
            ),
          ],
        ),
      ),
    );
  }
}

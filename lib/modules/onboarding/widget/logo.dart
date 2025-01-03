import 'package:flutter/material.dart';

class OnboardWidgetLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset('assets/icons/logo_gojek.png', height: 50),
            ],
          )
        ],
      ),
    );
  }
}

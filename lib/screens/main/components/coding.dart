import 'package:flutter/material.dart';
import 'package:porfoilio/components/animated_progress_indicator.dart';

import '../../../constants.dart';

class Coding extends StatelessWidget {
  const Coding({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Coding",
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.8,
          label: "Dart",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.68,
          label: "Python",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.65,
          label: "C++",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.65,
          label: "C#",
        ),
        // AnimatedLinearProgressIndicator(
        //   percentage: 0.58,
        //   label: "JavaScript",
        // ),
      ],
    );
  }
}

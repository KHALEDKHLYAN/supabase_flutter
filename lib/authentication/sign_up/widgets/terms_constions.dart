import 'package:flutter/material.dart';


class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
            width: 24,
            height: 24,
            child:
                Checkbox(value: true, onChanged: (value) {})),
        SizedBox(height: 5),
        Text.rich(TextSpan(children: [
          TextSpan(
              text: ' ${'I Agree To'} ',
              style: Theme.of(context).textTheme.bodySmall),
          TextSpan(
            text: '${'privacyPolicy'}  ',
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .apply(
                  color: dark ? Colors.white : Colors.blue,
                  decoration: TextDecoration.underline,
                  decorationColor:
                      dark ? Colors.white : Colors.blue,
                ),
          ),
          TextSpan(
              text: 'and',
              style: Theme.of(context).textTheme.bodySmall),
          TextSpan(
            text: ' ${'termsAndCondition'} ',
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .apply(
                  color: dark ? Colors.white : Colors.blue,
                  decoration: TextDecoration.underline,
                  decorationColor:
                      dark ? Colors.white : Colors.blue,
                ),
          ),
        ]))
      ],
    );
  }
}
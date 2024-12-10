import 'package:flutter/material.dart';

class SocialButtons extends StatelessWidget {
  const SocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey,
          ),
          borderRadius: BorderRadius.circular(100),
        ),
        child: IconButton(
          onPressed: () {},
          icon: Image(
              height: 50,
              width: 50,
              image: AssetImage('assets/images/google.png')),
        ),
      ),
      SizedBox(width: 10),
      Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey,
          ),
          borderRadius: BorderRadius.circular(100),
        ),
        child: IconButton(
          onPressed: () {},
          icon: Image(
              height: 50,
              width: 50,
              image: AssetImage('assets/images/facebook.png')),
        ),
      ),
      SizedBox(width: 10),
      Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey,
          ),
          borderRadius: BorderRadius.circular(100),
        ),
        child: IconButton(
          onPressed: () {},
          icon: Image(
              height: 50,
              width: 50,
              image: AssetImage('assets/images/github-48.png')),
        ),
      ),
    ]);
  }
}

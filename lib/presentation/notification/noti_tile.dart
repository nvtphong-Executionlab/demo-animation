import 'package:demo_animation/theme/styles.dart';
import 'package:flutter/material.dart';

class NotiTile extends StatelessWidget {
  const NotiTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: SizedBox( width:50, height: 50, child: Image.asset('assets/images/avatar.jpg')),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                      children: [
                        TextSpan(
                            text: 'Phong',
                            style: subtitle2
                        ),
                        TextSpan(text: ' '),
                        TextSpan(
                            text: "I don't know how to speak Japanese",
                            style: subtitle1
                        )
                      ]
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  "very long text aaaaaaaaaaaaaaaaaaaaaaaasaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: bodyText1,
                ),
                Text('Another substitle',
                  maxLines: 1, overflow: TextOverflow.ellipsis, style: subtitle1,)
              ],
            ),
          ),
        ),
        Text('10:30',)
      ],
    );
  }
}

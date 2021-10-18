import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class W1 extends StatelessWidget {
  final txt =
      'This text is longer than the usual text, and will take extra space onthe device, how to stop overflow of text';
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
        child: Text(txt),
      ),
      const Icon(Icons.arrow_forward),
      const Icon(Icons.arrow_back),
      RichText(
        text: TextSpan(
          text: 'Hello ',
          style: DefaultTextStyle.of(context).style,
          children: const <TextSpan>[
            TextSpan(
                text: 'bold', style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(text: ' world!'),
          ],
        ),
      ),
      // RichText(
      //   style: DefaultTextStyle.of(context).style,
      //   children: const <TextSpan>[
      //     TextSpan(text: ' Hello'),
      //     TextSpan(text: 'bold', style: TextStyle(fontWeight: FontWeight.bold)),
      //     TextSpan(text: ' world!'),
      //   ],
      // )
    ]);
  }
}

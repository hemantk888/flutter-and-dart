import 'package:flutter/material.dart';

class OurButton extends StatelessWidget {
  const OurButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30),
      width: 200,
      height: 50,
      child: ElevatedButton(
        child: Text('View more...'),
        onPressed: () {
          //  print('Button is pressed');
          showMsg(context);
        },
        style: ElevatedButton.styleFrom(
            primary: Colors.redAccent,
            padding: EdgeInsets.all(10),
            textStyle: TextStyle(
                fontSize: 20, color: Colors.black, fontFamily: 'KleeOne')),
      ),
      
    );
  }

  showMsg(ctx) {
    var ad = AlertDialog(
      title: Text('Hello'),
      content: Text('Button is clicked'),
    );
    showDialog(
        context: ctx,
        builder: (ctx) {
          return ad;
        });
  }
}

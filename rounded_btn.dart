import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget{
  final String btnName;
  final Icon? icon;
  final Color bgColor;
  final TextStyle textStyle;
  final  VoidCallback? callback;

  RoundedButton({
      required this.btnName,
      this.icon,
      this.bgColor = Colors.lightBlue,
      required this.textStyle ,
      this.callback});
  @override
  Widget build(BuildContext context) {



    // TODO: implement build
    return ElevatedButton(onPressed: (){
      callback!();
    }, child: icon!= null ? Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

        icon!,
        SizedBox(
          width: 5,
        ),
        Text(btnName, style: textStyle,)
      ],

    )
        : Text(btnName, style: textStyle,),
      style: ElevatedButton.styleFrom(
        primary: bgColor,
        shadowColor: bgColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(10.0)
        )

      ),

    );
      }

}

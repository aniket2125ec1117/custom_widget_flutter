import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:oncllick/widgets/rounded_btn.dart';

void main(){
  runApp(app());
}
class app extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'OnClick',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(



      ),
      home: DashBoard(),
    );



  }

}
class DashBoard extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        elevation: 25,
        shadowColor: Colors.red,
        toolbarHeight: 50,
        // toolbarOpacity: 0.5, this will dec the opacity of widget which is
        // inside the appbar
        title: Text('OnClick', style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.grey,
        actions: [
          Icon(Icons.more_vert),

        ],
        actionsIconTheme: IconThemeData(
          color: Colors.black,
          size: 40,
        ),

      ),

      // body: Container(
      //   // double.infinity will give full width in the mobile screen
      //   width: double.infinity,
      //   child: Wrap(
      //     // by default its direction is in horzontal
      //     // to make its in vertical we use direction
      //     direction: Axis.horizontal,
      //     // if we want to give spacing btw these container the we use spacing
      //     // spacing is will give spacing in the direction of dirction
      //     spacing: 11,
      //     // for like cross axis spacinf we use runSpacing
      //     runSpacing: 10,
      //     alignment: WrapAlignment.spaceAround,
      //     children: [
      //       Container(
      //         height: 100,
      //         width: 100,
      //         color: Colors.grey,
      //       ),
      //       Container(
      //         height: 100,
      //         width: 100,
      //         color: Colors.black,
      //       ),
      //       Container(
      //         height: 100,
      //         width: 100,
      //         color: Colors.pink,
      //       ),
      //       Container(
      //         height: 100,
      //         width: 100,
      //         color: Colors.yellow,
      //       ),
      //       Container(
      //         height: 100,
      //         width: 100,
      //         color: Colors.indigo,
      //       ),
      //       Container(
      //         height: 100,
      //         width: 100,
      //         color: Colors.tealAccent,
      //       ),
      //     ],
      //   ),
      // ),
      // body: Center(
      //   child: Row(
      //     crossAxisAlignment: CrossAxisAlignment.center,
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       Text('Hello ' , style: TextStyle(fontSize: 25),),
      //       Text('World', style: TextStyle(fontSize: 40,fontWeight: FontWeight.w900,color: Colors.indigo)),
      //     ],
      //   ),
      // ),
      // for similar type of code we can use RichText
      // body: Center(
      //   child: RichText(
      //     text: TextSpan(
      //       style: TextStyle(
      //         color: Colors.indigo,
      //         fontSize: 25,// it will apply default text style in the text utlil
      //         // we dont give difernt style in children TextSpan
      //       ),
      //       children: <TextSpan>[
      //         TextSpan(text: 'Hello'),
      //         TextSpan(text: 'World', style:
      //         TextStyle(
      //           fontSize: 40,
      //           fontWeight: FontWeight.w900,
      //           color: Colors.yellow
      //         )),
      //         TextSpan(text: ' I am aniket'),
      //         TextSpan(text: ' done' , style: TextStyle(
      //           fontSize: 50,
      //           fontWeight: FontWeight.w900,
      //           color: Colors.red,
      //         ))
      //
      //       ]
      //     ),
      //   ),
      // ),
      // body: Container(
      //   width: 300,
      //   height: double.infinity,
      //   color: Colors.tealAccent,
      //   child: Stack(
      //     children: [
      //       Positioned(
      //         bottom: 10,
      //         right: 10,
      //         child: Container(
      //           height: 100,
      //           width: 100,
      //           color: Colors.red,
      //         ),
      //       )
      //     ],
      //   ),
      // ),
      body: RoundedButton(btnName: 'Click here',textStyle: TextStyle(fontSize: 25,fontWeight: FontWeight.w900),icon: Icon(Icons.access_time_filled),callback: (){
        print('Clicked')
      },
      ),

    );
  }

}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var ctlr;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ctlr=TextEditingController();
    //ctlr.text="enter name";
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    ctlr.dispose();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(
      body: Container(
        child: Column(
          children: [
            SizedBox(height:80.0),
           // TextField(autofocus: true,controller: ctlr,maxLength: 4,),
            TextField(enableInteractiveSelection:false ,decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Full Name',
            )),
            TextField(keyboardType: TextInputType.number),
            TextField(obscureText: true,decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'password',
            )),
            TextField(keyboardType: TextInputType.emailAddress,obscureText: true),
          //  TextField(keyboardType: TextInputType.datetime,),
         //   TextField(textInputAction: TextInputAction.send,),
            TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.print)
              ),
            ),
            TextField(
              decoration: InputDecoration(
                suffix:CircularProgressIndicator(),
              //  alignLabelWithHint:
              ),
            ),
          //  TextFormField()
          ],
        ),

      ),
      floatingActionButton: IconButton(
        icon: Icon(Icons.add),
        onPressed: (){
          print(ctlr.text);
        },
      ),
    ));
  }
}
           //Container(
          //     height: 250,
          //     width: double.infinity,
          //     // padding: EdgeInsets.all(40.0),
          //     child:
          //     ListView.builder(itemBuilder: (context, index) {
          //       return ListTile(
          //         title: Text("Text $index"),
          //         subtitle: Text("vijay"),
          //         contentPadding: EdgeInsets.all(10.0),
          //         autofocus: true,
          //         enabled: true,
          //         hoverColor: Colors.green,
          //        minLeadingWidth: 15.0,
          //        // focusColor: Colors.amber,
          //
          //         leading: Icon(Icons.done),
          //         trailing: Icon(Icons.close),
          //       );
          //     },)
           // body: ListView(
        //   shrinkWrap: true,
        //   scrollDirection:Axis.vertical ,
        //   children:            nouns.map((e) =>
        //       Padding(
        //         padding: const EdgeInsets.all(8.0),
        //         child: Text(e.toString()),
        //       )).toList(),
            // Container(
            //   color: Colors.white,
            //   padding: EdgeInsets.all(16.0),
            //   child: Image.network(
            //     'https://toppng.com/uploads/preview/batman-png-11553978541s9xp0sddf1.png',
            //     frameBuilder: (BuildContext context, Widget child, int? frame,
            //         bool wasSynchronouslyLoaded) =>
            //     wasSynchronouslyLoaded
            //         ? child
            //         : AnimatedOpacity(
            //       child: child,
            //       opacity: frame == null ? 0 : 1,
            //       duration: const Duration(seconds: 5),
            //       curve: Curves.easeOut,
            //     ),
            //     loadingBuilder: (context, child, progress) => progress == null
            //         ? child
            //         : LinearProgressIndicator(
            //       valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
            //     ),
            //     errorBuilder:
            //         (BuildContext context, Object exception, StackTrace? stackTrace) =>
            //         Text('Failed to load image'),
            //
            //   ),
            // ),
         // ],

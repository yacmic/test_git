import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        //canvasColor: Colors.black,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: EdgeInsets.only(left: 5),
          child: Row(
            children: const [
              Icon(Icons.fire_extinguisher),
              Icon(Icons.water),
              Expanded(child: Icon(Icons.water)),
            ],
          ),
        ),
        actions: const [
          Icon(Icons.fire_extinguisher),
          Icon(Icons.water),
          Icon(Icons.fire_extinguisher),
          Icon(Icons.water),
        ],
        title: const Text(
          'Flutter',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: const Center(
        child: ElevatedButton(
          child: Text('Click me'),
          onPressed: null,
        ),
        // child: CustomScrollView(
        //   slivers: [
        //     SliverAppBar(
        //       expandedHeight: 50,
        //       elevation: 50,
        //       leading: Padding(
        //         padding: EdgeInsets.only(left: 5),
        //         child: Row(
        //           children: const [
        //             Icon(Icons.fire_extinguisher),
        //             Icon(Icons.water),
        //             Expanded(child: Icon(Icons.water)),
        //           ],
        //         ),
        //       ),
        //       actions: const [
        //         Icon(Icons.fire_extinguisher),
        //         Icon(Icons.water),
        //         Icon(Icons.fire_extinguisher),
        //         Icon(Icons.water),
        //       ],
        //       title: const Text(
        //         'Flutter',
        //         style: TextStyle(fontWeight: FontWeight.bold),
        //       ),
        //       flexibleSpace: Container(
        //         decoration: const BoxDecoration(
        //           gradient: LinearGradient(
        //             colors: [Colors.red, Colors.purple, Colors.yellow],
        //           ),
        //         ),
        //       ),
        //       centerTitle: true,
        //     ),
        //     SliverList(
        //         delegate: SliverChildListDelegate([
        //       //body elements
        //     ])),
        //   ],
        // ),
      ),
    );
  }

  TextButton buildTextButtontoast() {
    return TextButton(
      onPressed: () {
        Fluttertoast.showToast(
            msg: "This is Center Short Toast2",
            toastLength: Toast.LENGTH_LONG,
            gravity: ToastGravity.TOP,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.white,
            textColor: Colors.red,
            fontSize: 16.0);
      },
      child: buildRichText(),
    );
  }

  RichText buildRichText() {
    return RichText(
      text: const TextSpan(
        children: [
          TextSpan(
            text: 'Pink',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 35, color: Colors.pink),
          ),
          TextSpan(
            text: 'Black',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 35, color: Colors.white),
          ),
        ],
      ),
    );
  }
}

void function(String a) {
  return a;
}
// update master
//  creat branch
// afeer pull
// code

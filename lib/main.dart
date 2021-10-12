
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'List Buah-Buahan',
      home: MyHomePage(),  
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({ Key? key }) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> categories = [
    "Buah Berawalan A",
    "Buah Berawalan B",
    "Buah Berawalan C",
    "Buah Berawalan D"
  ];

  @override
    Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List Nama Buah"),
      ),
        body: Container(
      color: Color(0xFFFBFAFF),
      margin: EdgeInsets.only(top: 10, left: 10),
      child: Column(
        children: [

          // Search Menu
          Container(
            margin: EdgeInsets.only(right: 20, top: 10),
            height: 50,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Color(0xFFFFFFFF),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 4,
                  blurRadius: 3,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: TextField(
              decoration: const InputDecoration(
                  icon: Icon(
                    Icons.search,
                    color: Color(0xFFC8C8D9),
                  ),
                  border: InputBorder.none,
                  hintText: 'Search...'),
            ),
          ),

          // category button
          SizedBox(
            height: 47,
          ),
          Container(
            height: 50,
            margin: EdgeInsets.only(right: 50),
            // color: Colors.amber,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
                itemCount: categories.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: EdgeInsets.only(right: 20),
                    child: OutlinedButton(
                      onPressed: () {},
                      child: Text("${categories[index]}"),
                    ),
                  );
                }),
          ),
          // category button
          // Card List Buah
          SizedBox(
            height: 20,
          ),
          Container(
            height: 283,
            width: MediaQuery.of(context).size.width -50,
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                Container(
                  padding: EdgeInsets.only(left:10),
                  height: 100,
                  width: 100,
                  color: Colors.grey[100],
                  child: Row(
                    children: const<Widget>[
                      Image(image: AssetImage('assets/images/apel.png')),
                      
                      Text('   Buah Apel', style: TextStyle(fontSize: 25)),
                    ],
                  ),
                  // child: const Center(child: 
                  // Text('Entry A')),
                ),
                SizedBox(
                  width: 30,
                ),
                Container(
                  padding: EdgeInsets.only(left:10),
                  height: 100,
                  color: Colors.grey[100],
                  margin: EdgeInsets.only(top: 20),
                  child: Row(
                  children: const<Widget>[
                      Image(image: AssetImage('assets/images/belimbing.png')),
                      Text('   Buah Belimbing', style: TextStyle(fontSize: 25)),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left:10),
                  height: 100,
                  color: Colors.grey[100],
                  margin: EdgeInsets.only(top: 20),
                  child: Row(
                  children: const<Widget>[
                      Image(image: AssetImage('assets/images/ceri.png')),
                      Text('   Buah Ceri', style: TextStyle(fontSize: 25)),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left:10),
                  height: 100,
                  color: Colors.grey[100],
                  margin: EdgeInsets.only(top: 20),
                  child: Row(
                  children: const<Widget>[
                      Image(image: AssetImage('assets/images/durian.png')),
                      Text('   Buah Durian', style: TextStyle(fontSize: 25)),
                    ],
                  ),
                ),
              ],
            ),
          )
          // Card List Sepatu
        ],
      ),
    ));
  }
}
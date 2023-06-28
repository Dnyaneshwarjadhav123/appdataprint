import 'package:flutter/material.dart';
import 'package:http/http.dart' as htpp;

void main() {
  runApp(MaterialApp(
    title: "Awesome App",
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  var url = "https://jsonplaceholder.typicode.com/todos";
  var data;
  @override
  void initState() {
    getdata();
  }

  getdata() async {
    var res = await htpp.get(Uri.parse(url));
    print(data);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Awesome App"),
      ),
      body: Center(
        child: Container(
          child: data != null
              ? Card(
                  child: ListView.builder(
                    itemCount: 1,
                    itemBuilder: (BuildContext context, int index) {
                      return Card();
                    },
                  ),
                )
              : CircularProgressIndicator(),
        ),
      ),
    );
  }
}

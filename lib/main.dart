import 'package:flutter/material.dart';
import 'notification.dart';

void main() {
  runApp(
      MaterialApp(
          home: MyApp()
      )
  );
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('hello'),),
        body: Text('hello body'),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            showDialog(context: context, builder: (context){
              return addItemDialog();
            });
          },
          backgroundColor: Colors.green,
          child: Icon(Icons.add),
        ),
        bottomNavigationBar: BottomAppBar(
          child: Text('hello bottom'),
        ),

    );
  }
}
class addItemDialog extends StatelessWidget {
  const addItemDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        child: Column(
          children: [
            Row(
              children: [
                Text("TO-DO"),
                Expanded(child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Hint',
                    )
                ))

              ],
            )
          ],
        ),
      ),
    );
  }
}


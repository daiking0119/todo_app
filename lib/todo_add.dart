import 'package:flutter/material.dart';

class TodoAddPage extends StatefulWidget {
  @override
  _TodoAddPageState createState() => _TodoAddPageState();
}

class _TodoAddPageState extends State<TodoAddPage> {
  String text = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('リスト追加'),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              child: TextFormField(
                validator: (value) {
                  if (value == '') return 'リストを追加してください';
                },
                autovalidateMode: AutovalidateMode.always,
                decoration: InputDecoration(hintText: 'リストを追加する'),
                onChanged: (String value) {
                  setState(() {
                    text = value;
                  });
                },
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop(text);
              },
              child: Text('リスト追加'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('キャンセル'),
            ),
          ],
        ),
      ),
    );
  }
}

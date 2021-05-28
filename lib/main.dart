import 'package:flutter/material.dart';
 
 enum SearchType { radio1, radio2}

void main() => runApp(MyApp());
 
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  
  SearchType _searchType = SearchType.radio1;
  double _value = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Column(
          children: [
            Text('Hello World'),
            TextField(
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                labelText: 'Cellphone',
                icon: Icon(Icons.settings_cell)
              ),
            ),
            RaisedButton(onPressed: () => true, child: Text('Sign in') ),
            Checkbox(value: true, onChanged: (_) => true),
            Switch(value: false, onChanged: (_) => true ),
            SwitchListTile(title: Text('Remember account') ,value: true, onChanged: (_) => true ),
            Row(
              children: [
                Text('Radio1'),
                Radio(value: _searchType, groupValue: SearchType.radio1, onChanged: (val) => _searchType = val ),
                Text('Radio2'),
                Radio(value: _searchType, groupValue: SearchType.radio2, onChanged: (val) => _searchType = val ),

              ],
            ),
            Slider( label: _value.toString(), min: 0, max: 100, value: _value, onChanged: (_) => true)

          ]
        ),
        floatingActionButton: FloatingActionButton(child: Icon(Icons.offline_bolt, color:Colors.red, size: 50,), onPressed: () {  },),
      ),
    );
  }
}
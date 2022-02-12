import 'package:flutter/material.dart';

void main() {
  runApp(const ListViewScreen());
}

class ListViewScreen extends StatelessWidget {
  const ListViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
          body: MyList()
      ),
    );
  }
}

class MyList extends StatefulWidget {
  const MyList({Key? key}) : super(key: key);

  @override
  _MyListState createState() => _MyListState();
}

class _MyListState extends State<MyList> {

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 20,
        itemBuilder: (BuildContext context, int index)
    {
      return ListTile(
        title: Text('line ${index+1}'),
        selected: index == _selectedIndex,
        onTap: () {
          setState(() {
            _selectedIndex = index;
          });
        },
      );
    },
    );
  }
}


import 'package:flutter/material.dart';

class ScrollableSession extends StatelessWidget {
  const ScrollableSession({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scrollable session'),
      ),
      body: Column(
        children: [
          GridView.count(
            crossAxisCount: 2,
            //scrollDirection: Axis.vertical,
            padding: const EdgeInsets.all(8),
            crossAxisSpacing: 4,
            mainAxisSpacing: 4,
            children: children,
          ),
        ],
      ),
    );
  }
}

/// SingleChildScrollView
SingleChildScrollView page1() {
  return const SingleChildScrollView(
    child: Padding(
      padding: EdgeInsets.all(10.0),
      child: Column(
        //mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            title: Text('Mohamed'),
            subtitle: Text('hello'),
            leading: CircleAvatar(
              backgroundColor: Colors.yellow,
            ),
            trailing: Icon(Icons.add_alert),
            /*
               onTap: (){
                 print('object');
               },
                */
          ),
          ListTile(
            title: Text('Mohamed'),
            subtitle: Text('hello'),
            leading: CircleAvatar(
              backgroundColor: Colors.yellow,
            ),
            trailing: Icon(Icons.add_alert),
            /*
               onTap: (){
                 print('object');
               },
                */
          ),
        ],
      ),
    ),
  );
}

/// List view
Widget listView() {
  return ListView(
    children: const [
      ListTile(
        title: Text('Mohamed'),
        subtitle: Text('hello'),
        leading: CircleAvatar(
          backgroundColor: Colors.yellow,
        ),
        trailing: Icon(Icons.add_alert),
        /*
               onTap: (){
                 print('object');
               },
                */
      ),
      ListTile(
        title: Text('Mohamed'),
        subtitle: Text('hello'),
        leading: CircleAvatar(
          backgroundColor: Colors.yellow,
        ),
        trailing: Icon(Icons.add_alert),
        /*
               onTap: (){
                 print('object');
               },
                */
      ),
      ListTile(
        title: Text('Mohamed'),
        subtitle: Text('hello'),
        leading: CircleAvatar(
          backgroundColor: Colors.yellow,
        ),
        trailing: Icon(Icons.add_alert),
        /*
               onTap: (){
                 print('object');
               },
                */
      ),
      ListTile(
        title: Text('Mohamed'),
        subtitle: Text('hello'),
        leading: CircleAvatar(
          backgroundColor: Colors.yellow,
        ),
        trailing: Icon(Icons.add_alert),
        /*
               onTap: (){
                 print('object');
               },
                */
      ),
      ListTile(
        title: Text('Mohamed'),
        subtitle: Text('hello'),
        leading: CircleAvatar(
          backgroundColor: Colors.yellow,
        ),
        trailing: Icon(Icons.add_alert),
        /*
               onTap: (){
                 print('object');
               },
                */
      ),
      ListTile(
        title: Text('Mohamed'),
        subtitle: Text('hello'),
        leading: CircleAvatar(
          backgroundColor: Colors.yellow,
        ),
        trailing: Icon(Icons.add_alert),
        /*
               onTap: (){
                 print('object');
               },
                */
      ),
      ListTile(
        title: Text('Mohamed'),
        subtitle: Text('hello'),
        leading: CircleAvatar(
          backgroundColor: Colors.yellow,
        ),
        trailing: Icon(Icons.add_alert),
        /*
               onTap: (){
                 print('object');
               },
                */
      ),
      ListTile(
        title: Text('Mohamed'),
        subtitle: Text('hello'),
        leading: CircleAvatar(
          backgroundColor: Colors.yellow,
        ),
        trailing: Icon(Icons.add_alert),
        /*
               onTap: (){
                 print('object');
               },
                */
      ),
      ListTile(
        title: Text('Mohamed'),
        subtitle: Text('hello'),
        leading: CircleAvatar(
          backgroundColor: Colors.yellow,
        ),
        trailing: Icon(Icons.add_alert),
        /*
               onTap: (){
                 print('object');
               },
                */
      ),
      ListTile(
        title: Text('Mohamed'),
        subtitle: Text('hello'),
        leading: CircleAvatar(
          backgroundColor: Colors.yellow,
        ),
        trailing: Icon(Icons.add_alert),
        /*
               onTap: (){
                 print('object');
               },
                */
      ),
      ListTile(
        title: Text('Mohamed'),
        subtitle: Text('hello'),
        leading: CircleAvatar(
          backgroundColor: Colors.yellow,
        ),
        trailing: Icon(Icons.add_alert),
        /*
               onTap: (){
                 print('object');
               },
                */
      ),
      ListTile(
        title: Text('Mohamed'),
        subtitle: Text('hello'),
        leading: CircleAvatar(
          backgroundColor: Colors.yellow,
        ),
        trailing: Icon(Icons.add_alert),
        /*
               onTap: (){
                 print('object');
               },
                */
      ),
    ],
  );
}

/// Separated list view
Widget separatedListView() {
  return ListView.separated(
    itemCount: 12,
    itemBuilder: (BuildContext context, int index) {
      return const ListTile(
        title: Text('Mohamed'),
        subtitle: Text('hello'),
        leading: CircleAvatar(
          backgroundColor: Colors.yellow,
        ),
        trailing: Icon(Icons.add_alert),
        /*
               onTap: (){
                 print('object');
               },
                */
      );
    },
    separatorBuilder: (BuildContext context, int index) {
      return Container(
        height: 1,
        width: double.infinity,
        color: Colors.grey,
      );
    },
  );
}

/// builder list view
Widget builderListView() {
  return ListView.builder(
    itemCount: 12,
    itemBuilder: (BuildContext context, int index) {
      return const ListTile(
        title: Text('Mohamed'),
        subtitle: Text('hello'),
        leading: CircleAvatar(
          backgroundColor: Colors.yellow,
        ),
        trailing: Icon(Icons.add_alert),
        /*
               onTap: (){
                 print('object');
               },
                */
      );
    },
  );
}

List<Widget> children = [
  Container(color: Colors.red),
  Container(color: Colors.teal),
  Container(color: Colors.orange),
  Container(color: Colors.black),
  Container(color: Colors.green),
  Container(color: Colors.blue),
  Container(color: Colors.red),
  Container(color: Colors.blue),
];

/// Grid view
Widget gridView() {
  return GridView(
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      mainAxisSpacing: 4,
      crossAxisSpacing: 4,
    ),
    //scrollDirection: Axis.vertical,
    children: children,
  );
}

/// count Grid view
Widget countGridView() {
  return Directionality(
    textDirection: TextDirection.rtl,
    child: GridView.count(
      crossAxisCount: 2,
      //scrollDirection: Axis.vertical,
      padding: const EdgeInsets.all(8),
      crossAxisSpacing: 4,
      mainAxisSpacing: 4,
      children: children,
    ),
  );
}

/// builder Grid view
Widget builderGridView() {
  return GridView.builder(
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      crossAxisSpacing: 4,
      mainAxisSpacing: 4,
    ),
    itemCount: 10,
    itemBuilder: (context, index) {
      return Container(color: Colors.green);
    },
  );
}

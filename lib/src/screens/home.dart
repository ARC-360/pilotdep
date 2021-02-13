import 'package:flutter/material.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';

class Choice {
  final String title;
  final int id;
  const Choice({this.title, this.id});
}

const List<Choice> choices = <Choice>[
  Choice(title: 'Deals of the Day', id: 1),
  Choice(title: 'Appetizers', id: 2),
  Choice(title: 'Main Course', id: 3),
  Choice(title: 'Chinese', id: 4),
  Choice(title: 'Indian', id: 5),
  Choice(title: 'Continental', id: 6),
  Choice(title: 'South Indian', id: 7),
  Choice(title: 'Punjabi', id: 8),
  Choice(title: 'Italian', id: 9),
  Choice(title: 'Review Order', id: 10),
];

class Home extends StatefulWidget {
  Home({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: choices.length,
        child: Scaffold(
          drawer: NavDrawer(),
          appBar: new AppBar(
              flexibleSpace: new Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    new TabBar(
                      isScrollable: true,
                      tabs: choices.map<Widget>((Choice choice) {
                        return Tab(text: choice.title);
                      }).toList(),
                    )
                  ])),
          backgroundColor: Colors.grey,
          body: TabBarView(
            children: choices.map((Choice choice) {
              return Padding(
                padding: const EdgeInsets.all(20.0),
                child: ChoicePage(
                  choice: choice,
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}

class ChoicePage extends StatefulWidget {
  const ChoicePage({Key key, this.choice}) : super(key: key);
  final Choice choice;

  @override
  _ChoicePageState createState() => _ChoicePageState();
}

class _ChoicePageState extends State<ChoicePage> {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: choices.length,
      itemBuilder: (context, index) {
        return Card( //
          child: ExpansionTile(
              title: Text(choices[index].title, style: TextStyle(
                color: Colors.grey[850],
                fontWeight: FontWeight.w600,
                fontFamily: 'Metropolis',
              ),),
              subtitle: Text('Price', style: TextStyle(
                color: Colors.grey[850],
                fontWeight: FontWeight.w600,
                fontFamily: 'Metropolis',
              ),),
              children: <Widget>[
                Text('Preparation details', style: TextStyle(
                  color: Colors.grey[850],
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Metropolis',
                ),),

              ]
          ),
        );
      },
    );
  }
}


class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Center(
                child: Column(
                  children: [
                    Text(
                      'Menu',
                      style: TextStyle(color: Colors.white, fontSize: 25,
                        //color: Colors.grey[850],
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Metropolis',
                      ),
                    ),
                    RaisedButton(
                      onPressed: null,
                      child: Text(
                        'Enter Promo Code',
                        style: TextStyle(color: Colors.white, fontSize: 20
                          ,
                            //color: Colors.grey[850],
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Metropolis',

                        ),
                      ),
                    )
                  ],
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.deepOrangeAccent,
              ),
            ),
            ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: choices.length,
                itemBuilder: (context, int j) {
                  return ListTile(title: Text(choices[j].title));
                })
          ],
        ));
  }
}
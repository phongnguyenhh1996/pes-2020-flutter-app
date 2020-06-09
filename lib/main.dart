import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PES 2020 Player Stats',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: MyHomePage(title: 'PES 2020 Player Stats'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  final players = Player.getPlayers();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(this.title)),
        body: Container(
          color: Color.fromRGBO(214, 205, 221, 1),
          child: ListView.builder(
            itemCount: players.length,
            itemBuilder: (context, index) {
              return PlayerItem(item: players[index]);
            },
          ),
        ));
  }
}

class PlayerItem extends StatelessWidget {
  PlayerItem({Key key, this.item}) : super(key: key);
  final Player item;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        children: <Widget>[
          Container(
            width: 45,
            height: 25,
            decoration: new BoxDecoration(
              borderRadius: new BorderRadius.all(Radius.circular(4)),
              color: Color.fromRGBO(0, 0, 0, 1),
            ),
            alignment: Alignment.center,
            padding: EdgeInsets.all(3),
            child: Text(
              this.item.position,
              style: TextStyle(
                  color: Player.getColors(item.position),
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Text(
                this.item.name,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                    color: Colors.black.withOpacity(0.8)),
              ),
            ),
          ),
          Text(
            this.item.point.toString(),
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 18,
            ),
          )
        ],
      ),
    );
  }
}

class Player {
  final String name;
  final String position;
  final int point;
  Player(this.name, this.position, this.point);

  static MaterialColor getColors(position) {
    switch (position) {
      case 'GK':
        return Colors.yellow;
      case 'CB':
      case 'LB':
      case 'RB':
        return Colors.blue;
      case 'CMF':
      case 'RMF':
        return Colors.green;
      case 'RWF':
      case 'CF':
        return Colors.red;
      default:
        return Colors.yellow;
    }
  }

  static List<Player> getPlayers() {
    List<Player> players = <Player>[];
    players
      ..add(Player('M. PERIN', 'GK', 84))
      ..add(Player('C. PINSOGLIO', 'GK', 72))
      ..add(Player('D. RUGANI', 'CB', 83))
      ..add(Player('M. DE SCIGLIO', 'RB', 84))
      ..add(Player('L. SPINAZZOLA', 'LB', 81))
      ..add(Player('A. RAMSEY', 'CMF', 85))
      ..add(Player('S. KHEDIRA', 'CMF', 82))
      ..add(Player('E. CAN', 'CMF', 83))
      ..add(Player('J. CUADRADO', 'RMF', 83))
      ..add(Player('DOUGLASCOSTA', 'RWF', 85))
      ..add(Player('BERNARDES', 'RWF', 84))
      ..add(Player('M. KEAN', 'CF', 77))
      ..add(Player('M. PERIN', 'GK', 84))
      ..add(Player('C. PINSOGLIO', 'GK', 72))
      ..add(Player('D. RUGANI', 'CB', 83))
      ..add(Player('M. DE SCIGLIO', 'RB', 84))
      ..add(Player('L. SPINAZZOLA', 'LB', 81))
      ..add(Player('A. RAMSEY', 'CMF', 85))
      ..add(Player('S. KHEDIRA', 'CMF', 82))
      ..add(Player('E. CAN', 'CMF', 83))
      ..add(Player('J. CUADRADO', 'RMF', 83))
      ..add(Player('DOUGLASCOSTA', 'RWF', 85))
      ..add(Player('BERNARDES', 'RWF', 84))
      ..add(Player('M. KEAN', 'CF', 77));
    return players;
  }
}

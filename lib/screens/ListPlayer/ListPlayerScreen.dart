import 'package:flutter/material.dart';
import 'package:hello_world/models/player.dart';
import 'components/playerItem.dart';

class ListPlayerScreen extends StatelessWidget {
  ListPlayerScreen({Key key, this.title}) : super(key: key);
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

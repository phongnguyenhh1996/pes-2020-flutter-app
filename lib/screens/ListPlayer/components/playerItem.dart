import 'package:flutter/material.dart';
import 'package:hello_world/models/player.dart';

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

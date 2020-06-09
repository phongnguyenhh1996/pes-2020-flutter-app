import 'package:flutter/material.dart';

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
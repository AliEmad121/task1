import 'package:flutter/material.dart';
import 'dart:math';

class View {
  int id;
  Color? color;

  View(this.id, {this.color});

  @override
  String toString() {
    return '$id';
  }
}

void main() {

  task2();

  int id = Random().nextInt(10000);

  var helloText = Text(id, content: 'Hello');

  print('hello: $helloText');
}

void task2() {
  List<int> numbers = List.generate(75, (index) => Random().nextInt(10000));

  List<int> evenNumbers = [];

  evenNumbers = numbers.where((e) => (e%2 == 0)).toList();

  print(evenNumbers);
}


class Text extends View{
  final String content;
  Text(int id, {required this.content, Color? color}) : super(id, color: color);

}

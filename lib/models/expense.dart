import 'package:uuid/uuid.dart'; // to generate unique id's
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

final formatter = DateFormat
    .yMd(); // DateFormat is class provided bt intl and yMd is constructor function

const uuid = Uuid(); // uuid gets an object

enum Category {
  food,
  travel,
  leisure,
  work
} // enum is combination of predefined allowed values

const categoryIcons = {
  Category.food: Icons.lunch_dining,
  Category.travel: Icons.flight_takeoff,
  Category.leisure: Icons.movie,
  Category.work: Icons.work,
};

class Expense {
  // blueprint for object
  Expense({
    required this.title,
    required this.amount,
    required this.date,
    required this.category,
  }) : id = uuid
            .v4(); // v4() generates a unique string id  , : (initilizers list)

  final String id; // unique id
  final String title;
  final double amount;
  final DateTime
      date; // DateTime is datatype , allows to store date information in a single value
  final Category category;

  String get formattedDate {
    return formatter.format(date);
  }
}

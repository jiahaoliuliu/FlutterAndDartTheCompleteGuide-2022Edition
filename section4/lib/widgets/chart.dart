import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/transaction.dart';

class Chart extends StatelessWidget {
  final List<Transaction> recentTrasactions;

  Chart(this.recentTrasactions);

  List<Map<String, Object>> get groupedTransactionsValues {
    return List.generate(
      7,
      (index) {
        final weekDay = DateTime.now().subtract(
          Duration(days: index),
        );

        var totalSum = 0.0;
        for (var i = 0; i < recentTrasactions.length; i++) {
          if (recentTrasactions[i].date.day == weekDay.day &&
              recentTrasactions[i].date.month == weekDay.month &&
              recentTrasactions[i].date.year == weekDay.year) {
            totalSum += recentTrasactions[i].amount;
          }
        }

        print(DateFormat.E().format(weekDay));
        print(totalSum);

        return {
          'day': DateFormat.E().format(weekDay),
          'amount': totalSum,
        };
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    print(groupedTransactionsValues);

    return Card(
        elevation: 6,
        margin: EdgeInsets.all(20),
        child: Row(
          children: [],
        ));
  }
}

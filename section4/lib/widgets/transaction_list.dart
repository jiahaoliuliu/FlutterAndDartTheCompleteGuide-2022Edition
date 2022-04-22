import 'package:flutter/material.dart';
import '../models/transaction.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> _transactionsList;

  TransactionList(this._transactionsList);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      child: _transactionsList.isEmpty
          ? Column(
              children: [
                Text(
                  'No transactions added yet!',
                  style: Theme.of(context).textTheme.headline6,
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 200,
                  child: Image.asset(
                    'assets/images/waiting.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            )
          : ListView.builder(
              itemBuilder: (context, position) {
                return Card(
                    child: Row(
                  children: [
                    Container(
                      margin:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Theme.of(context).primaryColor, width: 2),
                      ),
                      padding: EdgeInsets.all(10),
                      child: Text(
                        '\$${_transactionsList[position].amount.toStringAsFixed(2)}',
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Column(children: [
                      Text(_transactionsList[position].title,
                          style: Theme.of(context).textTheme.headline6),
                      Text(
                        DateFormat.yMMMd()
                            .format(_transactionsList[position].date),
                      ),
                    ])
                  ],
                ));
              },
              itemCount: _transactionsList.length,
            ),
    );
  }
}

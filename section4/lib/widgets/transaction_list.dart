import 'package:flutter/material.dart';
import 'package:section4/widgets/transaction_item.dart';
import '../models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> _transactionsList;
  final Function _deleteTransaction;

  const TransactionList(this._transactionsList, this._deleteTransaction);

  @override
  Widget build(BuildContext context) {
    print('build() TansactionList');
    return _transactionsList.isEmpty
        ? LayoutBuilder(
            builder: (context, constraints) {
              return Column(
                children: [
                  Text(
                    'No transactions added yet!',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: constraints.maxHeight * 0.6,
                    child: Image.asset(
                      'assets/images/waiting.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              );
            },
          )
        : ListView.builder(
            itemBuilder: (context, position) {
              return TransactionItem(
                  transaction: _transactionsList[position],
                  deleteTransaction: _deleteTransaction);
            },
            itemCount: _transactionsList.length,
          );
  }
}

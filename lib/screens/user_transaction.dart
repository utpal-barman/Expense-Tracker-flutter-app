import '../model/transaction.dart';

import './new_transaction.dart';
import './transaction_list.dart';
import 'package:flutter/material.dart';

class UserTransaction extends StatefulWidget {
  @override
  _UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  final List<Transaction> transaction = [
    Transaction(
      title: 'Cash',
      date: DateTime.now(),
      amount: 200,
      id: 'cash9',
    ),
    Transaction(
      title: 'Grocery',
      date: DateTime.now(),
      amount: 140,
      id: 'cash10',
    ),
    Transaction(
      title: 'Grocery',
      date: DateTime.now(),
      amount: 160,
      id: 'cash11',
    ),
    Transaction(
      title: 'Transport',
      date: DateTime.now(),
      amount: 100,
      id: 'cash12',
    ),
    Transaction(
      title: 'Medical',
      date: DateTime.now(),
      amount: 140.00,
      id: 'cash8',
    ),
  ];

  void _addNewTransaction(String trxTitle, double trxAmount){
    final newTrx = Transaction(
        title: trxTitle,
        amount: trxAmount,
        date: DateTime.now(),
        id: DateTime.now().toString(),
    );

    setState(() {
      transaction.add(newTrx);
    });
  }


  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransaction(_addNewTransaction),
        TransactionList(transaction),
      ],
    );
  }
}

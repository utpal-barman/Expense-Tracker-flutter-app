import '../model/transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transaction;

  TransactionList(this.transaction);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
              child: Row(
            children: <Widget>[
              //price box on left of the card
              Container(
                padding: EdgeInsets.all(15),
                margin: EdgeInsets.all(20),
                child: Text(
                  "৳${transaction[index].amount}",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
                decoration: BoxDecoration(
                  border: Border.all(color: Theme.of(context).primaryColorLight, width: 1),
                ),
              ),
              //text title and date
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    transaction[index].title,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text(DateFormat("MMM  d, yyyy, hh:mm a")
                      .format(transaction[index].date)),
                ],
              )
            ],
          ));
        },
        itemCount: transaction.length,
      ),
    );
  }
}

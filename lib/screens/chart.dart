import 'package:expense_tracker/model/transaction.dart';
import 'package:flutter/material.dart';


class Chart extends StatelessWidget {
  final List<Transaction> recentTransaction;

  Chart(this.recentTransaction);

  List <Map<String, Object>> get groupedTransactionValues {
    return List.generate(7, (index){
      return {'Day' : 'M', 'Amount' : '9.99'};
    });
  }

  @override
  Widget build(BuildContext context) {

    return Container(
      width: double.infinity,
      child: Card(
        elevation: 6,
        margin: EdgeInsets.all(15),

        child: Row(
          children: <Widget>[

          ],
        )

      ),
    );
  }
}

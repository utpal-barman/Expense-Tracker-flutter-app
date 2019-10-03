import './screens/chart.dart';
import './screens/transaction_list.dart';

import './screens/new_transaction.dart';
import 'package:flutter/material.dart';
import 'model/transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Expense Tracker',
      theme: ThemeData(
        primarySwatch: Colors.red,
        accentColor: Colors.deepOrangeAccent,
        fontFamily: 'Raleway',
        /*appBarTheme: AppBarTheme(
          textTheme: ThemeData.light().textTheme.copyWith(title: TextStyle(
            fontFamily: 'RobotoCondensed',
          )),
        )*/
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Transaction> transaction = [
//    Transaction(
//      title: 'Cash',
//      date: DateTime.now(),
//      amount: 200,
//      id: 'cash9',
//    ),
//    Transaction(
//      title: 'Grocery',
//      date: DateTime.now(),
//      amount: 140,
//      id: 'cash10',
//    ),
//    Transaction(
//      title: 'Grocery',
//      date: DateTime.now(),
//      amount: 160,
//      id: 'cash11',
//    ),
//    Transaction(
//      title: 'Transport',
//      date: DateTime.now(),
//      amount: 100,
//      id: 'cash12',
//    ),
//    Transaction(
//      title: 'Medical',
//      date: DateTime.now(),
//      amount: 140.00,
//      id: 'cash8',
//    ),
  ];

  void _addNewTransaction(String trxTitle, double trxAmount) {
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

  void showModal(BuildContext ctx) {
    showModalBottomSheet(
      context: ctx,
      builder: (_) {
        return NewTransaction(_addNewTransaction);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expense Tracker"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () => showModal(context),
          )
        ],
      ),
      body: Column(
        children:<Widget>[

         SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              //NewTransaction(_addNewTransaction),
              TransactionList(transaction),
            ],
          ),
        ),
    ]
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () => showModal(context),
        child: Icon(Icons.add),
      ),
    );
  }
}

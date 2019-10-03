
import 'package:flutter/material.dart';

class NewTransaction extends StatefulWidget {
  final Function addNewTransaction;

  NewTransaction(this.addNewTransaction);

  @override
  _NewTransactionState createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {
  final titleTextController = TextEditingController();

  final amountTextController = TextEditingController();

  void onPressed(){
    if(titleTextController.text.isEmpty || amountTextController.text.isEmpty) return;

    widget.addNewTransaction(
        titleTextController.text,
        double.parse(amountTextController.text)
    );

    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.all(10),
        child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: "Title"),
              controller: titleTextController,
              onSubmitted: (_) => (onPressed),
            ),
            TextField(
              decoration: InputDecoration(labelText: "Amount"),
              controller: amountTextController,
              keyboardType: TextInputType.number,
              onSubmitted: (_) => (onPressed),
            ),
            RaisedButton(
              onPressed: (onPressed),
              child: Text("Add"),
            )
          ],
        )
      )

    );
  }
}


import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addNewTransaction;
  final titleTextController = TextEditingController();
  final amountTextController = TextEditingController();
  NewTransaction(this.addNewTransaction);

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
            ),
            TextField(
              decoration: InputDecoration(labelText: "Amount"),
              controller: amountTextController,
            ),
            RaisedButton(
              onPressed: (){
                addNewTransaction(titleTextController.text,
                    double.parse(amountTextController.text)
                );
              },
              child: Text("Add"),
            )
          ],
        )
      )

    );
  }

}

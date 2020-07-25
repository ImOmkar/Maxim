import 'package:flutter/material.dart';
import 'maxim.dart';

class MaximCard extends StatelessWidget {
  final Maxim maxim;
  final Function delete;
  MaximCard({this.maxim, this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              maxim.text,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 6.0),
            Text(
              maxim.author,
              style: TextStyle(fontSize: 14.0, color: Colors.grey[800]),
            ),
            SizedBox(height: 7.0),
            FlatButton.icon(
              onPressed: delete,
              label: Text('delete Maxim'),
              icon: Icon(Icons.delete),
            )
          ],
        ),
      ),
    );
  }
}

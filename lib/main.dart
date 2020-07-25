import 'package:flutter/material.dart';
import 'maxim.dart';
import 'maxim_card.dart';

void main() => runApp(MaterialApp(
      home: MaximList(),
    ));

class MaximList extends StatefulWidget {
  @override
  _MaximListState createState() => _MaximListState();
}

class _MaximListState extends State<MaximList> {
  List<Maxim> maxims = [
    Maxim(
        author: '- Chh. Shivaji Maharaj',
        text: 'Freedom is a boon, which everyone has the right to receive.'),
    Maxim(
        author: '- Chh. Shivaji Maharaj',
        text:
            'When you are enthusiastic, the mountain also looks like a clay pile.'),
    Maxim(
        author: '- Chh. Shivaji Maharaj',
        text:
            'No need to be learned from own fault. We can learn a lot from others mistakes.'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: Text('Great Maxims'),
          centerTitle: true,
          backgroundColor: Colors.redAccent,
        ),
        body: Column(
          children: maxims
              .map((maxim) => MaximCard(
                  maxim: maxim,
                  delete: () {
                    setState(() {
                      maxims.remove(maxim);
                    });
                  }))
              .toList(),
        ));
  }
}

import 'package:flutter/material.dart';
import 'quotes.dart';

class QuoteCard extends StatelessWidget {

  final Quotes quote;
  final Function() delete;
  QuoteCard({required this.quote,required this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 20.0,
              ),
            ),
            const SizedBox(height: 5.0,),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.grey[500],
              ),
            ),
            SizedBox(height: 10.0,),
            IconButton(
                onPressed: delete,
                icon: Icon(Icons.delete_rounded),
            )
          ],
        ),
      ),
    );
  }
}
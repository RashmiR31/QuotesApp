import 'package:flutter/material.dart';
import 'quotes.dart';
import 'quote_card.dart';

void main() => runApp(const MaterialApp(
  home: QuoteList(),
));

class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quotes> quotes = [
    Quotes(text: "Without continual growth and progress, such words as improvement, achievement, and success have no meaning.", author: "Benjamin Franklin"),
    Quotes(text: "Try not to become a man of success, but rather try to become a man of value.", author: "Albert Einstein"),
    Quotes(text: "Success is a lousy teacher. It seduces smart people into thinking they can't lose.", author: "Bill Gates"),
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text("Awesome Quotes"),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quote) => QuoteCard(
            quote: quote,
          delete: (){
              setState(() {
                quotes.remove(quote);
              });
          }
        )).toList(),
      ),
    );
  }
}





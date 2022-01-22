import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() => runApp(MaterialApp(
   home: QuoteList(),
));

class QuoteList  extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  
  List<Quote> quotes = [
Quote(author: 'Oscar Wilde', text: 'If you want to live a happy life, tie it to a goal, not to people or things.'),
Quote(author: 'Oscar Wilde', text: 'Never let the fear of striking out keep you from playing the game.'),
Quote(author: 'Oscar Wilde', text: 'Life is what happens when you’re busy making other plans.'),
  ];

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
     title: Text('Awesome Quotes'),
     centerTitle: true,
     backgroundColor: Colors.redAccent,
    ),
      body: Column(
     children: quotes.map((quote) => QuoteCard(
       quote: quote,
       delete:  () {
         setState(() {
          quotes.remove(quote); 
         });
         }
       )).toList(),
     ),
    );
  }
}


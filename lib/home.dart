
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  // TODO: Make a collection of cards (102)

  List<Card> _buildGridCards(int count) {
    List<Card> cards = List.generate(
      count,
          (int index) {
        return Card(
          clipBehavior: Clip.antiAlias,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              AspectRatio(
                aspectRatio: 18.0 / 11.0,
                child: Image.asset('assets/diamond.png'),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Title'),
                    SizedBox(height: 8.0),
                    Text('Secondary Text'),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
    return cards;
  }

  // TODO: Add a variable for Category (104)
  @override
  Widget build(BuildContext context) {
    // TODO: Return an AsymmetricView (104)
    // TODO: Pass Category variable to AsymmetricView (104)
    return Scaffold(
      // TODO: Add app bar (102)
      // TODO: Add a grid view (102)

      body: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(16.0),
        childAspectRatio: 8.0 / 9.0,

        // TODO: Build a grid of cards (102)
        //here to replace
          children: _buildGridCards(10) // Replace
      ),
      // TODO: Set resizeToAvoidBottomInset (101)
    );
  }
}


// <Widget>[
// Card(
// clipBehavior: Clip.antiAlias,
// child: Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: <Widget>[
// AspectRatio(
// aspectRatio: 18.0 / 11.0,
// child: Image.asset('images/diamond.png'),
//
// ),
// const Padding(
// padding: EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
// child: Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: <Widget>[
// Text('Title'),
// SizedBox(height: 8.0),
// Text('Secondary Text'),
// ],
// ),


// ),
// ],
// ),
// )
// ],
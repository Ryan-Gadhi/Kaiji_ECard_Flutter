import 'package:Kaiji_ECard/PlayingCard.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'dart:ui';

void main() {
  runApp(App());
}

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Title',
      home: ECard(),
    );
  }
}

class ECard extends StatefulWidget {
  @override
  _ECardState createState() => _ECardState();
}

class _ECardState extends State<ECard> {
  var dockBorderColors = [0, 0, 0, 0, 0];

  @override
  Widget build(BuildContext context) {
    var numberOfCards = 5;
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    var bigCardWidth = screenWidth - 100;
    var intialOffset = 50.0;
    var bigCardXOffset = (screenWidth - (bigCardWidth)) / 2 - intialOffset;

    var selectedCardType = 1;

    return Container(
      color: Colors.grey[900],
      child: SizedBox(
        width: 150,
        child: Transform.translate(
          offset: Offset(intialOffset, screenHeight - 150),
          child: Stack(
            // fit: StackFit.expand,
            children: <Widget>[

              PlayingCard(
                xOffset: 0.0,
                yOffset: 0.0,
                cardWidth: null,
                cardHeight: 150.0,
                cardIndex: 0,
                cardType: 1,
                docBorderColors: this.dockBorderColors,
                didSelectCard: (List<int> dockBorderColors) =>
                    setState(() => this.dockBorderColors = dockBorderColors),
              ),

              PlayingCard(
                xOffset: 50.0,
                yOffset: 0.0,
                cardWidth: null,
                cardHeight: 150.0,
                cardIndex: 1,
                cardType: 1,
                docBorderColors: this.dockBorderColors,
                didSelectCard: (List<int> dockBorderColors) =>
                    setState(() => this.dockBorderColors = dockBorderColors),
              ),
              PlayingCard(
                xOffset: 100.0,
                yOffset: 0.0,
                cardWidth: null,
                cardHeight: 150.0,
                cardIndex: 2,
                cardType: 1,
                docBorderColors: this.dockBorderColors,
                didSelectCard: (List<int> dockBorderColors) =>
                    setState(() => this.dockBorderColors = dockBorderColors)
              ),
              PlayingCard(
                xOffset: 150.0,
                yOffset: 0.0,
                cardWidth: null,
                cardHeight: 150.0,
                cardIndex: 3,
                cardType: 0,
                docBorderColors: this.dockBorderColors,
                didSelectCard: (List<int> dockBorderColors) =>
                    setState(() => this.dockBorderColors = dockBorderColors)
              ),
              PlayingCard(
                xOffset: bigCardXOffset,
                yOffset: -screenHeight + 205,
                cardWidth: bigCardWidth,
                cardHeight: null,
                cardIndex: 4,
                cardType: selectedCardType,
                docBorderColors: this.dockBorderColors,
                didSelectCard: (List<int> dockBorderColors) =>
                    setState(() => this.dockBorderColors = dockBorderColors)
              ),
            ],
          ),
        ),
      ),
    );
  }
}


import 'package:flutter/material.dart';

class PlayingCard extends StatelessWidget {
  final double xOffset;
  final double yOffset;
  final double cardWidth;
  final double cardHeight;
  final int cardIndex;
  final int cardType;
  final List<int> docBorderColors;
  final Function(List<int>) didSelectCard;
  final List<Color> borderColors = [Colors.black, Colors.white];

  PlayingCard(
      {this.xOffset,
      this.yOffset,
      this.cardWidth,
      this.cardHeight,
      this.didSelectCard,
      this.cardIndex,
      this.cardType,
      this.docBorderColors});

  @override
  Widget build(BuildContext context) {

    String cardImagePath = '';
    switch (this.cardType){
      case 0: cardImagePath = 'assets/images/kaiji_ecards_king.png' ; break;
      case 1: cardImagePath = 'assets/images/kaiji_ecards_civian.png' ; break;
      case 2: cardImagePath = 'assets/images/kaiji_ecards_slave.png' ; break;
    }
    return Transform.translate(
        offset: Offset(xOffset, yOffset),
        child: FlatButton(
          padding: EdgeInsets.all(0),
          onPressed: () {
            var newDocBorderColors = [0, 0, 0, 0, 0];
            newDocBorderColors[this.cardIndex] = 1;
             this.didSelectCard(newDocBorderColors);
             print('pressed');
            
          },
          child: Container(
            height: cardHeight,
            width: cardWidth,
            color: this.borderColors[this.docBorderColors[this.cardIndex]],
            padding: EdgeInsets.all(5),
            // width: 150,
            child: Image.asset(cardImagePath),
          ),
        ));
  }
}

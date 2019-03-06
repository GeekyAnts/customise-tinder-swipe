import 'package:animation_exp/SwipeAnimation/gesture_card.dart';
import 'package:flutter/material.dart';

class CurrentDeckCard extends StatelessWidget {
  final Widget singleData;
  final double cardWidth;
  final BuildContext context;
  final Function onGestureSwipeLeft;
  final Function onGestureSwipeRight;
  final Function onCardTap;
  final Offset initialPosition;
  final bool isActive;
  final double velocityToSwipe;
  final Duration animationTime;
  final Widget leftSwipeButton;
  final Widget rightSwipeButton;
  final Widget leftSwipeBanner;
  final Widget rightSwipeBanner;
  final bool isButtonFixed;
  final Offset fixedButtonPosition;
  CurrentDeckCard({
    this.isActive = true,
    this.singleData,
    this.cardWidth,
    this.context,
    this.onGestureSwipeLeft,
    this.onGestureSwipeRight,
    this.onCardTap,
    this.initialPosition,
    this.velocityToSwipe,
    this.animationTime,
    this.leftSwipeButton,
    this.rightSwipeButton,
    this.leftSwipeBanner,
    this.rightSwipeBanner,
    this.fixedButtonPosition,
    this.isButtonFixed,
  });

  @override
  Widget build(BuildContext context) {
    return new GestureCard(
      isActive: isActive,
      initialPosition: initialPosition,
      animationTime: animationTime,
      velocityToSwipe: velocityToSwipe,
      leftSwipeButton: leftSwipeButton,
      rightSwipeButton: rightSwipeButton,
      leftSwipeBanner: leftSwipeBanner,
      rightSwipeBanner: rightSwipeBanner,
      fixedButtonPosition: fixedButtonPosition,
      isButtonFixed: isButtonFixed,
      onTap: onCardTap,
      swipeLeft: () {
        onGestureSwipeLeft();
      },
      swipeRight: () {
        onGestureSwipeRight();
      },
      child: Center(
        child: new Card(
          color: Colors.transparent,
          child: Container(child: singleData),
          elevation: 4.0,
        ),
      ),
    );
  }
}

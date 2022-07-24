import 'package:flutter/cupertino.dart';

class ReuseableCard extends StatelessWidget {
  final Color colour;
  final Widget cardChild;
  final void Function()? onPress;
  ReuseableCard({required this.colour, required this.cardChild, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
